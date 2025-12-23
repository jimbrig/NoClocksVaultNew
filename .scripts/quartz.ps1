<#
.SYNOPSIS
    Launch a local Quartz server for testing and development.

.DESCRIPTION
    This script:
    1. Copies vault content to quartz/content directory
    2. Applies Quartz configuration files
    3. Builds and serves the Quartz site locally

.PARAMETER Port
    Port to serve on. Default: 8080

.PARAMETER NoBrowser
    Don't automatically open browser.

.EXAMPLE
    .\quartz.ps1
    Builds and serves the site, opening browser.

.EXAMPLE
    .\quartz.ps1 -Port 3000 -NoBrowser
    Serves on port 3000 without opening browser.
#>
[CmdletBinding()]
param(
    [Parameter()]
    [int]$Port = 8080,

    [Parameter()]
    [switch]$NoBrowser
)

$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

$VaultPath = Split-Path $PSScriptRoot -Parent
$QuartzPath = Join-Path $VaultPath "quartz"
$ContentPath = Join-Path $QuartzPath "content"

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

# check for npx
if (-not (Get-Command npx -ErrorAction SilentlyContinue)) {
    throw "npx not found. Please ensure npm is installed and in your PATH."
}

# step 1: clean up quartz content directory
Write-Information "[1/4] Cleaning quartz/content directory..."
if (Test-Path $ContentPath) {
    Remove-Item -Path $ContentPath -Recurse -Force
}
New-Item -ItemType Directory -Path $ContentPath -Force | Out-Null

# step 2: copy vault content (excluding quartz submodule and system files)
Write-Information "[2/4] Copying vault content..."
$excludeDirs = @('.git', '.github', '.obsidian', '.cursor', '.vscode', 'quartz', '05-SYSTEM', '99-ARCHIVES')
$excludeFiles = @('*.vault', '.gitignore', '.gitattributes', '.gitmodules', '.editorconfig', '.export-ignore')

# copy directories
Get-ChildItem -Path $VaultPath -Directory | Where-Object {
    $_.Name -notin $excludeDirs
} | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $ContentPath -Recurse -Force
    Write-Verbose "Copied: $($_.Name)"
}

# copy root markdown files
Get-ChildItem -Path $VaultPath -File -Filter "*.md" | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination $ContentPath -Force
    Write-Verbose "Copied: $($_.Name)"
}

# step 3: copy quartz config files
Write-Information "[3/4] Applying Quartz configuration..."
$configFiles = @('quartz.config.ts', 'quartz.layout.ts')
foreach ($configFile in $configFiles) {
    $sourcePath = Join-Path $VaultPath $configFile
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $QuartzPath -Force
        Write-Verbose "Copied config: $configFile"
    }
}

# step 4: install dependencies if needed
Write-Information "[4/4] Checking dependencies..."
Push-Location $QuartzPath
try {
    if (-not (Test-Path (Join-Path $QuartzPath "node_modules"))) {
        Write-Information "  Installing npm dependencies..."
        npm ci --omit=dev
    }
    
    Write-Information ""
    Write-Information "Starting Quartz server on http://localhost:$Port"
    Write-Information "Press Ctrl+C to stop"
    Write-Information ""
    
    if (-not $NoBrowser) {
        # start browser after a short delay
        Start-Job -ScriptBlock {
            param($url)
            Start-Sleep -Seconds 3
            Start-Process $url
        } -ArgumentList "http://localhost:$Port" | Out-Null
    }
    
    # serve the site
    npx quartz build --serve --port $Port
}
finally {
    Pop-Location
}
