---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Web Development - frontend, backend, and full-stack
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Web
  - Topic/WebDev
aliases:
  - Web Development Map of Content
  - Web Dev
  - WebDev
  - Frontend Development
  - Backend Development
  - Full Stack
  - MOC - Web Development
publish: true
---

# MOC - Web Development

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Web Development** - building applications for the web.

## Core Areas

### Frontend
- HTML, CSS, JavaScript
- React, Vue, Svelte
- CSS frameworks (Tailwind)

### Backend
- API design
- Authentication
- Server frameworks

### Full Stack
- Next.js, Nuxt.js
- Database integration
- Deployment

### DevOps
- CI/CD pipelines
- Containerization
- Hosting platforms

## Related MOCs

- [[MOC - JavaScript]] - Primary language
- [[MOC - Design]] - UI/UX design
- [[MOC - Development]] - General programming
- [[MOC - Cloud]] - Deployment

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Web Development").length`** individual notes with the `#Topic/Web Development` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Web Development
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Web Development"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Web Development]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Web Development"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
