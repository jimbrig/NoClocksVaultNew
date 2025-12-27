---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The ratio of map distance to real-world distance, indicating detail level and area coverage.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Scale
  - Map Scale
---

# Scale
## Overview

**Scale** is the ratio of a distance on a map to the corresponding distance on the ground, often expressed as a fraction or representative fraction (e.g., 1:10,000), indicating the level of detail and area covered by the map.

## Key Concepts

**Representative fraction** is the ratio 1:X (1 unit on map = X units on ground).
**Large scale** means larger RF denominator is smaller (1:1,000) - more detail.
**Small scale** means smaller RF denominator is larger (1:1,000,000) - less detail.
**Scale bar** is a graphical representation of scale on a map.
**Nominal scale** is the scale at which data was captured or intended.

## Scale Examples

| Scale | Type | Use Case |
|-------|------|----------|
| 1:1,000 | Large | Engineering, site plans |
| 1:24,000 | Large | USGS topo quads |
| 1:100,000 | Medium | Regional planning |
| 1:1,000,000 | Small | State/national maps |
| 1:50,000,000 | Small | World maps |

## Web Map Zoom Levels

| Zoom | Approximate Scale | View |
|------|------------------|------|
| 0 | 1:500,000,000 | World |
| 10 | 1:500,000 | Metro area |
| 15 | 1:15,000 | Neighborhood |
| 18 | 1:2,000 | Building |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Cartography](Cartography.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Resolution](Resolution.md)
- [Zoom](Zoom.md)

### Backlinks
<!-- dynamic content -->
