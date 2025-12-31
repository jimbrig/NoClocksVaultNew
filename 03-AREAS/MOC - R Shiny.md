---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for R Shiny web application development
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/R
  - Topic/Shiny
  - Topic/WebDev
aliases:
  - R Shiny Map of Content
  - Shiny
  - R Shiny
  - Shiny Apps
  - MOC - R Shiny
  - MOC - Shiny
publish: true
---

# MOC - R Shiny

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **R Shiny** - the web application framework for R.

## Core Areas

### UI Development
- bslib layouts and themes
- shiny inputs and outputs
- Custom CSS styling

### Server Logic
- Reactive programming
- Module patterns
- Database integration

### Deployment
- shinyapps.io
- Posit Connect
- Docker containers

### Best Practices
- Code organization
- Testing strategies
- Performance optimization

## Related MOCs

### Parent MOCs
- [[MOC - R]] - R programming language (parent)
- [[MOC - Web Development]] - Web technologies context

### Sibling MOCs (Same Level)
- [[MOC - Databases]] - Database connectivity
- [[MOC - Data Science]] - Data visualization apps

### Related Technologies
- [[MOC - Cloud]] - Deployment (shinyapps.io, Posit Connect)
- [[MOC - Geospatial]] - Interactive mapping apps (leaflet, mapgl)

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/R Shiny").length`** individual notes with the `#Topic/R Shiny` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/R Shiny
AND -"CHANGELOG"
AND -"03-AREAS/MOC - R Shiny"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - R Shiny]] AND -"CHANGELOG" AND -"03-AREAS/MOC - R Shiny"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
