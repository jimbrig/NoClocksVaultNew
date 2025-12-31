---
creation_date: 2025-12-25
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for PowerShell scripting and automation
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/PowerShell
  - Topic/Scripting
aliases:
  - PowerShell Map of Content
  - PowerShell
  - PS
  - pwsh
  - MOC - PowerShell
publish: true
---

# MOC - PowerShell

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **PowerShell** - the cross-platform task automation and configuration management framework.

## Core Areas

### Scripting Fundamentals
- Cmdlets and pipelines
- Objects and types
- Error handling

### Modules & Functions
- Module development
- Custom functions
- Profile customization

### System Administration
- Windows administration
- Azure automation
- Cross-platform tasks

## Key Resources

- [[List - PowerShell Modules]] - Curated module list

## Related MOCs

### Sibling MOCs (Same Level - Scripting/Shells)
- [[MOC - Linux]] - Bash scripting alternative
- [[MOC - Python]] - Python automation

### Platform MOCs
- [[MOC - Windows]] - Windows-native PowerShell
- [[MOC - Cloud]] - Azure PowerShell, cloud automation

### Context MOCs
- [[MOC - Development]] - DevOps and automation

## Guides

| Guide | Description |
|-------|-------------|
| [[Guide - PowerShell Naming Conventions]] | PowerShell naming best practices |

## Code Snippets

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location"
FROM "04-RESOURCES/Code/PowerShell"
AND -"CHANGELOG"
AND -"_README"
SORT file.name ASC
```

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/PowerShell").length`** individual notes with the `#Topic/PowerShell` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/PowerShell
AND -"CHANGELOG"
AND -"03-AREAS/MOC - PowerShell"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-25]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - PowerShell]] AND -"CHANGELOG" AND -"03-AREAS/MOC - PowerShell"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
