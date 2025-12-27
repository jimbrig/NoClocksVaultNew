---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial feature representing a specific location defined by a single coordinate pair.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Point
  - Point Geometry
---

# Point
## Overview

**Point** is a spatial feature in a GIS that represents a specific location in space, typically defined by a single set of coordinates (latitude and longitude). Points are the simplest geometry type and are used to represent discrete locations such as addresses, landmarks, or sample sites.

## Key Concepts

**Coordinate pair** is the X,Y (or longitude, latitude) values defining the point location.
**Z-coordinate** is an optional elevation or height value (3D point).
**M-coordinate** is an optional measure value (linear referencing).
**MultiPoint** is a collection of points treated as a single geometry.

## Representations

| Format | Example |
|--------|---------|
| WKT | `POINT(-74.006 40.7128)` |
| GeoJSON | `{"type": "Point", "coordinates": [-74.006, 40.7128]}` |
| WKB | Binary encoded |

## Use Cases

- Addresses and geocoded locations
- Points of interest (POI)
- GPS waypoints
- Sample/observation sites
- Facility locations

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Feature](Feature.md)
- [Coordinates](Coordinates.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Polygon](Polygon.md)
- [LineString](LineString.md)

### Backlinks
<!-- dynamic content -->
