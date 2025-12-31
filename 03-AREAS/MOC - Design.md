---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Design
aliases:
  - Design Map of Content
publish: true
---

# MOC - Design

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Design** - visual, UX, and system design principles.

## Design Disciplines

### UX/UI Design
- User experience principles
- Interface design patterns
- Accessibility (a11y)

### Visual Design
- Typography and color theory
- Layout and composition
- Brand identity

### System Design
- Architecture patterns
- Scalability considerations
- API design

### Design Tools
- Figma, Sketch, Adobe XD
- Design systems
- Prototyping

## Related MOCs

- [[MOC - Web Development]] - Frontend implementation
- [[MOC - Development]] - Software design patterns
- [[MOC - Productivity]] - Design workflows

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Design").length`** individual notes with the `#Topic/Design` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Design
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Design"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Design]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Design"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
