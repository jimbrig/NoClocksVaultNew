#Requires -Version 7.0
<#
.SYNOPSIS
    Export the Obsidian vault to GitHub-friendly markdown.

.DESCRIPTION
    This script performs the full export workflow:
    1. Creates a copy of the vault
    2. Renames _README.md files to README.md
    3. Runs obsidian-export to convert [[wikilinks]] to standard markdown
    4. Strips Obsidian plugin blocks (dataview, table-of-contents, etc.)
    5. Optionally commits and pushes to the main branch

.PARAMETER VaultPath
    Path to the Obsidian vault. Defaults to the parent directory of this script.

.PARAMETER OutputPath
    Path for the exported vault. Defaults to {VaultName}-Export in the parent directory.

.PARAMETER Push
    If specified, commits and pushes changes to the main branch.

.PARAMETER SkipCleanup
    If specified, keeps the temporary copy directory for debugging.

.EXAMPLE
    .\Export-Vault.ps1
    Exports the vault to a sibling directory.

.EXAMPLE
    .\Export-Vault.ps1 -Push
    Exports and pushes to the main branch.

.NOTES
    Requires: obsidian-export (cargo install obsidian-export)
#>
[CmdletBinding()]
param(
    [Parameter()]
    [string]$VaultPath,

    [Parameter()]
    [string]$OutputPath,

    [Parameter()]
    [switch]$Push,

    [Parameter()]
    [switch]$SkipCleanup
)

$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

# resolve paths
if (-not $VaultPath) {
    $VaultPath = Split-Path $PSScriptRoot -Parent
}
$VaultPath = Resolve-Path $VaultPath
$VaultName = Split-Path $VaultPath -Leaf
$ParentPath = Split-Path $VaultPath -Parent

if (-not $OutputPath) {
    $OutputPath = Join-Path $ParentPath "$VaultName-Export"
}

$CopyPath = Join-Path $ParentPath "$VaultName-Copy"

Write-Information "Vault Export Script"
Write-Information "==================="
Write-Information "Vault:  $VaultPath"
Write-Information "Copy:   $CopyPath"
Write-Information "Output: $OutputPath"
Write-Information ""

# check for obsidian-export
if (-not (Get-Command obsidian-export -ErrorAction SilentlyContinue)) {
    Write-Warning "obsidian-export not found. Attempting to install via cargo..."
    if (-not (Get-Command cargo -ErrorAction SilentlyContinue)) {
        throw "Neither obsidian-export nor cargo found. Please install Rust and run: cargo install obsidian-export"
    }
    cargo install --locked obsidian-export
}

# step 1: clean up any previous runs
Write-Information "[1/6] Cleaning up previous export directories..."
if (Test-Path $CopyPath) {
    Remove-Item -Path $CopyPath -Recurse -Force
}
if (Test-Path $OutputPath) {
    Remove-Item -Path $OutputPath -Recurse -Force
}

# step 2: create a copy of the vault
Write-Information "[2/6] Creating vault copy..."
Copy-Item -Path $VaultPath -Destination $CopyPath -Recurse -Force

# step 3: rename _README.md files
Write-Information "[3/6] Renaming _README.md files to README.md..."
Get-ChildItem -Path $CopyPath -Recurse -Filter "_README.md" -File | ForEach-Object {
    $newName = $_.FullName -replace '_README\.md$', 'README.md'
    Move-Item -Path $_.FullName -Destination $newName -Force
    Write-Verbose "Renamed: $($_.FullName)"
}

# step 4: setup output with git history
Write-Information "[4/6] Setting up output directory with git history..."
New-Item -ItemType Directory -Path $OutputPath -Force | Out-Null

# copy .git directory to preserve history
if (Test-Path (Join-Path $VaultPath ".git")) {
    Copy-Item -Path (Join-Path $VaultPath ".git") -Destination $OutputPath -Recurse -Force
    
    # checkout main branch in output
    Push-Location $OutputPath
    try {
        git checkout main 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "main branch doesn't exist, creating from current branch"
            git checkout -b main
        }
    }
    finally {
        Pop-Location
    }
}

# step 5: run obsidian-export
Write-Information "[5/6] Running obsidian-export..."
obsidian-export $CopyPath $OutputPath --frontmatter never
if ($LASTEXITCODE -ne 0) {
    throw "obsidian-export failed with exit code $LASTEXITCODE"
}

# step 6: strip obsidian plugin blocks
Write-Information "[6/6] Stripping Obsidian plugin blocks..."
$mdFiles = Get-ChildItem -Path $OutputPath -Filter "*.md" -Recurse -File

$processedCount = 0
foreach ($file in $mdFiles) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    if (-not $content) { continue }
    
    $originalContent = $content
    
    # pattern to match plugin code blocks (handles 3 or 4 backticks)
    # dataview and dataviewjs blocks
    $content = $content -replace '(?s)`{3,4}dataview(js)?.*?`{3,4}', '<!-- dataview query removed for github compatibility -->'
    
    # table-of-contents blocks
    $content = $content -replace '(?s)`{3,4}table-of-contents.*?`{3,4}', '<!-- table of contents removed for github compatibility -->'
    
    # inline dataview: `$= dv.xxx(...)` with optional bold markers
    $content = $content -replace '\*?\*?`\$= dv\.[^`]+`\*?\*?', '*(dynamic content)*'
    
    if ($content -ne $originalContent) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        $processedCount++
        Write-Verbose "Processed: $($file.FullName)"
    }
}
Write-Information "  Processed $processedCount files with plugin blocks"

# cleanup copy directory
if (-not $SkipCleanup) {
    Write-Information "Cleaning up temporary copy..."
    Remove-Item -Path $CopyPath -Recurse -Force
}

Write-Information ""
Write-Information "Export complete: $OutputPath"

# optionally push to main branch
if ($Push) {
    Write-Information ""
    Write-Information "Pushing to main branch..."
    Push-Location $OutputPath
    try {
        git add -A
        git commit -m "chore: convert wikilinks, rename READMEs, strip plugin blocks"
        git push origin main --force
        Write-Information "Pushed to main branch successfully"
    }
    finally {
        Pop-Location
    }
}

