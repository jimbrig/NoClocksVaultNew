---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Obsidian knowledge management tool
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Obsidian
  - Topic/PKM
aliases:
  - Obsidian Map of Content
  - Obsidian
  - Obsidian Vault
  - MOC - Obsidian
publish: true
---

# MOC - Obsidian

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Obsidian** - the markdown-based knowledge management tool.

## Core Areas

### Vault Management
- Folder structure
- Tagging conventions
- Frontmatter schemas

### Plugins
- Core plugins
- Community plugins
- Plugin configuration

### Workflows
- Daily notes and journaling
- Zettelkasten method
- AI integrations

### Publishing
- Quartz static site
- Obsidian Publish
- GitHub Pages

## Related MOCs

### Parent/Broader MOCs
- [[MOC - PKM]] - Knowledge management methodology
- [[MOC - Productivity]] - Productivity workflows

### Related Technology MOCs
- [[MOC - Artificial Intelligence]] - AI integrations (Copilot, LLM workflows)
- [[MOC - Development]] - Vault scripting and automation

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Obsidian").length`** individual notes with the `#Topic/Obsidian` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Obsidian
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Obsidian"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Obsidian]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Obsidian"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
