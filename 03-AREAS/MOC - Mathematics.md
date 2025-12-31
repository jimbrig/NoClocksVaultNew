---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Mathematics
aliases:
  - Mathematics Map of Content
publish: true
---

# MOC - Mathematics

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Mathematics** - the abstract science of number, quantity, and space.

## Branches

### Pure Mathematics
- Algebra, analysis, geometry, topology
- Number theory, set theory, logic
- Category theory, combinatorics

### Applied Mathematics
- Statistics and probability
- Numerical analysis
- Mathematical physics

### Foundations
- Mathematical logic
- Information theory connections
- Computational complexity

## Related MOCs

- [[MOC - Statistics]] - Statistical methods
- [[MOC - Computer Science]] - Computational mathematics
- [[MOC - Physics]] - Mathematical physics
- [[MOC - Information Theory]] - Information-theoretic foundations

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Mathematics").length`** individual notes with the `#Topic/Mathematics` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Mathematics
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Mathematics"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Mathematics]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Mathematics"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
