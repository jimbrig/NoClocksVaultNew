---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A C++ library for performing geometric operations on spatial data.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Development
  - Type/Definition
  - Type/Acronym
aliases:
  - Geometry Engine - Open Source
  - GEOS
---

# Geometry Engine - Open Source (GEOS)
## Overview

**Geometry Engine - Open Source (GEOS)** is a C++ library for performing geometric operations on spatial data, such as calculating intersections, unions, and differences between geometric shapes. GEOS is a port of the Java Topology Suite (JTS) and provides the computational geometry backbone for many GIS applications including PostGIS, QGIS, and Shapely.

## Key Concepts

**Spatial predicates** are boolean operations that test relationships between geometries (intersects, contains, within, touches).
**Spatial operations** are constructive operations that produce new geometries (buffer, intersection, union, difference).
**Topology** is the mathematical study of spatial relationships that remain unchanged under continuous deformations.
**Valid geometry** is a geometry that conforms to OGC Simple Features rules (no self-intersection, proper ring orientation).
**Prepared geometry** is a geometry that has been preprocessed for faster repeated operations.

## Common Operations

| Operation | Description |
|-----------|-------------|
| `Buffer` | Create a polygon at a specified distance from a geometry |
| `Intersection` | Return the common area of two geometries |
| `Union` | Combine two or more geometries |
| `Difference` | Subtract one geometry from another |
| `Convex Hull` | Return the smallest convex polygon containing a geometry |
| `Centroid` | Calculate the geometric center of a geometry |
| `Simplify` | Reduce the number of vertices while preserving shape |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md)
- [Topology](Topology.md)
- [PostGIS](PostGIS.md)

### Backlinks
<!-- dynamic content -->
