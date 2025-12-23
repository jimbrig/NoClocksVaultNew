# install-obsidian-export.ps1
# installs obsidian-export via cargo (requires rust toolchain)

$ErrorActionPreference = 'Stop'

Write-Host "Installing obsidian-export..." -ForegroundColor Cyan

# check for cargo
if (-not (Get-Command cargo -ErrorAction SilentlyContinue)) {
    Write-Host "Cargo not found. Please install Rust from https://rustup.rs/" -ForegroundColor Red
    Write-Host ""
    Write-Host "Quick install (Windows):" -ForegroundColor Yellow
    Write-Host "  winget install Rustlang.Rustup" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Or visit: https://rustup.rs/" -ForegroundColor Gray
    exit 1
}

# install obsidian-export
cargo install --locked obsidian-export

if ($LASTEXITCODE -eq 0) {
    Write-Host "obsidian-export installed successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Usage:" -ForegroundColor Yellow
    Write-Host "  obsidian-export <source-vault> <destination>" -ForegroundColor Gray
} else {
    Write-Host "Installation failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
