---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Physics
aliases:
  - Physics Map of Content
publish: true
---

# MOC - Physics

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Physics** - the fundamental science of matter, energy, and their interactions.

## Subdomains

### Quantum Mechanics
- Wave-particle duality, uncertainty principle
- Quantum field theory and particle physics
- Quantum information and computation

### Thermodynamics
- Entropy and the laws of thermodynamics
- Statistical mechanics
- Information-thermodynamics connections

### Relativity
- Special and general relativity
- Spacetime geometry
- Gravitational physics

### Unified Frameworks
- Black hole thermodynamics (QM + GR + Thermo)
- Information-theoretic foundations
- Computational limits from fundamental constants

## Related MOCs

- [[MOC - Information Theory]] - Information-physics connections
- [[MOC - Mathematics]] - Mathematical foundations
- [[MOC - Computer Science]] - Computational physics

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Physics").length`** individual notes with the `#Topic/Physics` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Physics
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Physics"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Physics]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Physics"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
