---
creation_date: 2024-09-23
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Take Ownership of a Folder
  - PowerShell takeown
description: PowerShell command to take ownership of folders using Windows takeown command
cssclasses:
  - code
---

# Take Ownership of a Folder

> [!info] Code Properties
> - **Language**: PowerShell
> - **Tools**: `takeown`, `sudo`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

PowerShell command leveraging the Windows `takeown` utility to take ownership of protected folders like WindowsApps.

## Code

Take ownership of the WindowsApps folder:

```powershell
sudo takeown /f "$Env:PROGRAMFILES\WindowsApps" /r
```

## Usage

```powershell
# take ownership of a single folder
takeown /f "C:\Path\To\Folder"

# take ownership recursively
takeown /f "C:\Path\To\Folder" /r

# take ownership with admin privileges
sudo takeown /f "$Env:PROGRAMFILES\WindowsApps" /r

# grant full control after taking ownership
icacls "C:\Path\To\Folder" /grant "$Env:USERNAME:F" /t
```

***

## Appendix

*Note created on [[2024-09-23]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Take Ownership of a Folder]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
