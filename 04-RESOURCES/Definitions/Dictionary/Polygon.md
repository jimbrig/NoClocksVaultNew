---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial feature representing a closed area defined by connected vertices.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Polygon
  - Polygon Geometry
---

# Polygon
## Overview

**Polygon** is a spatial feature in a GIS that represents a closed area defined by a series of connected points, often used to represent land parcels, administrative boundaries, or other area-based features. Polygons consist of an exterior ring and optionally one or more interior rings (holes).

## Key Concepts

**Exterior ring** is the outer boundary of the polygon (counterclockwise winding).
**Interior ring** is a hole within the polygon (clockwise winding).
**Vertices** are the points defining the polygon boundary.
**Closure** means the first and last vertices must be identical.
**Simple polygon** has no self-intersections.
**Valid polygon** follows OGC rules (proper winding, no self-intersection).

## Representations

| Format | Example |
|--------|---------|
| WKT | `POLYGON((-74 40, -74 41, -73 41, -73 40, -74 40))` |
| GeoJSON | `{"type": "Polygon", "coordinates": [[[-74,40],[-74,41],[-73,41],[-73,40],[-74,40]]]}` |

## Derived Measurements

- **Area**: Total enclosed area (sq meters, acres)
- **Perimeter**: Length of exterior boundary
- **Centroid**: Geometric center point
- **Bounding box**: Minimum enclosing rectangle

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Feature](Feature.md)
- [Point](Point.md)
- [LineString](LineString.md)
- [MultiPolygon](MultiPolygon.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)

### Backlinks
<!-- dynamic content -->
