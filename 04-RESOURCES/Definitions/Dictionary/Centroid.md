---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The geometric center of a spatial feature, used to represent polygon locations.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Centroid
  - Geometric Center
---

# Centroid
## Overview

**Centroid** is the geometric center of a spatial feature, often used to represent the location of polygons or other complex shapes in GIS analysis. The centroid provides a single point that represents the average position of all points making up a shape.

## Key Concepts

**Geometric centroid** is the mathematical center of mass of a shape (may fall outside the shape for concave polygons).
**Point on surface** is a point guaranteed to be inside the polygon boundary.
**Representative point** is a practical location within a feature for labeling or analysis.
**Weighted centroid** incorporates attribute values to shift the center point.

## Calculation

For a polygon with vertices:
- X-centroid = average of all vertex X coordinates
- Y-centroid = average of all vertex Y coordinates

## Use Cases

- Labeling polygon features on maps
- Calculating distances between polygon features
- Point-based analysis of area features
- Spatial joins between polygons and points

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Polygon](Polygon.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Geometry Engine - Open Source (GEOS)](Geometry Engine - Open Source (GEOS).md)

### Backlinks
<!-- dynamic content -->
