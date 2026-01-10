---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A representation of bare ground surface without objects like vegetation or buildings.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Digital Terrain Model
  - DTM
---

# Digital Terrain Model (DTM)
## Overview

**Digital Terrain Model (DTM)** is a representation of the bare ground surface without any objects like plants and buildings, often used in GIS for terrain analysis and hydrological modeling. DTMs are derived from DEMs or DSMs by filtering out non-ground features.

## Key Concepts

**Bare earth** is the ground surface with vegetation and structures removed.
**Ground classification** identifies ground vs. non-ground points in LiDAR.
**Filtering** removes above-ground features from elevation data.
**Breaklines** enforce terrain features like ridges and streams.
**Mass points** are irregularly spaced elevation measurements.

## DTM vs DSM vs DEM

| Model | Represents | Use Case |
|-------|------------|----------|
| DTM | Bare ground | Hydrological modeling |
| DSM | Top surface | Building heights, tree canopy |
| DEM | Either/both | General term |

## Applications

- Flood modeling
- Watershed delineation
- Cut/fill calculations
- Archaeological analysis
- Infrastructure planning

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Digital Elevation Model (DEM)](Digital Elevation Model (DEM).md)
- [Topography](Topography.md)
- [Light Detection and Ranging (LIDAR)](Light Detection and Ranging (LIDAR).md)

### Backlinks
<!-- dynamic content -->
