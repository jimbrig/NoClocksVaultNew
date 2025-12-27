---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The total length of the boundary of a spatial feature such as a polygon.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Perimeter
---

# Perimeter
## Overview

**Perimeter** is the total length of the boundary of a spatial feature, such as a polygon, often used in GIS analysis to measure the size or shape of geographic entities. Perimeter is calculated by summing the lengths of all edges forming the feature boundary.

## Key Concepts

**Boundary length** is the sum of all edge segments.
**Units** depend on the coordinate system (meters, feet, degrees).
**Geodesic vs. planar** affects accuracy for large or high-latitude features.
**Shape index** uses perimeter/area ratios to characterize shape complexity.

## Calculations

- Planar: Sum of Euclidean distances between vertices
- Geodesic: Sum of great circle distances (more accurate for geographic CRS)

## Use Cases

- Calculating fence/boundary lengths
- Shape complexity analysis (compactness ratios)
- Edge effects in ecological analysis
- Cost estimation for linear features

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Polygon](Polygon.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Vertices](Vertices.md)

### Backlinks
<!-- dynamic content -->
