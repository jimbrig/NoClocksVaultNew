---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The process of changing map scale to focus on specific areas or see broader context.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Zoom
  - Zoom Level
---

# Zoom

```table-of-contents
```

## Overview

**Zoom** is the process of changing the scale of a map or spatial data view in a GIS, allowing users to focus on specific areas or see a broader context. In web mapping, zoom is typically expressed as discrete levels (0-22) with each level doubling the resolution.

## Key Concepts

**Zoom in** increases scale (more detail, smaller area).
**Zoom out** decreases scale (less detail, larger area).
**Zoom level** is a discrete step in web map tile pyramids (0-22).
**Tile** is a pre-rendered image at a specific zoom level.
**Scale denominator** correlates with zoom level.

## Web Map Zoom Levels

| Zoom | Tiles | Coverage | Scale (~) |
|------|-------|----------|-----------|
| 0 | 1 | World | 1:500M |
| 5 | 1,024 | Continent | 1:15M |
| 10 | 1M+ | City | 1:500K |
| 15 | 1B+ | Neighborhood | 1:15K |
| 18 | 69B+ | Building | 1:2K |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Scale]]
- [[Geographic Information System (GIS)]]
- [[Web Map Service (WMS)]]

### Backlinks

```dataview
LIST FROM [[Zoom]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Zoom"
```

