---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/History
aliases:
  - History Map of Content
publish: true
---

# MOC - History

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **History** - the study of past events and their significance.

## Areas of Interest

### Technology History
- History of computing
- Telecommunications evolution
- Information age development

### Scientific History
- History of physics and mathematics
- Key discoveries and paradigm shifts
- Notable scientists and thinkers

### Business History
- Company histories
- Industry evolution
- Economic trends

## Related MOCs

- [[MOC - Science]] - Scientific developments
- [[MOC - Philosophy]] - Historical ideas
- [[MOC - Computer Science]] - Computing history

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/History").length`** individual notes with the `#Topic/History` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/History
AND -"CHANGELOG"
AND -"03-AREAS/MOC - History"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - History]] AND -"CHANGELOG" AND -"03-AREAS/MOC - History"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
