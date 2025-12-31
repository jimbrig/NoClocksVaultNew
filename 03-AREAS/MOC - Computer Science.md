---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Computer Science - theory and foundations
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/ComputerScience
  - Topic/CS
aliases:
  - Computer Science Map of Content
  - Computer Science
  - CS
  - Computation
  - MOC - Computer Science
  - MOC - CS
publish: true
---

# MOC - Computer Science

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Computer Science** - the study of computation, information processing, and the design of computer systems.

## Subdomains

### Theory of Computation
- Computational complexity
- Limits of computation (Margolus-Levitin, Bekenstein)
- Information theory foundations

### Computer Architecture
- Binary vs ternary computing
- Digital logic and encoding
- Hardware-software interface

### Algorithms & Data Structures
- Algorithm design and analysis
- Data structure implementations

### Programming Languages
- See [[MOC - Development]] for language-specific content

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Mathematics]] - Mathematical foundations
- [[MOC - Science]] - Scientific context

### Child/Specialized MOCs
- [[MOC - Development]] - Practical programming
- [[MOC - Data Engineering]] - Data systems
- [[MOC - Artificial Intelligence]] - AI/ML

### Sibling MOCs (Same Level)
- [[MOC - Information Theory]] - Theoretical connections
- [[MOC - Physics]] - Computational physics

### Applications
- [[MOC - Data Science]] - Applied computation
- [[MOC - Web Development]] - Software applications

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Computer Science").length`** individual notes with the `#Topic/Computer Science` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Computer Science
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Computer Science"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Computer Science]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Computer Science"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
