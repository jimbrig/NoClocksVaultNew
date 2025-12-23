---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A columnar storage file format optimized for big data processing and analytics.
tags:
  - Status/Complete
  - Topic/DataEngineering
  - Type/Definition
  - Type/FileFormat
aliases:
  - Parquet
  - Apache Parquet
---

# Parquet

```table-of-contents
```

## Overview

**Parquet** is a columnar storage file format optimized for use with big data processing frameworks, allowing for efficient storage and retrieval of large datasets. Developed by Apache, Parquet is designed for complex nested data structures and provides excellent compression and encoding schemes.

## Key Concepts

**Columnar storage** organizes data by column rather than row for efficient analytics.
**Row groups** divide data into horizontal partitions for parallel processing.
**Column chunks** are portions of a column within a row group.
**Encoding** uses specialized algorithms per data type (dictionary, RLE, delta).
**Compression** applies codecs (Snappy, Gzip, ZSTD) to column chunks.
**Schema** defines data types and nested structure using a definition.

## Advantages

| Advantage | Description |
|-----------|-------------|
| Compression | 3-10x smaller than CSV |
| Column pruning | Read only needed columns |
| Predicate pushdown | Filter data during read |
| Type preservation | Maintains data types |
| Nested data | Supports complex structures |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[GeoParquet]]
- [[Database Management System (DBMS)]]

### Backlinks

```dataview
LIST FROM [[Parquet]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Parquet"
```

