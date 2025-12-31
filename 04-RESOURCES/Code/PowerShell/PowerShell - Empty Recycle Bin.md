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
  - Empty Recycle Bin
  - PowerShell Clear Recycle Bin
description: PowerShell script to empty the Windows Recycle Bin using Shell32 API
cssclasses:
  - code
---

# Empty Recycle Bin

> [!info] Code Properties
> - **Language**: PowerShell
> - **API**: Shell32 (Windows API)

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

PowerShell script that empties the Windows Recycle Bin using the Shell32 `SHEmptyRecycleBin` API function.

## Code

```powershell
Add-Type Shell32 @"
    [DllImport("shell32.dll")]
    public static extern int SHEmptyRecycleBin(
        IntPtr hwnd,
        string pszRootPath,
        int    dwFlags
    );
"@ -NameSpace System

$SHERB_NOCONFIRMATION = 0x1
$SHERB_NOPROGRESSUI   = 0x2
$SHERB_NOSOUND        = 0x4
$dwFlags              = $SHERB_NOCONFIRMATION

$res = [Shell32]::SHEmptyRecycleBin([IntPtr]::Zero, $null, $dwFlags)

if ($res) { 
    "Error 0x{0:x8}: {1}" -f $res, (New-Object ComponentModel.Win32Exception($res)).Message
}

exit $res
```

## Usage

Run the script to silently empty the Recycle Bin without confirmation:

```powershell
.\Empty-RecycleBin.ps1
```

To customize behavior, combine flags:

```powershell
# silent with no progress UI and no sound
$dwFlags = $SHERB_NOCONFIRMATION -bor $SHERB_NOPROGRESSUI -bor $SHERB_NOSOUND
```

***

## Appendix

*Note created on [[2024-09-18]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Empty Recycle Bin]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Status/WIP
aliases:
  - PowerShell - Empty Recycle Bin
publish: true
permalink:
description:
cssclasses:
  - code
---

# PowerShell - Empty Recycle Bin

> [!info] Code Properties
> - **Language**: 
> - **Packages**: 

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

```
# code goes here
```

## Usage

How to use this code:

```
# usage example
```

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### See Also

- [[04-RESOURCES/Code/_README|Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Empty Recycle Bin]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
