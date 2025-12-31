---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Statistics and Probability
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Statistics
  - Topic/Probability
aliases:
  - Statistics Map of Content
  - Statistics
  - Statistical Analysis
  - Probability
  - MOC - Statistics
publish: true
---

# MOC - Statistics

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Statistics** - the science of collecting, analyzing, and interpreting data.

## Core Areas

### Descriptive Statistics
- Measures of central tendency and dispersion
- Data visualization
- Exploratory data analysis

### Inferential Statistics
- Hypothesis testing
- Confidence intervals
- Regression and correlation

### Probability Theory
- Probability distributions
- Bayesian inference
- Stochastic processes

### Applied Statistics
- Actuarial science
- Biostatistics
- Econometrics

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Mathematics]] - Mathematical foundations

### Child/Specialized MOCs
- [[MOC - Actuarial Science]] - Insurance and risk mathematics

### Sibling MOCs (Same Level)
- [[MOC - Data Science]] - Applied statistics
- [[MOC - Information Theory]] - Theoretical connections

### Language-Specific MOCs
- [[MOC - R]] - Statistical computing in R
- [[MOC - Python]] - Python statistics (scipy, statsmodels)

### Domain Applications
- [[MOC - Finance]] - Financial statistics
- [[MOC - Geospatial]] - Geostatistics and spatial analysis

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Statistics").length`** individual notes with the `#Topic/Statistics` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Statistics
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Statistics"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Statistics]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Statistics"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
