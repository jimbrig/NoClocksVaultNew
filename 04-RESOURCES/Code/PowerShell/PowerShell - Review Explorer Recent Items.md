---
creation_date: 2024-09-18
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Review Explorer Recent Items
  - Recent Files Script
description: PowerShell script to review Windows Explorer recent items with timestamps
cssclasses:
  - code
---

# Review Explorer Recent Items

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

PowerShell script that reads Windows Explorer recent items (shortcuts) and displays the target files with their last access timestamps.

## Code

```powershell
# create Shell object
$sh = New-Object -ComObject WScript.Shell

# specify path
$RecentItemsPath = "$Env:APPDATA\Microsoft\Windows\Recent"

# get recent items
$RecentItems = Get-ChildItem -Path $RecentItemsPath -Filter "*.lnk" | 
    Sort-Object LastAccessTime

# loop and output
$RecentItems | ForEach-Object {
    $lnk = $sh.CreateShortcut($_.FullName)
    $tgt = $lnk.TargetPath
    if ($tgt) {
        if (Test-Path -Path $tgt -PathType Leaf) {
            Write-Host "$($_.LastAccessTime.ToString('yyyy-MM-dd HH:mm:ss'))   $($lnk.TargetPath)"
        }
    }
}
```

## Usage

```powershell
# run script to see recent files
.\Get-RecentItems.ps1

# export to file
.\Get-RecentItems.ps1 | Out-File -FilePath "RecentItems.txt"
```

***

## Appendix

*Note created on [[2024-09-18]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Review Explorer Recent Items]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
