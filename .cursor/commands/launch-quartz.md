# Launch Quartz Site Locally

Sync vault content and start the Quartz development server.

## Full Workflow

### Step 1: Sync Content to quartz/content

PowerShell script to sync vault content:

```powershell
# from vault root
$vaultRoot = "N:/obsidian/NoClocksVaultNew"
$quartzContent = "$vaultRoot/quartz/content"

# clean existing content (preserve .git if exists)
Get-ChildItem -Path $quartzContent -Exclude ".git" | Remove-Item -Recurse -Force

# folders to exclude from sync
$excludeFolders = @(
    ".obsidian",
    ".cursor",
    ".git",
    ".github",
    "quartz",
    "99-ARCHIVES",
    "05-SYSTEM/Templates",
    "node_modules"
)

# build exclusion pattern
$excludePattern = $excludeFolders | ForEach-Object { [regex]::Escape($_) }

# copy content excluding specified folders
Get-ChildItem -Path $vaultRoot -Recurse -File | 
    Where-Object { 
        $relativePath = $_.FullName.Replace($vaultRoot, "")
        -not ($excludePattern | Where-Object { $relativePath -match $_ })
    } |
    ForEach-Object {
        $destPath = $_.FullName.Replace($vaultRoot, $quartzContent)
        $destDir = Split-Path -Parent $destPath
        if (-not (Test-Path $destDir)) {
            New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        }
        Copy-Item $_.FullName -Destination $destPath -Force
    }

# rename README.md to index.md at content root
$readmePath = "$quartzContent/README.md"
$indexPath = "$quartzContent/index.md"
if (Test-Path $readmePath) {
    Move-Item -Path $readmePath -Destination $indexPath -Force
}

Write-Host "Content synced to quartz/content"
```

### Step 2: Launch Quartz Server

```powershell
cd "$vaultRoot/quartz"
npx quartz build --serve
```

### Step 3: Open Browser (run in separate terminal)

```powershell
Start-Sleep -Seconds 5; Start-Process "http://localhost:8080"
```

## Quick Command (Combined)

```powershell
# sync and serve (run in background), then open browser
cd N:/obsidian/NoClocksVaultNew/quartz
Start-Job -ScriptBlock { npx quartz build --serve } | Out-Null
Start-Sleep -Seconds 8
Start-Process "http://localhost:8080"
Write-Host "Quartz server running at http://localhost:8080"
Write-Host "Server running in background job. Use 'Get-Job | Stop-Job' to stop."
```

## Alternative: Foreground with Browser

```powershell
# open browser after delay, then start server in foreground
cd N:/obsidian/NoClocksVaultNew/quartz
Start-Job -ScriptBlock { Start-Sleep -Seconds 6; Start-Process "http://localhost:8080" } | Out-Null
npx quartz build --serve
```

## Excluded Folders

These folders are excluded from sync:
- `.obsidian` - Obsidian configuration
- `.cursor` - Cursor IDE configuration  
- `.git` - Git repository data
- `.github` - GitHub workflows
- `quartz` - Quartz source (avoid recursion)
- `99-ARCHIVES` - Archived content
- `05-SYSTEM/Templates` - Templater templates
- `node_modules` - Dependencies

## Server Details

- **URL**: http://localhost:8080
- **Hot reload**: Enabled (detects changes automatically)
- **Exit**: Press `Ctrl+C`

## Expected Output

```
Quartz v4.5.2
Cleaned output directory `public` in 99ms
Found 220 input files from `content` in 35ms
Parsed 220 Markdown files in 4s
Emitted 867 files to `public` in 2s
Started a Quartz server listening at http://localhost:8080
```

## Troubleshooting

**Missing index.md warning**: Ensure README.md was renamed to index.md in quartz/content

**Port in use**: Kill existing process or use different port:
```powershell
npx quartz build --serve --port 3000
```
