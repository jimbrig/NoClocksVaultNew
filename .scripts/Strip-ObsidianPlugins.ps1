# Strip-ObsidianPlugins.ps1
# post-processes exported markdown to remove obsidian plugin-specific blocks
#
# usage: .\Strip-ObsidianPlugins.ps1 -Path <directory>
#
# handles:
#   - ```dataview ... ``` blocks
#   - ```dataviewjs ... ``` blocks
#   - ```table-of-contents ... ``` blocks
#   - inline dataview: `$= dv.xxx(...)`

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Path
)

$ErrorActionPreference = 'Stop'

# get all markdown files
$mdFiles = Get-ChildItem -Path $Path -Filter "*.md" -Recurse -File

foreach ($file in $mdFiles) {
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    $modified = $false
    
    # pattern to match plugin code blocks (dataview, dataviewjs, table-of-contents)
    # handles both ``` and ```` (4 backticks)
    $blockPattern = '(?s)`{3,4}(dataview|dataviewjs|table-of-contents).*?`{3,4}'
    
    if ($content -match $blockPattern) {
        # replace dataview blocks with placeholder comment
        $content = $content -replace '(?s)`{3,4}dataview(js)?.*?`{3,4}', '<!-- dataview query removed for github compatibility -->'
        
        # replace table-of-contents blocks with placeholder
        $content = $content -replace '(?s)`{3,4}table-of-contents.*?`{3,4}', '<!-- table of contents removed for github compatibility -->'
        
        $modified = $true
    }
    
    # pattern for inline dataview: `$= dv.xxx(...)` with optional bold markers
    $inlinePattern = '\*?\*?`\$= dv\.[^`]+`\*?\*?'
    
    if ($content -match $inlinePattern) {
        $content = $content -replace $inlinePattern, '*(dynamic content)*'
        $modified = $true
    }
    
    # pattern for bare inline dataview (less common)
    $bareInlinePattern = '\$= dv\.[a-zA-Z0-9_]+\([^)]*\)(\.[a-zA-Z0-9_]+)*'
    
    if ($content -match $bareInlinePattern) {
        $content = $content -replace $bareInlinePattern, '*(dynamic content)*'
        $modified = $true
    }
    
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content -Encoding UTF8 -NoNewline
        Write-Verbose "Processed: $($file.FullName)"
    }
}

Write-Host "Stripped Obsidian plugin blocks from $Path" -ForegroundColor Green

