---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Guide to selecting appropriate geospatial file formats for different use cases
tags:
  - Status/Complete
  - Type/Guide
  - Topic/GIS
  - Topic/DataEngineering
aliases:
  - GIS File Format Guide
  - Geospatial Format Selection
publish: true
---

# Guide - Geospatial File Format Selection
## Overview

Selecting the right geospatial file format depends on your use case: web display, analysis, archival, or data exchange. This guide helps you choose the optimal format for your needs.

## Quick Decision Matrix

### Vector Data

| Use Case | Recommended Format | Alternatives |
|----------|-------------------|--------------|
| Web mapping | GeoJSON, FlatGeobuf | TopoJSON |
| Database storage | PostGIS, GeoPackage | - |
| Data exchange | GeoPackage, GeoJSON | Shapefile |
| Analytical processing | GeoParquet, GeoPackage | - |
| Archival | GeoPackage | GeoJSON |
| ArcGIS workflows | File Geodatabase | Shapefile |

### Raster Data

| Use Case | Recommended Format | Alternatives |
|----------|-------------------|--------------|
| Cloud storage | Cloud Optimized GeoTIFF (COG) | - |
| Local analysis | GeoTIFF | - |
| Web display | COG, Tiles (PNG/JPEG) | - |
| Multi-dimensional | NetCDF, Zarr | HDF5 |
| Data exchange | GeoTIFF | - |

### Tile Archives

| Use Case | Recommended Format |
|----------|-------------------|
| Vector tiles | PMTiles, MBTiles |
| Raster tiles | PMTiles, MBTiles |
| Self-hosted | PMTiles (no server needed) |

---

## Vector Formats

### GeoJSON

**Best for:** Web applications, API responses, data exchange

| Aspect | Details |
|--------|---------|
| **Format** | JSON with geometry |
| **Size** | Larger (text-based) |
| **Streaming** | Not natively |
| **CRS** | WGS84 (EPSG:4326) only per spec |

```json
{
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [-122.4, 37.8]
  },
  "properties": {
    "name": "San Francisco"
  }
}
```

### GeoPackage

**Best for:** Desktop GIS, data exchange, archival

| Aspect | Details |
|--------|---------|
| **Format** | SQLite database |
| **Size** | Compact |
| **Features** | Vector + raster, multiple CRS |
| **Standard** | OGC official |

### GeoParquet

**Best for:** Cloud analytics, big data, columnar queries

| Aspect | Details |
|--------|---------|
| **Format** | Apache Parquet with geometry |
| **Size** | Highly compressed |
| **Streaming** | Yes (row groups) |
| **Best With** | DuckDB, Spark, Arrow |

### FlatGeobuf

**Best for:** Web streaming, fast random access

| Aspect | Details |
|--------|---------|
| **Format** | Binary, seekable |
| **Size** | Compact |
| **Streaming** | Yes (HTTP range requests) |
| **Best With** | MapLibre, Leaflet |

### Shapefile (Legacy)

**Best for:** Legacy compatibility only

| Aspect | Details |
|--------|---------|
| **Limitations** | 2GB max, 10-char field names, no NULL, single geometry type |
| **Recommendation** | Migrate to GeoPackage |

---

## Raster Formats

### Cloud Optimized GeoTIFF (COG)

**Best for:** Cloud storage, web access, remote sensing

| Aspect | Details |
|--------|---------|
| **Format** | GeoTIFF with internal tiles and overviews |
| **Access** | HTTP range requests |
| **Best With** | STAC catalogs, cloud storage |

### NetCDF / Zarr

**Best for:** Multi-dimensional data (climate, oceanography)

| Aspect | Details |
|--------|---------|
| **NetCDF** | Mature, widespread support |
| **Zarr** | Cloud-native, chunked arrays |
| **Dimensions** | Time, depth, bands, etc. |

---

## Tile Formats

### PMTiles

**Best for:** Serverless tile hosting

| Aspect | Details |
|--------|---------|
| **Format** | Single-file tile archive |
| **Hosting** | Static file hosting (S3, CloudFlare) |
| **Types** | Vector (MVT) and raster |

### MBTiles

**Best for:** Tile archives with server

| Aspect | Details |
|--------|---------|
| **Format** | SQLite container |
| **Server** | Requires tile server |

### Mapbox Vector Tiles (MVT)

**Best for:** Web map rendering

| Aspect | Details |
|--------|---------|
| **Format** | Protocol Buffers |
| **Standard** | OGC Community Standard |
| **Best With** | MapLibre, Mapbox |

---

## Format Conversion

### Using GDAL/OGR

```bash
# shapefile to geopackage
ogr2ogr -f GPKG output.gpkg input.shp

# geojson to geoparquet
ogr2ogr -f Parquet output.parquet input.geojson

# geotiff to cog
gdal_translate -of COG input.tif output_cog.tif
```

### Using R

```r
library(sf)

# read shapefile, write geopackage
sf::st_read("input.shp") |>
  sf::st_write("output.gpkg")

# read, write geoparquet
sfarrow::st_read_parquet("input.parquet") |>
  sfarrow::st_write_parquet("output.parquet")
```

### Using Python

```python
import geopandas as gpd

# read shapefile, write geoparquet
gdf = gpd.read_file("input.shp")
gdf.to_parquet("output.parquet")
```

---

## Format Comparison

| Format | Type | Size | Streaming | Cloud-Native | Standard |
|--------|------|------|-----------|--------------|----------|
| GeoJSON | Vector | Large | No | No | IETF RFC |
| GeoPackage | Vector/Raster | Medium | No | No | OGC |
| GeoParquet | Vector | Small | Yes | Yes | Community |
| FlatGeobuf | Vector | Small | Yes | Yes | Community |
| Shapefile | Vector | Medium | No | No | De facto |
| COG | Raster | Medium | Yes | Yes | OGC |
| PMTiles | Tiles | Small | Yes | Yes | Community |

---

## Notes

- **Default choice for vector:** GeoPackage (most compatible)
- **Cloud analytics:** GeoParquet with DuckDB
- **Web streaming:** FlatGeobuf or PMTiles
- **Raster in cloud:** Always use COG
- **Avoid Shapefile** for new projects

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [GeoJSON](GeoJSON.md)
- [GeoPackage](GeoPackage.md)
- [GeoParquet](GeoParquet.md)
- [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md)
- [PMTiles](PMTiles.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

