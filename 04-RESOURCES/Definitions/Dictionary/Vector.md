---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Spatial data representing geographic features using points, lines, and polygons.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Vector
  - Vector Data
---

# Vector
## Overview

**Vector** is a type of spatial data in a GIS that represents geographic features using points, lines, and polygons, allowing for precise representation of discrete features such as roads, buildings, and land parcels. Vector data combines geometry (location/shape) with attributes (descriptive information).

## Key Concepts

**Point** is a single coordinate representing a location.
**Line/LineString** is an ordered sequence of connected points.
**Polygon** is a closed area defined by a boundary ring.
**Attributes** are tabular data associated with each feature.
**Feature class** is a collection of features of the same geometry type.
**Topology** describes spatial relationships between features.

## Vector vs. Raster

| Aspect | Vector | Raster |
|--------|--------|--------|
| Data model | Points, lines, polygons | Grid cells |
| Best for | Discrete features | Continuous phenomena |
| Precision | Exact boundaries | Resolution-dependent |
| File size | Varies with complexity | Varies with resolution |
| Overlay analysis | Requires processing | Simple math |

## Common Formats

- [Shapefile](Shapefile.md)
- [GeoJSON](GeoJSON.md)
- [GeoPackage](GeoPackage.md)
- FileGDB
- PostGIS

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Raster](Raster.md)
- [Feature](Feature.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md)

### Backlinks
<!-- dynamic content -->
