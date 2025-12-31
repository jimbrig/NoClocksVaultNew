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
  - Create Desktop Shortcut
  - PowerShell Shortcut Creation
description: PowerShell script to create desktop shortcuts using WScript.Shell COM object
cssclasses:
  - code
---

# Create Desktop Shortcut

> [!info] Code Properties
> - **Language**: PowerShell
> - **COM Objects**: `WScript.Shell`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Simple PowerShell script that creates a desktop shortcut (.lnk file) using the Windows Script Host Shell COM object.

## Code

```powershell
$TargetFile = "$Env:SYSTEMROOT\System32\notepad.exe"
$ShortcutFile = "$Env:Public\Desktop\Notepad.lnk"
$Wsh = New-Object -ComObject WScript.Shell
$Shortcut = $Wsh.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()
```

## Usage

Modify `$TargetFile` and `$ShortcutFile` variables to create shortcuts for different applications:

```powershell
# create shortcut for custom application
$TargetFile = "C:\Program Files\MyApp\app.exe"
$ShortcutFile = "$Env:USERPROFILE\Desktop\MyApp.lnk"
$Wsh = New-Object -ComObject WScript.Shell
$Shortcut = $Wsh.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Arguments = "--start-minimized"
$Shortcut.WorkingDirectory = "C:\Program Files\MyApp"
$Shortcut.IconLocation = "$TargetFile,0"
$Shortcut.Save()
```

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Create Desktop Shortcut]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
