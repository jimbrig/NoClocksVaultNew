---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Data Engineering - building data systems at scale
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Data
  - Topic/DataEngineering
aliases:
  - Data Engineering Map of Content
  - DataEngineering
  - Data Engineering
  - MOC - DataEngineering
  - Data Pipelines
  - ETL
publish: true
---

# MOC - Data Engineering

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Data Engineering** - building systems for collecting, storing, and analyzing data at scale.

## Core Areas

### Data Pipelines
- ETL/ELT processes
- Workflow orchestration (Airflow, Prefect)
- Stream processing

### Data Storage
- Data warehouses and lakes
- Distributed storage systems
- Data formats (Parquet, Avro)

### Infrastructure
- Container orchestration
- Infrastructure as Code
- Monitoring and observability

### Data Quality
- Data validation
- Testing pipelines
- Documentation and lineage

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Computer Science]] - Theoretical foundations
- [[MOC - Development]] - Software engineering context

### Sibling MOCs (Same Level)
- [[MOC - Data Science]] - Analytics and ML that consume pipelines
- [[MOC - Databases]] - Storage layer technologies
- [[MOC - Cloud]] - Infrastructure and managed services

### Child/Specialized MOCs
- [[MOC - Geospatial]] - Spatial data engineering

### Language-Specific MOCs
- [[MOC - Python]] - Primary data engineering language (Airflow, dbt, Polars)
- [[MOC - R]] - Analytics and pipeline integration (targets, arrow)

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Data Engineering").length`** individual notes with the `#Topic/Data Engineering` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Data Engineering
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Data Engineering"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Data Engineering]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Data Engineering"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
