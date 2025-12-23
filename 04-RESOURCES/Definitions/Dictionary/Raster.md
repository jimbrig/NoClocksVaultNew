---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Spatial data representing geographic features as a grid of cells or pixels.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Raster
  - Raster Data
  - Grid Data
---

# Raster

```table-of-contents
```

## Overview

**Raster** is a type of spatial data in a GIS that represents geographic features as a grid of cells or pixels, each with a specific value, often used for continuous data such as elevation, temperature, or satellite imagery. Raster data excels at representing phenomena that vary continuously across space.

## Key Concepts

**Cell/Pixel** is the individual unit of a raster grid.
**Resolution** is the ground size of each cell (e.g., 10m, 30m).
**Band** is a single layer of values (multispectral images have many bands).
**Extent** is the geographic area covered by the raster.
**NoData** is a value indicating missing or invalid data.
**Bit depth** is the range of possible values per cell.

## Raster Types

| Type | Description | Examples |
|------|-------------|----------|
| Continuous | Smooth gradation of values | Elevation, temperature |
| Discrete | Categorical values | Land cover, soil type |
| Imagery | Reflectance/brightness | Satellite, aerial photos |
| Derived | Computed from other rasters | Slope, aspect, hillshade |

## Common Formats

- [[GeoTIFF]] / [[Cloud Optimized GeoTIFF (COG)|COG]]
- JPEG2000
- IMG (ERDAS)
- NetCDF / HDF

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Vector]]
- [[Pixel]]
- [[Resolution]]
- [[Geographic Information System (GIS)]]
- [[Geospatial Data Abstraction Library (GDAL)]]

### Backlinks

```dataview
LIST FROM [[Raster]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Raster"
```

