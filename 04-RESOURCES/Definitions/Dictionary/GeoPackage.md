---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: OGC standard for storing geospatial data in a SQLite database container
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
aliases:
  - GeoPackage
  - GPKG
  - .gpkg
publish: true
---

# GeoPackage
## Overview

**GeoPackage** (`.gpkg`) is an [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md) standard for storing geospatial information in a self-contained SQLite database. It supports both vector features and raster tile data in a single portable file, making it the modern replacement for [Shapefile](Shapefile.md).

## Key Features

| Feature | Description |
|---------|-------------|
| **Single File** | All data in one `.gpkg` file |
| **SQLite-based** | Standard SQL queries work |
| **Vector + Raster** | Supports both data types |
| **No Size Limit** | Unlike 2GB Shapefile limit |
| **Full Field Names** | No 10-character limit |
| **Multiple CRS** | Different projections per layer |
| **Null Values** | Proper NULL support |

## Advantages Over Shapefile

| Aspect | GeoPackage | Shapefile |
|--------|------------|-----------|
| File count | 1 | 3-7+ |
| Size limit | None | 2 GB |
| Field names | 128 chars | 10 chars |
| Geometry types | Multiple per layer | Single |
| Coordinate systems | Multiple | Single |
| NULL values | Yes | No |
| Date/time fields | Yes | Limited |

## Structure

GeoPackage contains standard SQLite tables:

| Table | Description |
|-------|-------------|
| `gpkg_contents` | Catalog of contents |
| `gpkg_spatial_ref_sys` | Coordinate reference systems |
| `gpkg_geometry_columns` | Geometry column metadata |
| `gpkg_tile_matrix` | Tile matrix definitions |
| `gpkg_tile_matrix_set` | Tile extent and CRS |

## Usage Examples

### GDAL/OGR

```bash
# convert shapefile to geopackage
ogr2ogr -f GPKG output.gpkg input.shp

# convert multiple shapefiles to layers
ogr2ogr -f GPKG output.gpkg input1.shp
ogr2ogr -f GPKG -update output.gpkg input2.shp

# query with SQL
ogrinfo output.gpkg -sql "SELECT * FROM layer WHERE area > 1000"
```

### R

```r
library(sf)

# read geopackage
parcels <- sf::st_read("data.gpkg", layer = "parcels")

# write geopackage
sf::st_write(parcels, "output.gpkg", layer = "parcels")

# list layers
sf::st_layers("data.gpkg")
```

### Python

```python
import geopandas as gpd

# read
gdf = gpd.read_file("data.gpkg", layer="parcels")

# write
gdf.to_file("output.gpkg", layer="parcels", driver="GPKG")
```

### SQLite Direct Access

```sql
-- connect with sqlite3 and load spatialite
.load mod_spatialite

-- query features
SELECT * FROM parcels WHERE ST_Area(geom) > 10000;
```

## When to Use

**Choose GeoPackage when:**
- Desktop GIS workflows (QGIS, ArcGIS)
- Data exchange between systems
- Archival storage
- Need multiple layers in one file
- Replacing Shapefiles

**Consider alternatives when:**
- Cloud analytics → [GeoParquet](GeoParquet.md)
- Web streaming → [FlatGeobuf](FlatGeobuf.md)
- Simple web API → [GeoJSON](GeoJSON.md)

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [Guide - Geospatial File Format Selection](Guide - Geospatial File Format Selection.md)
- [Shapefile](Shapefile.md)
- [GeoJSON](GeoJSON.md)
- [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

