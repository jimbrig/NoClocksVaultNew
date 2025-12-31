---
creation_date: 2025-12-20
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for R programming language and ecosystem
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/R
aliases:
  - R Map of Content
  - R Programming
  - R Language
  - R Development
publish: true
---

# MOC - R

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **R** - a programming language for statistical computing and graphics.

## Core Areas

### Language Fundamentals
- Base R programming
- Tidyverse ecosystem
- Functional programming with purrr

### Package Development
- R package structure
- roxygen2 documentation
- Testing with testthat
- CRAN/GitHub distribution

### Data Science
- Data manipulation (dplyr, tidyr)
- Visualization (ggplot2)
- Statistical modeling

### Web Applications
- Shiny applications (see [[MOC - R Shiny]])
- Plumber APIs
- htmlwidgets

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Development]] - Software development practices
- [[MOC - Data Science]] - Data analysis context

### Child/Specialized MOCs
- [[MOC - R Shiny]] - Shiny web applications
- [[MOC - Geospatial]] - R spatial packages (sf, terra, leaflet)

### Sibling MOCs (Same Level)
- [[MOC - Python]] - Alternative for data science
- [[MOC - Statistics]] - Statistical methods

### Domain MOCs
- [[MOC - Actuarial Science]] - Actuarial applications in R
- [[MOC - Data Engineering]] - R in data pipelines (targets, arrow)

## Guides

| Guide | Description |
|-------|-------------|
| [[Guide - R Coding Conventions]] | R style guide and best practices |
| [[Guide - R Shiny App Package]] | Structuring Shiny apps as packages |
| [[Guide - R httr2 API Client Package]] | Building API client packages |

## Lists

| List | Description |
|------|-------------|
| [[List - R Geospatial Packages]] | Spatial analysis packages |
| [[List - R Shiny Ecosystem]] | Shiny ecosystem tools |

## Code Snippets

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location"
FROM "04-RESOURCES/Code/R"
AND -"CHANGELOG"
AND -"_README"
SORT file.name ASC
LIMIT 15
```

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/R").length`** individual notes with the `#Topic/R` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/R
AND -"CHANGELOG"
AND -"03-AREAS/MOC - R"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-20]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - R]] AND -"CHANGELOG" AND -"03-AREAS/MOC - R"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
