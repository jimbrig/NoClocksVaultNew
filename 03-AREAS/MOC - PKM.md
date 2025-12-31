---
creation_date: 2025-12-20
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Personal Knowledge Management systems and practices
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/PKM
aliases:
  - PKM Map of Content
  - Personal Knowledge Management
  - Knowledge Management
  - Note-Taking
publish: true
---

# MOC - PKM

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Personal Knowledge Management (PKM)** - systems and practices for capturing, organizing, and retrieving knowledge.

## Core Areas

### Methodologies
- [[Zettelkasten Method]] - Atomic note-taking
- [[PARA Method]] - Folder organization system
- Building a Second Brain (BASB)

### Tools
- Obsidian vault management
- Note linking strategies
- Templates and automation

### Practices
- Daily notes and journaling
- Progressive summarization
- Spaced repetition

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Productivity]] - Productivity context

### Sibling MOCs (Same Level)
- [[MOC - Obsidian]] - Obsidian-specific knowledge

### Cross-Domain Applications
- [[MOC - Development]] - Developer documentation
- [[MOC - Data Science]] - Research knowledge management

## Guides

| Guide | Description |
|-------|-------------|
| [[Guide - PKM Organization]] | Organizing knowledge effectively |
| [[Guide - AI Chat Processing Workflow]] | Processing AI conversations |

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/PKM").length`** individual notes with the `#Topic/PKM` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/PKM
AND -"CHANGELOG"
AND -"03-AREAS/MOC - PKM"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-20]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - PKM]] AND -"CHANGELOG" AND -"03-AREAS/MOC - PKM"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
