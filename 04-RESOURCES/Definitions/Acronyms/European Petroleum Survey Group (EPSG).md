---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A database of coordinate reference systems and transformations used in geospatial applications.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - European Petroleum Survey Group
  - EPSG
  - EPSG Registry
---

# European Petroleum Survey Group (EPSG)
## Overview

**European Petroleum Survey Group (EPSG)** refers to a database that provides a collection of coordinate reference systems and transformations used in geospatial applications. Originally maintained by the petroleum industry group of the same name, the registry is now managed by the International Association of Oil & Gas Producers (IOGP) and serves as the de facto standard for identifying spatial reference systems.

## Key Concepts

**EPSG code** is a unique numeric identifier for a coordinate reference system, datum, or transformation (e.g., EPSG:4326).
**Geodetic datum** defines the size/shape of the Earth and the origin/orientation of coordinate systems.
**Coordinate Reference System (CRS)** is a complete definition of how coordinates relate to real-world locations.
**Coordinate transformation** is the mathematical operation to convert coordinates between different CRS.
**Well-Known Text (WKT)** is a text representation of coordinate reference systems.

## Common EPSG Codes

| Code | Name | Description |
|------|------|-------------|
| 4326 | WGS 84 | Global geographic CRS (lat/long) |
| 3857 | Web Mercator | Used by web maps (Google, OSM) |
| 4269 | NAD83 | North American Datum 1983 |
| 32618 | UTM Zone 18N | Universal Transverse Mercator |
| 2263 | NAD83 / NY Long Island | New York State Plane |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Coordinate Reference System (CRS)](Coordinate Reference System (CRS).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Projection](Projection.md)
- [Datum](Datum.md)

### Backlinks
<!-- dynamic content -->
