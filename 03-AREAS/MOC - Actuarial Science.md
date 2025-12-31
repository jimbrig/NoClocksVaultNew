---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description:
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Actuarial Science
aliases:
  - Actuarial Science Map of Content
publish: true
---

# MOC - Actuarial Science

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Actuarial Science** - the discipline of assessing risk using mathematics and statistics.

## Core Areas

### Risk Assessment
- Probability models
- Loss distributions
- Risk metrics

### Insurance Mathematics
- Pricing and reserving
- Life contingencies
- Property and casualty

### Financial Mathematics
- Interest theory
- Investments
- Pension valuations

### Professional Exams
- SOA/CAS exams
- Study materials
- Exam preparation

## Related MOCs

- [[MOC - Statistics]] - Statistical foundations
- [[MOC - Mathematics]] - Mathematical foundations
- [[MOC - Finance]] - Financial applications
- [[MOC - R]] - Actuarial computing in R

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Actuarial Science").length`** individual notes with the `#Topic/Actuarial Science` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Actuarial Science
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Actuarial Science"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Actuarial Science]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Actuarial Science"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
