<#
.SYNOPSIS
    Launch a local Quartz server for testing and development.

.DESCRIPTION
    This script mirrors the GitHub Actions workflow for local development:
    1. Sets up Quartz if not already installed
    2. Cleans and syncs vault content to quartz/content
    3. Renames _README.md files to index.md
    4. Strips Obsidian plugin blocks (dataview, table-of-contents)
    5. Copies favicons to static folder
    6. Installs dependencies if needed
    7. Builds and serves the Quartz site locally

.PARAMETER Port
    Port to serve on. Default: 8080

.PARAMETER NoBrowser
    Don't automatically open browser.

.PARAMETER SyncOnly
    Only sync content, don't start the server.

.PARAMETER SkipSync
    Skip content sync, use existing content (faster restarts).

.PARAMETER Clean
    Remove and re-clone Quartz (fresh install).

.EXAMPLE
    .\quartz.ps1
    Full sync, build, and serve with browser.

.EXAMPLE
    .\quartz.ps1 -Port 3000 -NoBrowser
    Serves on port 3000 without opening browser.

.EXAMPLE
    .\quartz.ps1 -SyncOnly
    Only syncs content without starting server.

.EXAMPLE
    .\quartz.ps1 -SkipSync
    Starts server using existing content (fast restart).

.EXAMPLE
    .\quartz.ps1 -Clean
    Fresh Quartz install (removes existing quartz folder).
#>
[CmdletBinding()]
param(
    [Parameter()]
    [int]$Port = 8080,

    [Parameter()]
    [switch]$NoBrowser,

    [Parameter()]
    [switch]$SyncOnly,

    [Parameter()]
    [switch]$SkipSync,

    [Parameter()]
    [switch]$Clean
)

$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

# paths
$VaultPath = Split-Path $PSScriptRoot -Parent
$QuartzPath = Join-Path $VaultPath "quartz"
$ContentPath = Join-Path $QuartzPath "content"
$StaticPath = Join-Path $QuartzPath "static"
$FaviconsPath = Join-Path $VaultPath "05-SYSTEM\Assets\Favicons"
$QuartzConfigSource = Join-Path $VaultPath "quartz.config.ts"
$QuartzLayoutSource = Join-Path $VaultPath "quartz.layout.ts"

Write-Information "Quartz Local Development Server"
Write-Information "================================"
Write-Information "Vault:   $VaultPath"
Write-Information "Quartz:  $QuartzPath"
Write-Information "Content: $ContentPath"
Write-Information ""

# check for node
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    throw "Node.js not found. Please install Node.js from https://nodejs.org/"
}

# check for git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git not found. Please install Git from https://git-scm.com/"
}

# clean install if requested
if ($Clean -and (Test-Path $QuartzPath)) {
    Write-Information "Removing existing Quartz installation..."
    Remove-Item -Path $QuartzPath -Recurse -Force
}

# step 0: setup quartz if not present
$QuartzPackageJson = Join-Path $QuartzPath "package.json"
if (-not (Test-Path $QuartzPackageJson)) {
    Write-Information "[0/8] Setting up Quartz..."
    
    # backup existing content if any
    $tempContentBackup = $null
if (Test-Path $ContentPath) {
        $tempContentBackup = Join-Path $VaultPath ".quartz-content-backup"
        Write-Information "  Backing up existing content..."
        if (Test-Path $tempContentBackup) { Remove-Item -Path $tempContentBackup -Recurse -Force }
        Move-Item -Path $ContentPath -Destination $tempContentBackup
    }
    
    # backup existing static if any
    $tempStaticBackup = $null
    if (Test-Path $StaticPath) {
        $tempStaticBackup = Join-Path $VaultPath ".quartz-static-backup"
        Write-Information "  Backing up existing static..."
        if (Test-Path $tempStaticBackup) { Remove-Item -Path $tempStaticBackup -Recurse -Force }
        Move-Item -Path $StaticPath -Destination $tempStaticBackup
    }
    
    # clone quartz
    Write-Information "  Cloning Quartz from GitHub..."
    Push-Location $VaultPath
    try {
        if (Test-Path $QuartzPath) {
            Remove-Item -Path $QuartzPath -Recurse -Force
        }
        git clone --depth 1 https://github.com/jackyzha0/quartz.git quartz
        if ($LASTEXITCODE -ne 0) {
            throw "Failed to clone Quartz repository"
        }
        
        # remove quartz's .git folder (we don't want it as a submodule)
        $quartzGit = Join-Path $QuartzPath ".git"
        if (Test-Path $quartzGit) {
            Remove-Item -Path $quartzGit -Recurse -Force
        }
    }
    finally {
        Pop-Location
    }
    
    # restore content backup if any
    if ($tempContentBackup -and (Test-Path $tempContentBackup)) {
        Write-Information "  Restoring content backup..."
        if (Test-Path $ContentPath) { Remove-Item -Path $ContentPath -Recurse -Force }
        Move-Item -Path $tempContentBackup -Destination $ContentPath
    }
    
    # restore static backup if any
    if ($tempStaticBackup -and (Test-Path $tempStaticBackup)) {
        Write-Information "  Restoring static backup..."
        # merge with quartz static folder
        Get-ChildItem -Path $tempStaticBackup | Copy-Item -Destination $StaticPath -Force -Recurse
        Remove-Item -Path $tempStaticBackup -Recurse -Force
    }
    
    Write-Information "  Quartz setup complete!"
    Write-Information ""
}

