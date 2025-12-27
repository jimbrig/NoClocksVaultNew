---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Spatial databases and geospatial data storage solutions
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
  - Topic/Database
aliases:
  - Spatial Databases
  - Geospatial Databases
  - GIS Databases
publish: true
---

# List - Spatial Databases
## Overview

Curated collection of **spatial databases and geospatial data storage solutions** for managing and querying geographic data.

## Relational Spatial Databases

### PostGIS (PostgreSQL)

The leading open-source spatial database extension for PostgreSQL.

| Aspect | Details |
|--------|---------|
| **Website** | [postgis.net](https://postgis.net) |
| **GitHub** | [postgis/postgis](https://github.com/postgis/postgis) |
| **Type** | PostgreSQL extension |
| **Features** | Vector/raster support, spatial indexing (R-tree), 3000+ functions |
| **Standards** | OGC Simple Features, ISO SQL/MM Spatial |

**Key Extensions:**

| Extension | Description |
|-----------|-------------|
| postgis_topology | Topological data management |
| postgis_raster | Raster data support |
| postgis_tiger_geocoder | US Census geocoding |
| pgrouting | Network routing algorithms |
| h3_postgis | Uber H3 hexagonal indexing |

### SpatiaLite (SQLite)

Lightweight spatial extension for SQLite.

| Aspect | Details |
|--------|---------|
| **Website** | [gaia-gis.it/fossil/libspatialite](https://www.gaia-gis.it/fossil/libspatialite) |
| **Type** | SQLite extension |
| **Best For** | Mobile apps, embedded systems, single-file databases |
| **Standards** | OGC Simple Features |

### Oracle Spatial

Enterprise spatial capabilities for Oracle Database.

| Aspect | Details |
|--------|---------|
| **Website** | [oracle.com/database/spatial](https://www.oracle.com/database/spatial/) |
| **Type** | Oracle Database option |
| **Best For** | Enterprise GIS, large-scale deployments |

### Microsoft SQL Server Spatial

Built-in spatial support in SQL Server.

| Aspect | Details |
|--------|---------|
| **Type** | Built-in SQL Server types |
| **Data Types** | geometry (planar), geography (geodetic) |
| **Best For** | Microsoft ecosystem integration |

## Cloud Spatial Databases

| Platform | Description | Links |
|----------|-------------|-------|
| Supabase | PostgreSQL + PostGIS as a service | [Website](https://supabase.com) |
| Neon | Serverless PostgreSQL with PostGIS | [Website](https://neon.tech) |
| Amazon Aurora PostgreSQL | AWS managed PostgreSQL with PostGIS | [Docs](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraPostgreSQLReleaseNotes/) |
| Google Cloud SQL | Managed PostgreSQL with PostGIS | [Docs](https://cloud.google.com/sql/docs/postgres) |
| Azure Database for PostgreSQL | Microsoft managed PostgreSQL | [Docs](https://azure.microsoft.com/products/postgresql/) |
| Crunchy Data | Enterprise PostgreSQL + PostGIS | [Website](https://crunchydata.com) |

## Analytical Spatial Engines

### DuckDB Spatial

In-process analytical database with spatial extension.

| Aspect | Details |
|--------|---------|
| **Website** | [duckdb.org](https://duckdb.org) |
| **GitHub** | [duckdb/duckdb-spatial](https://github.com/duckdb/duckdb-spatial) |
| **Best For** | Analytical queries, GeoParquet, local analysis |
| **Features** | Fast columnar processing, integrates with Arrow |

### Apache Sedona (GeoSpark)

Cluster computing for big spatial data.

| Aspect | Details |
|--------|---------|
| **Website** | [sedona.apache.org](https://sedona.apache.org) |
| **Best For** | Distributed spatial processing on Spark |
| **Features** | Spatial SQL, ML integration, GeoParquet support |

## Spatial Indexing Systems

### Uber H3

Hexagonal hierarchical geospatial indexing.

| Aspect | Details |
|--------|---------|
| **Website** | [h3geo.org](https://h3geo.org) |
| **GitHub** | [uber/h3](https://github.com/uber/h3) |
| **Best For** | Spatial aggregation, equal-area analysis |
| **Integrations** | PostGIS, DuckDB, BigQuery, Databricks |

### Google S2

Spherical geometry library with hierarchical spatial indexing.

| Aspect | Details |
|--------|---------|
| **GitHub** | [google/s2geometry](https://github.com/google/s2geometry) |
| **Best For** | Geodetic indexing, point-in-polygon queries |
| **Users** | Google Maps, BigQuery |

### Geohash

Base32 encoding of geographic coordinates.

| Aspect | Details |
|--------|---------|
| **Best For** | Simple proximity queries, caching |
| **Features** | Human-readable, variable precision |

## Document & Specialized Databases

| Database | Description | Links |
|----------|-------------|-------|
| MongoDB Geospatial | 2dsphere and 2d indexes for geospatial queries | [Docs](https://docs.mongodb.com/manual/geospatial-queries/) |
| Elasticsearch | Geospatial queries with geo_point and geo_shape | [Docs](https://www.elastic.co/guide/en/elasticsearch/reference/current/geo-queries.html) |
| Redis | Geo commands for location-based features | [Docs](https://redis.io/commands/?group=geo) |
| Tile38 | In-memory geospatial database and geofencing | [Website](https://tile38.com) |

## File-Based Spatial Formats

| Format | Description | Links |
|--------|-------------|-------|
| GeoPackage | SQLite-based OGC standard container | [GeoPackage](GeoPackage.md) |
| GeoParquet | Columnar format for geospatial analytics | [GeoParquet](GeoParquet.md) |
| FlatGeobuf | Streaming binary format | [Website](https://flatgeobuf.org) |
| PMTiles | Single-file vector tile archive | [PMTiles](PMTiles.md) |

## Notes

- **PostGIS** remains the gold standard for spatial SQL operations
- **DuckDB Spatial** is excellent for analytical workflows with GeoParquet
- **H3** provides consistent hexagonal cells for spatial aggregation
- Consider cloud-hosted PostgreSQL (Supabase, Neon) for managed solutions

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - R Geospatial Packages](List - R Geospatial Packages.md)
- [Hexagonal Hierarchical Spatial Index (H3)](Hexagonal Hierarchical Spatial Index (H3).md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

