---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for JavaScript and TypeScript programming
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/JavaScript
  - Topic/TypeScript
aliases:
  - JavaScript Map of Content
  - JavaScript
  - JS
  - TypeScript
  - TS
  - Node.js
  - MOC - JavaScript
  - MOC - TypeScript
publish: true
---

# MOC - JavaScript

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **JavaScript** - the dynamic programming language for web development.

## Core Areas

### Language Fundamentals
- ES6+ features
- Async/await and Promises
- Modules and bundling

### Frontend Frameworks
- React, Vue, Angular
- Next.js, Nuxt.js
- State management

### Backend Development
- Node.js runtime
- Express, Fastify, Hono
- API development

### Tooling
- npm, pnpm, yarn
- TypeScript
- Testing frameworks

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Development]] - Software development context

### Child/Specialized MOCs
- [[MOC - Web Development]] - JavaScript for web

### Sibling MOCs (Same Level)
- [[MOC - Python]] - Alternative backend language
- [[MOC - R]] - Alternative for data analysis

### Domain Applications
- [[MOC - Geospatial]] - Web mapping (Leaflet, MapLibre, deck.gl)
- [[MOC - Data Science]] - Data visualization (D3.js, Observable)

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/JavaScript").length`** individual notes with the `#Topic/JavaScript` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/JavaScript
AND -"CHANGELOG"
AND -"03-AREAS/MOC - JavaScript"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - JavaScript]] AND -"CHANGELOG" AND -"03-AREAS/MOC - JavaScript"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
