---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A raster representation of Earth's surface providing elevation data for terrain analysis.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Digital Elevation Model
  - DEM
---

# Digital Elevation Model (DEM)

```table-of-contents
```

## Overview

**Digital Elevation Model (DEM)** is a raster representation of the Earth's surface that provides elevation data for terrain analysis and modeling in GIS. DEMs can represent either the bare ground surface (DTM) or the surface including features like buildings and vegetation (DSM).

## Key Concepts

**Elevation** is the height above a reference datum (usually mean sea level).
**Cell/Pixel value** stores the elevation for that ground area.
**Resolution** is the horizontal ground distance represented by each cell.
**Vertical accuracy** is the precision of elevation values.
**Void/NoData** represents areas with missing elevation data.

## DEM Types

| Type | Description |
|------|-------------|
| DTM | Bare ground (Digital Terrain Model) |
| DSM | Surface with features (Digital Surface Model) |
| DEM | Generic term for elevation models |

## Common DEM Sources

| Source | Resolution | Coverage |
|--------|------------|----------|
| SRTM | 30m/90m | Global |
| NED/3DEP | 10m/1m | United States |
| ASTER | 30m | Global |
| LiDAR | 1-3m | Regional |

## Derived Products

- Slope
- Aspect
- Hillshade
- Contour lines
- Watersheds
- Viewsheds

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Digital Terrain Model (DTM)]]
- [[Topography]]
- [[Raster]]
- [[United States Geological Survey (USGS)]]

### Backlinks

```dataview
LIST FROM [[Digital Elevation Model (DEM)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Digital Elevation Model (DEM)"
```

