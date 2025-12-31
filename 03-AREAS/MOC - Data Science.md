---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Data Science and Analytics
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/DataScience
  - Topic/Analytics
aliases:
  - Data Science Map of Content
  - Data Science
  - Analytics
  - Data Analytics
  - MOC - Data Science
publish: true
---

# MOC - Data Science

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Data Science** - the interdisciplinary field using scientific methods to extract insights from data.

## Core Areas

### Data Analysis
- Exploratory data analysis
- Statistical inference
- Visualization

### Machine Learning
- Supervised and unsupervised learning
- Deep learning and neural networks
- Model evaluation and deployment

### Data Engineering
- Data pipelines and ETL
- Database management
- Big data processing

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Computer Science]] - Computational foundations
- [[MOC - Statistics]] - Statistical foundations

### Sibling MOCs (Same Level)
- [[MOC - Data Engineering]] - Data infrastructure
- [[MOC - Artificial Intelligence]] - AI/ML applications

### Language-Specific MOCs
- [[MOC - R]] - R for statistical computing
- [[MOC - Python]] - Python for data science

### Domain Applications
- [[MOC - Geospatial]] - Spatial data science
- [[MOC - Finance]] - Financial analytics
- [[MOC - Business]] - Business intelligence

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Data Science").length`** individual notes with the `#Topic/Data Science` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Data Science
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Data Science"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Data Science]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Data Science"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
