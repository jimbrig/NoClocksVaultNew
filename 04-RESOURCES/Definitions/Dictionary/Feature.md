---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial object representing a real-world entity with geometry and attributes.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Feature
  - Spatial Feature
  - Geographic Feature
---

# Feature
## Overview

**Feature** is a spatial object in a GIS that represents a real-world entity, such as a point, line, or polygon, along with its associated attributes. Features are the fundamental building blocks of vector GIS data and can represent anything from buildings and roads to administrative boundaries and natural phenomena.

## Key Concepts

**Geometry** is the spatial representation of the feature (point, line, polygon).
**Attributes** are descriptive properties stored in columns (name, population, area).
**Feature class** is a collection of features with the same geometry type and attribute schema.
**Feature ID** is a unique identifier for each feature.
**Spatial reference** defines the coordinate system for feature geometry.

## Feature Types

| Type | Geometry | Examples |
|------|----------|----------|
| Point | Single coordinate | Address, POI, well |
| Line/Polyline | Ordered vertices | Road, river, trail |
| Polygon | Closed ring | Parcel, county, lake |
| Multi-* | Collection | Archipelago, highway system |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Vector](Vector.md)
- [Layer](Layer.md)
- [Point](Point.md)
- [Polygon](Polygon.md)
- [LineString](LineString.md)

### Backlinks
<!-- dynamic content -->
