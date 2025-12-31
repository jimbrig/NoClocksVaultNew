---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Database technologies and data storage
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Databases
  - Topic/Data
aliases:
  - Databases Map of Content
  - Database
  - SQL
  - NoSQL
  - MOC - Databases
publish: true
---

# MOC - Databases

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Databases** - systems for storing, retrieving, and managing structured data.

## Database Types

### Relational (SQL)
- PostgreSQL, MySQL, SQL Server
- Query optimization
- Schema design and normalization

### NoSQL
- Document stores (MongoDB)
- Key-value stores (Redis)
- Graph databases (Neo4j)

### Cloud Databases
- Managed database services
- Serverless databases
- Multi-region replication

### Concepts
- ACID properties
- Indexing strategies
- Connection pooling

## Related MOCs

- [[MOC - Data Engineering]] - Data pipelines
- [[MOC - Cloud]] - Managed services
- [[MOC - Development]] - Application integration
- [[MOC - R]] - Database connectivity in R

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Databases").length`** individual notes with the `#Topic/Databases` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Databases
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Databases"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Databases]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Databases"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
