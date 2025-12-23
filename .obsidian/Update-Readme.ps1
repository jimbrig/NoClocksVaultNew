

# Helper function to URL encode paths
function Get-UrlEncodedPath {
    param([string]$Path)
    return $Path -replace ' ', '%20'
}

# Get README path
$ReadmePath = "$PSScriptRoot/README.md"
$ReadmeContent = Get-Content $ReadmePath -Raw

# ============================================================
# SETTINGS SECTION
# ============================================================
# Get .gitignore patterns
$gitignorePatterns = @('workspace.json')
if (Test-Path "$PSScriptRoot/.gitignore") {
    $gitignoreContent = Get-Content "$PSScriptRoot/.gitignore"
    $gitignorePatterns += $gitignoreContent | Where-Object { $_ -match '\.json$' -and $_ -notmatch '^#' } | ForEach-Object { $_.Trim() }
}

$SettingsFiles = Get-ChildItem "$PSScriptRoot/*.json" | 
    Where-Object { $gitignorePatterns -notcontains $_.Name } |
    Sort-Object Name | 
    ForEach-Object { 
        $encodedName = Get-UrlEncodedPath $_.Name
        "- [``$($_.Name)``]($encodedName)"
    }

$SettingsSection = if ($SettingsFiles) {
    $SettingsFiles -join "`n"
} else {
    "*No settings files found.*"
}

# ============================================================
# PLUGINS SECTION
# ============================================================
$PluginsTblHeader = "| Name | Version | Description |`n|:----:|:-------:|:-----------:|"

$PluginsTblBody = Get-ChildItem "$PSScriptRoot/plugins" -Directory | 
    Sort-Object Name |
    ForEach-Object { 
        $m = Get-Content "$($_.FullName)/manifest.json" | ConvertFrom-Json
        $encodedName = Get-UrlEncodedPath $_.Name
        $pluginLink = "[$($m.name)](plugins/$encodedName)"
        "| $pluginLink | $($m.version) | $($m.description) |"
    }

$PluginsSection = $PluginsTblHeader + "`n" + ($PluginsTblBody -join "`n")

# ============================================================
# THEMES SECTION
# ============================================================
$ThemesTblHeader = "| Name | Version | Author |`n|:----:|:-------:|:------:|"

$ThemesTblBody = Get-ChildItem "$PSScriptRoot/themes" -Directory | 
    Sort-Object Name |
    ForEach-Object {
        $manifestPath = "$($_.FullName)/manifest.json"
        if (Test-Path $manifestPath) {
            $m = Get-Content $manifestPath | ConvertFrom-Json
            $encodedName = Get-UrlEncodedPath $_.Name
            $themeLink = "[$($m.name)](themes/$encodedName)"
            $author = if ($m.author) { $m.author } else { "Unknown" }
            "| $themeLink | $($m.version) | $author |"
        }
    }

$ThemesSection = if ($ThemesTblBody) {
    $ThemesTblHeader + "`n" + ($ThemesTblBody -join "`n")
} else {
    "*No themes installed.*"
}

# ============================================================
# SNIPPETS SECTION
# ============================================================
$SnippetsFiles = Get-ChildItem "$PSScriptRoot/snippets/*.css" -ErrorAction SilentlyContinue | 
    Sort-Object Name |
    ForEach-Object { 
        $encodedName = Get-UrlEncodedPath $_.Name
        "- [``$($_.Name)``](snippets/$encodedName)"
    }

$SnippetsSection = if ($SnippetsFiles) {
    $SnippetsFiles -join "`n"
} else {
    "*No CSS snippets found.*"
}

# ============================================================
# UPDATE README
# ============================================================
# Replace Settings section
$ReadmeContent = $ReadmeContent -replace '(?s)(<!-- BEGIN:SETTINGS -->).*?(<!-- END:SETTINGS -->)', "`$1`n`n$SettingsSection`n`n`$2"

# Replace Plugins section
$ReadmeContent = $ReadmeContent -replace '(?s)(<!-- BEGIN:PLUGINS -->).*?(<!-- END:PLUGINS -->)', "`$1`n`n$PluginsSection`n`n`$2"

# Replace Themes section
$ReadmeContent = $ReadmeContent -replace '(?s)(<!-- BEGIN:THEMES -->).*?(<!-- END:THEMES -->)', "`$1`n`n$ThemesSection`n`n`$2"

# Replace Snippets section
$ReadmeContent = $ReadmeContent -replace '(?s)(<!-- BEGIN:SNIPPETS -->).*?(<!-- END:SNIPPETS -->)', "`$1`n`n$SnippetsSection`n`n`$2"

# Write back to README
Set-Content -Path $ReadmePath -Value $ReadmeContent -NoNewline

Write-Host "README.md updated successfully!" -ForegroundColor Green
Write-Host "- Settings: $($SettingsFiles.Count) files" -ForegroundColor Cyan
Write-Host "- Plugins: $($PluginsTblBody.Count) plugins" -ForegroundColor Cyan
Write-Host "- Themes: $($ThemesTblBody.Count) themes" -ForegroundColor Cyan
Write-Host "- Snippets: $($SnippetsFiles.Count) files" -ForegroundColor Cyan
