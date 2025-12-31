---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Microsoft Windows operating system
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Windows
  - Topic/Microsoft
aliases:
  - Windows Map of Content
  - Windows
  - Windows OS
  - Microsoft Windows
  - MOC - Windows
publish: true
---

# MOC - Windows

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Microsoft Windows** - desktop and server operating systems.

## Core Areas

### System Administration
- User and group management
- Services and processes
- Registry configuration

### Development Environment
- WSL (Windows Subsystem for Linux)
- Terminal and shell setup
- Development tools

### Automation
- PowerShell scripting
- Task Scheduler
- Group Policy

## Related MOCs

### Sibling MOCs (Same Level - Operating Systems)
- [[MOC - Linux]] - Linux alternative
- [[MOC - Cloud]] - Windows Server in cloud

### Child/Specialized MOCs
- [[MOC - PowerShell]] - Windows automation

### Related Technology MOCs
- [[MOC - Development]] - Windows development environment

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Windows").length`** individual notes with the `#Topic/Windows` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Windows
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Windows"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Windows]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Windows"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
