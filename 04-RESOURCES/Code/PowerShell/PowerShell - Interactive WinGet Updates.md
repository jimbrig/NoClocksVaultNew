---
creation_date: 2024-04-15
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Interactive WinGet Updates
  - WinGet Interactive Update
description: PowerShell script for interactive WinGet package updates using WingetTools module
cssclasses:
  - code
---

# Interactive WinGet Updates

> [!info] Code Properties
> - **Language**: PowerShell
> - **Modules**: `WingetTools`, `Microsoft.PowerShell.ConsoleGuiTools`
## Overview

> [!SOURCE] Sources:
> - *[jdhitsolutions/WingetTools - GitHub](https://github.com/jdhitsolutions/WingetTools)*
> - *[Get-WGUpgrade Documentation](https://github.com/jdhitsolutions/WingetTools/blob/main/docs/Get-WGUpgrade.md)*

Using the WingetTools PowerShell module to implement an interactive way to display upgradeable WinGet packages, select packages to update, and invoke the updates.

## Code

### Installation

```powershell
# install via PowerShellGet
Install-Module WingetTools -Scope CurrentUser -Force

# install via PSResourceGet
Install-PSResource WingetTools -Scope CurrentUser -Force

# install console GUI tools for interactive selection
Install-Module Microsoft.PowerShell.ConsoleGuiTools -Scope CurrentUser -Force

# import into current session
Import-Module WingetTools

# test getting help
Get-Help Get-WGUpgrade -Full
```

### Usage

```powershell
#Requires -RunAsAdministrator
Get-WGUpgrade | Out-ConsoleGridView -OutputMode Multiple | Invoke-WGUpgrade
```

## Usage

Run as administrator to interactively select and update packages:

```powershell
# show available updates in interactive grid, select packages to update
Get-WGUpgrade | Out-ConsoleGridView -OutputMode Multiple | Invoke-WGUpgrade

# update all packages without interaction
Get-WGUpgrade | Invoke-WGUpgrade
```

***

## Appendix

*Note created on [2024-04-15](2024-04-15.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
