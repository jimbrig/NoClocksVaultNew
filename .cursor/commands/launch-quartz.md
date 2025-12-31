# Launch Quartz Site Locally

Sync vault content and start the Quartz development server.

## Usage

Run the PowerShell script from the vault root:

```powershell
.\.scripts\quartz.ps1
```

## Script Options

| Parameter | Description |
|-----------|-------------|
| `-Port <int>` | Port to serve on (default: 8080) |
| `-NoBrowser` | Don't automatically open browser |
| `-SyncOnly` | Only sync content, don't start server |
| `-SkipSync` | Skip content sync, use existing content (faster restarts) |

### Examples

```powershell
# full workflow: sync, build, serve, open browser
.\.scripts\quartz.ps1

# custom port without browser
.\.scripts\quartz.ps1 -Port 3000 -NoBrowser

# sync content only (for inspection/debugging)
.\.scripts\quartz.ps1 -SyncOnly

# quick restart using existing content
.\.scripts\quartz.ps1 -SkipSync
```

## What the Script Does

The script mirrors the GitHub Actions workflow (`quartz-deploy.yml`) for local development:

1. **Cleans** `quartz/content` directory
2. **Syncs** vault content (excluding system folders)
3. **Renames** `_README.md` → `index.md` in all directories
4. **Fixes** `[[_README]]` links → `[[index]]`
5. **Strips** Obsidian plugin blocks (dataview, table-of-contents)
6. **Copies** favicons to static folder
7. **Installs** npm dependencies (if needed)
8. **Builds and serves** the Quartz site

## Excluded Content

These are excluded from sync (matching the GHA workflow):

- `.git/` - Git repository data
- `.github/` - GitHub workflows
- `.obsidian/` - Obsidian configuration
- `.cursor/` - Cursor IDE configuration
- `.vscode/` - VS Code configuration
- `.scripts/` - Build scripts
- `quartz/` - Quartz source (avoid recursion)
- `99-ARCHIVES/` - Archived content
- `05-SYSTEM/Templates/` - Templater templates
- `node_modules/` - Dependencies

## Server Details

- **URL**: http://localhost:8080
- **Hot reload**: Enabled (detects changes automatically)
- **Exit**: Press `Ctrl+C`

## Expected Output

```
Quartz Local Development Server
================================
Vault:   N:\obsidian\NoClocksVaultNew
Quartz:  N:\obsidian\NoClocksVaultNew\quartz
Content: N:\obsidian\NoClocksVaultNew\quartz\content

[1/7] Cleaning quartz/content directory...
[2/7] Syncing vault content...
[3/7] Creating homepage...
[4/7] Renaming _README.md files to index.md...
[5/7] Fixing _README links...
[6/7] Stripping Obsidian plugin blocks...
[7/7] Setting up favicons...

Content sync complete!

Checking dependencies...

Starting Quartz server on http://localhost:8080
Press Ctrl+C to stop

Quartz v4.x.x
Started a Quartz server listening at http://localhost:8080
```

## Troubleshooting

**Port in use**: Use a different port:

```powershell
.\.scripts\quartz.ps1 -Port 3000
```

**Dependencies missing**: Delete `quartz/node_modules` and re-run:

```powershell
Remove-Item -Recurse -Force .\quartz\node_modules
.\.scripts\quartz.ps1
```

**Quick iteration**: Skip sync for faster restarts:

```powershell
.\.scripts\quartz.ps1 -SkipSync
```

## Related

- Script: `.scripts/quartz.ps1`
- GitHub workflow: `.github/workflows/quartz-deploy.yml`
- Quartz config: `quartz.config.ts`, `quartz.layout.ts`
