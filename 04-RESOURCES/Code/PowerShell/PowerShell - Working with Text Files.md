---
creation_date: 2024-09-25
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Status/Complete
aliases:
  - Working with Text Files
  - PowerShell File Operations
description: PowerShell commands and techniques for working with text files
cssclasses:
  - code
---

# Working with Text Files

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-Content`, `Set-Content`, `Select-String`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

PowerShell has built-in commands for interacting with text files. These commands provide powerful control over file operations with familiar aliases for users coming from Unix/Linux.

## Commands

| Command | Alias | Description |
| --- | --- | --- |
| `Get-Content` | `cat` | Read file contents |
| `Select-String` | `grep` | Search for patterns |
| `Set-Content` | - | Write to file |
| `Sort-Object` | `sort` | Sort content |
| `Measure-Object` | `measure` | Count lines/words |
| `Select-Object -First` | - | Get first N lines |
| `Select-Object -Last` | - | Get last N lines |

## Code

### Read File Contents

```powershell
# read entire file
Get-Content test.log

# read first 10 lines
Get-Content test.log -Head 10

# read last 10 lines
Get-Content test.log -Tail 10

# monitor file changes (like tail -f)
Get-Content test.log -Wait -Tail 10
```

### Search File Contents

```powershell
# search for pattern
Select-String -Path test.log -Pattern "error"

# case-insensitive search
Select-String -Path test.log -Pattern "error" -CaseSensitive:$false

# search multiple files
Select-String -Path "*.log" -Pattern "warning"
```

### Write to Files

```powershell
# overwrite file
"Hello World" | Set-Content output.txt

# append to file
"New line" | Add-Content output.txt

# write array to file
@("Line 1", "Line 2", "Line 3") | Set-Content output.txt
```

### Count and Measure

```powershell
# count lines
(Get-Content test.log | Measure-Object -Line).Lines

# count words
(Get-Content test.log | Measure-Object -Word).Words

# count characters
(Get-Content test.log | Measure-Object -Character).Characters
```

## Usage

```powershell
# read log file, filter errors, sort, and save
Get-Content app.log | 
    Select-String "ERROR" | 
    Sort-Object | 
    Set-Content errors.txt
```

***

## Appendix

*Note created on [[2024-09-25]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Working with Text Files]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
