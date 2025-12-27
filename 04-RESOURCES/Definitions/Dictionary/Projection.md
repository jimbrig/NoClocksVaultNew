---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A mathematical transformation converting geographic coordinates to a flat two-dimensional surface.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Projection
  - Map Projection
---

# Projection
## Overview

**Projection** is a mathematical transformation that converts geographic coordinates (latitude and longitude) into a flat, two-dimensional representation of the Earth's surface, allowing for accurate mapping and analysis in a GIS. All projections introduce distortion in area, shape, distance, or direction.

## Key Concepts

**Developable surface** is the geometric shape used for projection (plane, cone, cylinder).
**Distortion** is the unavoidable deformation of geographic properties.
**Conformal** preserves local shape/angles (Mercator).
**Equal-area** preserves area relationships (Albers).
**Equidistant** preserves distances from a point or line.
**Compromise** balances multiple properties (Robinson).

## Projection Types

| Type | Preserves | Examples |
|------|-----------|----------|
| Conformal | Shape, angles | Mercator, Lambert Conformal |
| Equal-area | Area | Albers, Mollweide |
| Equidistant | Distance | Azimuthal Equidistant |
| Compromise | Balance | Robinson, Winkel Tripel |

## Common Projections

- **Web Mercator (EPSG:3857)**: Web mapping standard
- **UTM**: Zone-based for regional mapping
- **State Plane**: High-accuracy US state systems
- **Albers Equal-Area**: Thematic mapping

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Coordinate Reference System (CRS)](Coordinate Reference System (CRS).md)
- [European Petroleum Survey Group (EPSG)](European Petroleum Survey Group (EPSG).md)
- [Datum](Datum.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)

### Backlinks
<!-- dynamic content -->
