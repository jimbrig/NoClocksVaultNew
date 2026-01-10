---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The process of assigning geographic coordinates to spatial data for accurate placement.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Georeference
  - Georeferencing
  - Spatial Referencing
---

# Georeference
## Overview

**Georeference** is the process of assigning geographic coordinates to spatial data, allowing for accurate placement and analysis within a GIS. Georeferencing is commonly applied to scanned maps, aerial photographs, and satellite imagery to align them with real-world coordinates.

## Key Concepts

**Control points** are known locations used to establish transformation.
**Ground control point (GCP)** has both image coordinates and real-world coordinates.
**Transformation** is the mathematical function mapping image to ground coordinates.
**Residual error** measures the difference between estimated and actual GCP locations.
**RMS error** is the root mean square of all residual errors.

## Transformation Types

| Type | Minimum GCPs | Flexibility |
|------|--------------|-------------|
| Affine | 3 | Rotation, scale, skew |
| Polynomial (1st order) | 3 | Same as affine |
| Polynomial (2nd order) | 6 | More local adjustment |
| Spline | 10+ | Rubber-sheeting |
| Projective | 4 | Perspective correction |

## Workflow

1. Identify control points in source image
2. Match control points to known coordinates
3. Calculate transformation
4. Apply transformation to image
5. Evaluate accuracy (RMS error)

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Coordinate Reference System (CRS)](Coordinate Reference System (CRS).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Raster](Raster.md)

### Backlinks
<!-- dynamic content -->
