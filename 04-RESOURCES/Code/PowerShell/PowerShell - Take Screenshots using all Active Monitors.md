---
creation_date: 2024-05-03
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Take Screenshots using all Active Monitors
  - Multi-Monitor Screenshot
description: PowerShell script to capture screenshots from all active monitors
cssclasses:
  - code
---

# Take Screenshots using all Active Monitors

> [!info] Code Properties
> - **Language**: PowerShell
> - **Assemblies**: `System.Drawing`, `System.Windows.Forms`
## Overview

> [!SOURCE] Sources:
> - *[Capture Screenshot of All Monitors](https://gist.github.com/csdy/915a4734a310ab0d2054f984f8140c65)*

PowerShell script that captures screenshots from all connected monitors and saves them to a specified folder with timestamps.

## Code

```powershell
[Reflection.Assembly]::LoadWithPartialName("System.Drawing")

function CaptureScreenshot([Drawing.Rectangle]$Bounds, $Path) {
    # initialize image
    $Image    = New-Object Drawing.Bitmap $Bounds.Width, $Bounds.Height
    $Graphics = [Drawing.Graphics]::FromImage($Image)
    $Graphics.CopyFromScreen($Bounds.Location, [Drawing.Point]::Empty, $Bounds.Size)

    # save screenshot
    $Image.Save($Path)

    # cleanup
    $Graphics.Dispose()
    $Image.Dispose()
}

# initialize path
$BasePath = "C:/screenshots"
if (-not (Test-Path -Path $BasePath -PathType Container)) {
    New-Item -Path $BasePath -ItemType Directory -Force
}

# get monitors
Add-Type -AssemblyName System.Windows.Forms
$Screens = [System.Windows.Forms.Screen]::AllScreens

# capture monitors
$DateTime = Get-Date -Format yyyyMMddHHmmss
for ($i = 0; $i -lt $Screens.Length; $i++) {
    $Screen   = $Screens[$i]
    $Left     = $Screen.Bounds.X
    $Top      = $Screen.Bounds.Y
    $Right    = $Screen.Bounds.X + $Screen.Bounds.Width
    $Bottom   = $Screen.Bounds.Y + $Screen.Bounds.Height
    $Bounds   = [Drawing.Rectangle]::FromLTRB($Left, $Top, $Right, $Bottom)
    $FileName = "${BasePath}/${DateTime}_${i}.png"
    
    CaptureScreenshot $Bounds $FileName
}
```

## Usage

```powershell
# run script to capture all monitors
./Capture-AllMonitors.ps1

# screenshots saved to C:/screenshots/ with timestamp prefixes
```

***

## Appendix

*Note created on [2024-05-03](2024-05-03.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
