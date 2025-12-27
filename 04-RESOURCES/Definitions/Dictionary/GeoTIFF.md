---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A raster file format with embedded geographic metadata for georeferenced imagery.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/FileFormat
aliases:
  - GeoTIFF
  - Geo TIFF
---

# GeoTIFF
## Overview

**GeoTIFF** is a raster file format that includes geographic metadata, allowing for the storage and sharing of georeferenced imagery and spatial data in a GIS. GeoTIFF extends the standard TIFF format with geospatial tags that define the coordinate reference system, extent, and pixel resolution.

## Key Concepts

**GeoKey** is metadata tags storing coordinate system information.
**ModelTiepoint** defines the relationship between pixel and ground coordinates.
**ModelPixelScale** specifies the pixel size in ground units.
**ModelTransformation** is an affine transformation matrix for complex georeferencing.
**EPSG code** is embedded CRS identifier.

## GeoTIFF Tags

| Tag | Description |
|-----|-------------|
| GTModelTypeGeoKey | Geographic or Projected CRS |
| GTRasterTypeGeoKey | Pixel interpretation (area or point) |
| GeographicTypeGeoKey | Geographic CRS code |
| ProjectedCSTypeGeoKey | Projected CRS code |
| ProjLinearUnitsGeoKey | Linear unit of measure |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Raster](Raster.md)
- [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md)
- [Coordinate Reference System (CRS)](Coordinate Reference System (CRS).md)
- [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md)

### Backlinks
<!-- dynamic content -->
