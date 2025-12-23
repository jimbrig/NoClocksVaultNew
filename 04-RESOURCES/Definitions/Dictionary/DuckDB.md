---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: In-process analytical database with spatial extension support
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
  - Topic/Database
aliases:
  - DuckDB
  - DuckDB Spatial
publish: true
---

# DuckDB

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

**DuckDB** is an in-process SQL OLAP database management system designed for analytical workloads. With its spatial extension, DuckDB provides powerful geospatial capabilities including native support for [[GeoParquet]], making it ideal for cloud-native geospatial analytics.

## Key Features

| Feature | Description |
|---------|-------------|
| **In-Process** | Runs embedded in your application |
| **Columnar Storage** | Optimized for analytical queries |
| **Zero Dependencies** | Single binary, no server |
| **Spatial Extension** | Full geometry support |
| **Parquet Native** | Direct query of Parquet files |
| **Arrow Integration** | Zero-copy data exchange |

## Spatial Extension

Install and load the spatial extension:

```sql
INSTALL spatial;
LOAD spatial;
```

### Supported Formats

| Format | Read | Write |
|--------|------|-------|
| GeoParquet | Yes | Yes |
| Shapefile | Yes | No |
| GeoJSON | Yes | Yes |
| GeoJSONSeq | Yes | Yes |
| FlatGeobuf | Yes | No |

## Usage Examples

### Query GeoParquet

```sql
-- read local geoparquet
SELECT * FROM read_parquet('parcels.parquet');

-- read remote geoparquet
SELECT * FROM read_parquet('s3://bucket/data.parquet');

-- spatial filter with bbox
SELECT * FROM read_parquet('parcels.parquet')
WHERE ST_Intersects(
  geometry,
  ST_MakeEnvelope(-122.5, 37.7, -122.3, 37.9)
);
```

### Spatial Operations

```sql
-- calculate area
SELECT ST_Area(geometry) as area FROM parcels;

-- buffer features
SELECT ST_Buffer(geometry, 100) as buffered FROM points;

-- spatial join
SELECT a.*, b.flood_zone
FROM parcels a, flood_zones b
WHERE ST_Intersects(a.geometry, b.geometry);
```

### Query Overture Maps

```sql
-- query overture buildings
SELECT *
FROM read_parquet('s3://overturemaps-us-west-2/release/2024-*/theme=buildings/*')
WHERE bbox.xmin > -122.5 AND bbox.xmax < -122.3
  AND bbox.ymin > 37.7 AND bbox.ymax < 37.9;
```

## Integration

### R

```r
library(duckdb)
library(sf)

con <- duckdb::dbConnect(duckdb::duckdb())
duckdb::dbExecute(con, "INSTALL spatial; LOAD spatial;")

# query parquet and convert to sf
result <- duckdb::dbGetQuery(con, "
  SELECT * FROM read_parquet('parcels.parquet')
  WHERE ST_Area(geometry) > 10000
")

# convert to sf object
sf_result <- sf::st_as_sf(result, wkt = "geometry")
```
### Python

```python
import duckdb

con = duckdb.connect()
con.execute("INSTALL spatial; LOAD spatial;")

# query to geopandas
gdf = con.execute("""
    SELECT * FROM read_parquet('parcels.parquet')
    WHERE ST_Area(geometry) > 10000
""").fetch_df()
```

### CLI

```bash
duckdb -c "INSTALL spatial; LOAD spatial;"
duckdb -c "SELECT COUNT(*) FROM read_parquet('data.parquet');"
```

## Comparison

| Database | Type | Spatial | Best For |
|----------|------|---------|----------|
| DuckDB | Embedded OLAP | Extension | Analytics, Parquet |
| [[PostGIS]] | Server OLTP/OLAP | Native | Production, CRUD |
| SQLite/SpatiaLite | Embedded | Extension | Mobile, simple |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [[MOC - GIS]]
- [[List - Spatial Databases]]
- [[GeoParquet]]
- [[Apache Arrow]]

### Backlinks

```dataview
LIST FROM [[DuckDB]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Dictionary/DuckDB"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

