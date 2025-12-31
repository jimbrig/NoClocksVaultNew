---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Productivity systems and workflows
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Productivity
aliases:
  - Productivity Map of Content
  - Productivity
  - GTD
  - Time Management
  - MOC - Productivity
publish: true
---

# MOC - Productivity

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Productivity** - systems and tools for effective work.

## Core Areas

### Time Management
- Task management systems
- Time blocking
- Focus techniques

### Tools & Workflows
- Automation
- Note-taking systems
- Project management

### Habits & Systems
- Habit formation
- GTD methodology
- Review practices

### Developer Productivity
- IDE optimization
- Keyboard shortcuts
- Development environments

## Related MOCs

### Child/Specialized MOCs
- [[MOC - PKM]] - Personal knowledge management
- [[MOC - Obsidian]] - Obsidian note-taking

### Sibling MOCs (Same Level)
- [[MOC - Development]] - Developer productivity
- [[MOC - Business]] - Business operations

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Productivity").length`** individual notes with the `#Topic/Productivity` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Productivity
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Productivity"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Productivity]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Productivity"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
