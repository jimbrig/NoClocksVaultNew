---
creation_date: 2024-04-19
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Get Active Window Titles
  - PowerShell Window Titles
description: PowerShell script to retrieve active application window IDs, names, and titles
cssclasses:
  - code
---

# Get Active Window Titles

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-Process`
## Overview

> [!SOURCE] Sources:
> - *[How to get window title in windows from shell - Super User](https://superuser.com/questions/378790/how-to-get-window-title-in-windows-from-shell)*

PowerShell commands and script to get a list of active application windows with their process ID, name, and window title.

## Code

One-liner:

```powershell
Get-Process | Where-Object { $_.MainWindowTitle } | Format-Table Id, Name, MainWindowTitle -AutoSize
```

Retrieve only the window title by process ID:

```powershell
(Get-Process -Id 8748 -ErrorAction SilentlyContinue).MainWindowTitle
```

Full script:

```powershell
<#
  .SYNOPSIS
    Gets a list of active application windows with ID, Name, and MainWindowTitle
#>
[CmdletBinding()]
Param()

Begin {
    $Processes = Get-Process | Where-Object { $_.MainWindowTitle }
}

Process {
    $Processes | Format-Table Id, Name, MainWindowTitle -AutoSize
}

End {}
```

## Usage

```powershell
# get all active windows
Get-Process | Where-Object { $_.MainWindowTitle } | Format-Table Id, Name, MainWindowTitle -AutoSize

# find specific application windows
Get-Process | Where-Object { $_.MainWindowTitle -like "*Chrome*" }
```

***

## Appendix

*Note created on [2024-04-19](2024-04-19.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
