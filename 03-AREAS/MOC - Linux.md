---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Linux systems administration and Bash scripting
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Linux
  - Topic/Bash
  - Topic/Unix
aliases:
  - Linux Map of Content
  - Linux
  - Bash
  - Unix
  - Shell
  - MOC - Linux
  - MOC - Bash
publish: true
---

# MOC - Linux

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Linux** - the open-source Unix-like operating system.

## Core Areas

### System Administration
- User and permission management
- Service management (systemd)
- Networking configuration

### Shell & Scripting
- Bash scripting
- Command-line utilities
- Text processing (awk, sed, grep)

### Distributions
- Ubuntu, Debian
- RHEL, CentOS, Fedora
- Alpine, Arch

### Containers & Virtualization
- Docker and Podman
- LXC/LXD
- Virtual machines

## Related MOCs

### Sibling MOCs (Same Level - Operating Systems)
- [[MOC - Windows]] - Windows alternative
- [[MOC - Cloud]] - Linux cloud servers

### Related Technology MOCs
- [[MOC - Development]] - Development environments
- [[MOC - PowerShell]] - Alternative shell (cross-platform)
- [[MOC - Data Engineering]] - Data infrastructure on Linux

### Code Resources
- See `04-RESOURCES/Code/Bash/` for Bash scripts

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Linux").length`** individual notes with the `#Topic/Linux` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Linux
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Linux"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Linux]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Linux"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