# copy quartz config files from vault root if they exist
if (Test-Path $QuartzConfigSource) {
    Copy-Item -Path $QuartzConfigSource -Destination $QuartzPath -Force
    Write-Verbose "Copied quartz.config.ts"
}
if (Test-Path $QuartzLayoutSource) {
    Copy-Item -Path $QuartzLayoutSource -Destination $QuartzPath -Force
    Write-Verbose "Copied quartz.layout.ts"
}

if (-not $SkipSync) {
    # step 1: clean quartz content directory
    Write-Information "[1/7] Cleaning quartz/content directory..."
    if (Test-Path $ContentPath) {
        Get-ChildItem -Path $ContentPath -Exclude ".git" | Remove-Item -Recurse -Force
    } else {
New-Item -ItemType Directory -Path $ContentPath -Force | Out-Null
    }

    # step 2: copy vault content (excluding system files) - matches GHA workflow
    Write-Information "[2/7] Syncing vault content..."
    $excludeDirs = @(
        '.git',
        '.github', 
        '.obsidian', 
        '.cursor', 
        '.vscode',
        '.scripts',
        'quartz',
        '99-ARCHIVES',
        'node_modules'
    )
    $excludeTemplates = '05-SYSTEM[\\/]Templates'
$excludeFiles = @('*.vault', '.gitignore', '.gitattributes', '.gitmodules', '.editorconfig', '.export-ignore')

    # copy all content recursively
    Get-ChildItem -Path $VaultPath -Recurse -File | Where-Object {
        $relativePath = $_.FullName.Substring($VaultPath.Length)
        $dirMatch = $false
        foreach ($dir in $excludeDirs) {
            if ($relativePath -match "^[\\/]$([regex]::Escape($dir))([\\/]|$)") {
                $dirMatch = $true
                break
            }
        }
        if ($relativePath -match $excludeTemplates) { $dirMatch = $true }
        $fileMatch = $false
        foreach ($pattern in $excludeFiles) {
            if ($_.Name -like $pattern) {
                $fileMatch = $true
                break
            }
        }
        -not $dirMatch -and -not $fileMatch
} | ForEach-Object {
        $destPath = $_.FullName.Replace($VaultPath, $ContentPath)
        $destDir = Split-Path -Parent $destPath
        if (-not (Test-Path $destDir)) {
            New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        }
        Copy-Item $_.FullName -Destination $destPath -Force
    }

    # step 3: create homepage from README.md
    Write-Information "[3/7] Creating homepage..."
    $readmePath = Join-Path $ContentPath "README.md"
    $indexPath = Join-Path $ContentPath "index.md"
    if (Test-Path $readmePath) {
        Copy-Item -Path $readmePath -Destination $indexPath -Force
        Write-Verbose "Created index.md from README.md"
    }

    # step 4: rename _README.md files to index.md in all subdirectories
    Write-Information "[4/7] Renaming _README.md files to index.md..."
    Get-ChildItem -Path $ContentPath -Recurse -Filter "_README.md" | ForEach-Object {
        $newPath = Join-Path $_.DirectoryName "index.md"
        Move-Item -Path $_.FullName -Destination $newPath -Force
        Write-Verbose "Renamed: $($_.FullName) -> $newPath"
    }

    # step 5: fix _README links in content
    Write-Information "[5/7] Fixing _README links..."
    Get-ChildItem -Path $ContentPath -Recurse -Filter "*.md" | ForEach-Object {
        $content = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
        if ($content -and $content -match '_README') {
            $newContent = $content -replace '_README', 'index'
            Set-Content -Path $_.FullName -Value $newContent -NoNewline
            Write-Verbose "Fixed links in: $($_.Name)"
        }
    }

    # step 6: strip Obsidian plugin blocks (dataview, table-of-contents, inline dataview)
    Write-Information "[6/7] Stripping Obsidian plugin blocks..."
    Get-ChildItem -Path $ContentPath -Recurse -Filter "*.md" | ForEach-Object {
        $content = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
        if ($content) {
            $modified = $false
            
            # strip dataview/dataviewjs code blocks
            if ($content -match '```+dataview') {
                $content = $content -replace '(?s)\n*```+dataview(js)?.*?```+\n*', "`n"
                $modified = $true
            }
            
            # strip table-of-contents code blocks
            if ($content -match '```+table-of-contents') {
                $content = $content -replace '(?s)\n*```+table-of-contents.*?```+\n*', "`n"
                $modified = $true
            }
            
            # strip inline dataview expressions: *`$= dv.xxx`* or **`$= dv.xxx`** or `$= dv.xxx`
            if ($content -match '\$= dv\.') {
                $content = $content -replace '\*?\*?`\$= dv\.[^`]+`\*?\*?', ''
                $modified = $true
            }
            
            if ($modified) {
                Set-Content -Path $_.FullName -Value $content -NoNewline
                Write-Verbose "Stripped plugin blocks from: $($_.Name)"
            }
        }
    }

    # step 7: copy favicons to static folder
    Write-Information "[7/7] Setting up favicons..."
    # ensure static folder exists as a directory (quartz clone might have a file named 'static')
    if (Test-Path $StaticPath) {
        $item = Get-Item $StaticPath
        if (-not $item.PSIsContainer) {
            # it's a file, remove it and create directory
            Remove-Item -Path $StaticPath -Force
            New-Item -ItemType Directory -Path $StaticPath -Force | Out-Null
        }
    } else {
        New-Item -ItemType Directory -Path $StaticPath -Force | Out-Null
    }
    if (Test-Path $FaviconsPath) {
        $faviconFiles = @(
            'favicon.ico',
            'favicon-16x16.png',
            'favicon-32x32.png',
            'apple-touch-icon.png'
        )
        foreach ($file in $faviconFiles) {
            $sourcePath = Join-Path $FaviconsPath $file
    if (Test-Path $sourcePath) {
                Copy-Item -Path $sourcePath -Destination $StaticPath -Force
                Write-Verbose "Copied favicon: $file"
            }
        }
        # copy android-chrome as icon.png
        $androidIcon = Join-Path $FaviconsPath "android-chrome-96x96.png"
        if (Test-Path $androidIcon) {
            $iconDest = Join-Path $StaticPath "icon.png"
            Copy-Item -Path $androidIcon -Destination $iconDest -Force
        }
    } else {
        Write-Verbose "Favicons path not found: $FaviconsPath"
    }

    Write-Information ""
    Write-Information "Content sync complete!"
    
    if ($SyncOnly) {
        Write-Information "Sync-only mode - exiting without starting server."
        exit 0
    }
} else {
    Write-Information "Skipping content sync (using existing content)"
}

# install dependencies if needed
Write-Information ""
Write-Information "Checking dependencies..."
Push-Location $QuartzPath
try {
    $nodeModulesPath = Join-Path $QuartzPath "node_modules"
    $packageLockPath = Join-Path $QuartzPath "package-lock.json"
    
    if (-not (Test-Path $nodeModulesPath)) {
        Write-Information "Installing npm dependencies..."
        if (Test-Path $packageLockPath) {
            npm ci
        } else {
            npm install
        }
        if ($LASTEXITCODE -ne 0) {
            throw "npm install failed with exit code $LASTEXITCODE"
        }
    }
    
    Write-Information ""
    Write-Information "Starting Quartz server on http://localhost:$Port"
    Write-Information "Press Ctrl+C to stop"
    Write-Information ""
    
    if (-not $NoBrowser) {
        # start browser after a short delay
        Start-Job -ScriptBlock {
            param($url)
            Start-Sleep -Seconds 5
            Start-Process $url
        } -ArgumentList "http://localhost:$Port" | Out-Null
    }
    
    # serve the site
    npx quartz build --serve --port $Port
}
finally {
    Pop-Location
}
