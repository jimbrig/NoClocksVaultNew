---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The level of detail in spatial data, referring to pixel size in raster or point density in vector.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Resolution
  - Spatial Resolution
---

# Resolution

```table-of-contents
```

## Overview

**Resolution** is the level of detail in spatial data, often referring to the size of the pixels in raster data or the density of points in vector data, with higher resolution providing more detailed information. Resolution determines the smallest features that can be distinguished in a dataset.

## Key Concepts

**Spatial resolution** is the ground area represented by each cell or point.
**Temporal resolution** is the frequency of data collection over time.
**Spectral resolution** is the number and width of spectral bands (remote sensing).
**Radiometric resolution** is the range of values a sensor can record (bit depth).
**Scale** is related but distinct from resolution (display vs. data).

## Common Resolutions

| Source | Resolution | Use Case |
|--------|------------|----------|
| Landsat | 30m | Regional land cover |
| Sentinel-2 | 10m | Agriculture, forestry |
| NAIP | 0.6-1m | Parcel-level analysis |
| Commercial satellite | 0.3-0.5m | Urban features |
| LiDAR DEM | 1-3m | Terrain analysis |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Raster]]
- [[Pixel]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[Resolution]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Resolution"
```

