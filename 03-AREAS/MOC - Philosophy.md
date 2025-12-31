---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Philosophy
aliases:
  - Philosophy Map of Content
publish: true
---

# MOC - Philosophy

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Philosophy** - the study of fundamental questions about existence, knowledge, values, reason, and reality.

## Branches

### Ontology (What Exists)
- Nature of being and existence
- Information ontology (Wheeler's "It from Bit")
- Mathematical universe hypothesis

### Epistemology (What We Know)
- Nature of knowledge and belief
- Scientific methodology
- Limits of understanding

### Philosophy of Science
- Philosophy of physics
- Philosophy of mind
- Philosophy of mathematics

## Related MOCs

- [[MOC - Physics]] - Physical reality and its nature
- [[MOC - Mathematics]] - Mathematical foundations
- [[MOC - Information Theory]] - Information as fundamental

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Philosophy").length`** individual notes with the `#Topic/Philosophy` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Philosophy
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Philosophy"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Philosophy]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Philosophy"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
