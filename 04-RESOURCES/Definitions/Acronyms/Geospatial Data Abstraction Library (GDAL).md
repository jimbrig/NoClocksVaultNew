---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: An open-source library for reading and writing raster and vector geospatial data formats.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Development
  - Type/Definition
  - Type/Acronym
aliases:
  - Geospatial Data Abstraction Library
  - GDAL
  - OGR
---

# Geospatial Data Abstraction Library (GDAL)
## Overview

**Geospatial Data Abstraction Library (GDAL)** is an open-source library for reading and writing raster and vector geospatial data formats. GDAL provides a single abstract data model for raster data and another for vector data (historically called OGR), allowing applications to work with many different formats through a unified API.

## Key Concepts

**Driver** is a format-specific implementation that handles reading/writing a particular file format.
**Dataset** represents a collection of raster bands or vector layers from a single source.
**Raster band** is a single channel of raster data (e.g., red, green, blue, elevation).
**OGR** is the vector data component of GDAL, providing access to vector formats.
**Virtual Raster (VRT)** is an XML format that describes a virtual dataset composed of other datasets.
**Warping** is the process of reprojecting and resampling raster data to different coordinate systems.

## Common Command-Line Tools

| Tool | Purpose |
|------|---------|
| `gdalinfo` | Display raster metadata |
| `ogrinfo` | Display vector metadata |
| `gdal_translate` | Convert raster formats |
| `ogr2ogr` | Convert vector formats |
| `gdalwarp` | Reproject and mosaic rasters |
| `gdal_rasterize` | Convert vector to raster |

## Supported Formats

GDAL supports 200+ raster and vector formats including:
- Raster: [GeoTIFF](GeoTIFF.md), [COG](Cloud Optimized GeoTIFF (COG).md), NetCDF, HDF, JPEG2000
- Vector: [Shapefile](Shapefile.md), [GeoJSON](GeoJSON.md), [GeoPackage](GeoPackage.md), PostGIS, FileGDB

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Geometry Engine - Open Source (GEOS)](Geometry Engine - Open Source (GEOS).md)
- [QGIS](QGIS.md)
- [Raster](Raster.md)
- [Vector](Vector.md)

### Backlinks
<!-- dynamic content -->
