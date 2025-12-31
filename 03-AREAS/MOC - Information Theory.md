---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Information Theory - the mathematical study of information
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/InformationTheory
  - Topic/Physics
aliases:
  - Information Theory Map of Content
  - Information Theory
  - Shannon Theory
  - MOC - Information Theory
publish: true
---

# MOC - Information Theory

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Information Theory** - the mathematical study of quantification, storage, and communication of information, founded by Claude Shannon.

## Core Concepts

Information theory bridges multiple domains of physics and provides the mathematical foundation for:
- Digital communication and data compression
- Cryptography and error correction
- Computational limits and quantum information
- Thermodynamic connections (entropy)

### Key Figures
- **Claude Shannon** - Founded the field with his 1948 paper
- **John Wheeler** - "It from Bit" philosophy connecting information to physics
- **Jacob Bekenstein** - Information limits in bounded regions
- **Rolf Landauer** - Thermodynamic cost of computation

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Physics]] - Physical foundations of information
- [[MOC - Mathematics]] - Mathematical foundations

### Sibling MOCs (Same Level)
- [[MOC - Computer Science]] - Computational applications
- [[MOC - Philosophy]] - Ontological implications (consciousness, "It from Bit")

### Applications
- [[MOC - Data Science]] - Applied information concepts
- [[MOC - Artificial Intelligence]] - AI/ML theory

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Information Theory").length`** individual notes with the `#Topic/Information Theory` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Information Theory
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Information Theory"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Information Theory]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Information Theory"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
