---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Understanding when to use row-oriented vs columnar geospatial formats
tags:
  - Status/Complete
  - Type/Note
  - Topic/GIS
  - Topic/DataEngineering
aliases:
  - GeoJSON vs GeoParquet
  - Columnar Geospatial
publish: true
---

# Row vs Columnar Geospatial Formats

## The Core Trade-off

Geospatial formats fall into two categories with fundamentally different performance characteristics:

**Row-oriented** (GeoJSON, Shapefile, GeoPackage):
- Store complete features together
- Fast for reading individual features
- Slow for analytical queries across many features

**Columnar** (GeoParquet, FlatGeobuf):
- Store each attribute in contiguous blocks
- Fast for analytical queries (read only needed columns)
- Excellent compression (similar values together)
- Slower for single-feature access

## When Row-Oriented Wins

Choose [GeoJSON](GeoJSON.md) or GeoPackage when:
- **Human readability matters** - GeoJSON is self-documenting
- **Small datasets** (< 10MB) - overhead not worth it
- **Real-time feature serving** - need to return individual features quickly
- **Web interoperability** - browsers parse GeoJSON natively
- **Desktop GIS workflows** - QGIS, ArcGIS prefer these formats

## When Columnar Wins

Choose [GeoParquet](GeoParquet.md) when:
- **Large datasets** (> 100MB) - compression saves 50-80%
- **Analytical queries** - "average value where X > Y"
- **Cloud storage** - designed for S3/Azure Blob
- **Data warehousing** - integrates with DuckDB, Spark, BigQuery
- **Partial reads** - only load columns you need

## The Hybrid Approach

Modern architectures use both:
1. **Store** in GeoParquet for efficiency
2. **Serve** as GeoJSON for web compatibility
3. **Cache** vector tiles for mapping

## Streaming Formats

[FlatGeobuf](FlatGeobuf.md) offers a middle ground:
- Binary format (faster than JSON)
- Row-oriented (good for feature access)
- Supports HTTP range requests
- Optional spatial index for filtered reads

**Use FlatGeobuf when:**
- Need binary efficiency
- HTTP range request support needed
- Real-time streaming of features
- Medium datasets (10-500MB)

## See Also

- [Guide - Geospatial File Format Selection](Guide - Geospatial File Format Selection.md)
- [GeoParquet](GeoParquet.md)
- [GeoJSON](GeoJSON.md)
- [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md)
- [MOC - GIS](MOC - GIS.md)

## Backlinks
<!-- dynamic content -->
