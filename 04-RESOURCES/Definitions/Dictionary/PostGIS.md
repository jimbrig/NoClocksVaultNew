---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Spatial database extension for PostgreSQL providing geographic object support
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
  - Topic/Database
aliases:
  - PostGIS
  - PostgreSQL GIS
publish: true
---

# PostGIS
## Overview

**PostGIS** is an open-source spatial database extender for [PostgreSQL](PostgreSQL.md). It adds support for geographic objects, allowing location queries to be run in SQL. PostGIS is the most widely used spatial database extension and forms the foundation of many enterprise GIS systems.

## Key Features

| Feature | Description |
|---------|-------------|
| **Geometry Types** | Points, lines, polygons, multipolygons, geometry collections |
| **Geography Types** | Geodetic calculations on the spheroid |
| **Spatial Indexing** | GiST (R-tree) indexes for fast spatial queries |
| **3000+ Functions** | Spatial analysis, measurement, transformation |
| **Standards Compliance** | OGC Simple Features, SQL/MM Spatial |
| **Raster Support** | Via `postgis_raster` extension |

## Core Extensions

| Extension | Description |
|-----------|-------------|
| `postgis` | Core geometry and geography types |
| `postgis_topology` | Topological data model support |
| `postgis_raster` | Raster data type and functions |
| `postgis_sfcgal` | 3D geometry operations |
| `postgis_tiger_geocoder` | US Census TIGER geocoding |
| `address_standardizer` | Address parsing and normalization |

## Common Spatial Functions

### Measurement

```sql
-- distance between two points (in meters for geography)
SELECT ST_Distance(
  ST_GeogFromText('POINT(-122.4 37.8)'),
  ST_GeogFromText('POINT(-118.2 34.0)')
);

-- area of polygon (in square meters)
SELECT ST_Area(geom::geography) FROM parcels;
```

### Spatial Relationships

```sql
-- find parcels within a polygon
SELECT * FROM parcels
WHERE ST_Within(geom, ST_GeomFromGeoJSON('{"type":"Polygon",...}'));

-- find intersecting features
SELECT a.*, b.name 
FROM parcels a, flood_zones b
WHERE ST_Intersects(a.geom, b.geom);
```

### Transformation

```sql
-- reproject from WGS84 to Web Mercator
SELECT ST_Transform(geom, 3857) FROM parcels;

-- simplify geometry
SELECT ST_Simplify(geom, 0.0001) FROM boundaries;
```

## Spatial Indexing

Create a GiST index for fast spatial queries:

```sql
CREATE INDEX idx_parcels_geom ON parcels USING GIST (geom);

-- for geography columns
CREATE INDEX idx_points_geog ON locations USING GIST (geog);
```

## Data Import/Export

### Using ogr2ogr

```bash
# import shapefile
ogr2ogr -f "PostgreSQL" PG:"host=localhost dbname=gis" input.shp

# import geojson
ogr2ogr -f "PostgreSQL" PG:"host=localhost dbname=gis" input.geojson

# export to geopackage
ogr2ogr -f "GPKG" output.gpkg PG:"host=localhost dbname=gis" parcels
```

### Using shp2pgsql

```bash
shp2pgsql -s 4326 -I input.shp public.parcels | psql -d gis
```

## Related Tools

| Tool | Description |
|------|-------------|
| [pg_tileserv](pg_tileserv.md) | Vector tile server for PostGIS |
| [pg_featureserv](pg_featureserv.md) | OGC API Features server |
| [PostgREST](PostgREST.md) | REST API for PostgreSQL |
| [pgAdmin](pgAdmin.md) | Database administration GUI |
| [DBeaver](DBeaver.md) | Universal database client |

## Cloud Providers

| Provider | Description |
|----------|-------------|
| Supabase | PostgreSQL + PostGIS as a service |
| Neon | Serverless PostgreSQL with PostGIS |
| Crunchy Data | Enterprise PostgreSQL |
| AWS RDS | Managed PostgreSQL |
| Azure Database | Microsoft managed PostgreSQL |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - Spatial Databases](List - Spatial Databases.md)
- [PostgreSQL](PostgreSQL.md)
- [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

