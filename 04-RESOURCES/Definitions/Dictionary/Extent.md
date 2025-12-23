---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The geographic area covered by a spatial dataset, defined by bounding coordinates.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Extent
  - Spatial Extent
  - Geographic Extent
---

# Extent

```table-of-contents
```

## Overview

**Extent** is the geographic area covered by a spatial dataset or map, typically defined by the minimum and maximum coordinates (bounding box) of the data. Extent describes the outer boundaries of where data exists and is fundamental to understanding data coverage and setting map views.

## Key Concepts

**Bounding box** is the rectangular extent defined by min/max X and Y.
**Minimum bounding rectangle (MBR)** is the smallest rectangle enclosing all features.
**Data extent** is the actual area covered by features.
**Display extent** is the current view shown on screen.
**Full extent** is the complete area of all layers in a map.

## Representation

```
Extent: (minX, minY, maxX, maxY)
Example: (-74.25, 40.50, -73.70, 40.92)
         (West, South, East, North)
```

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Bounding Box (BBOX)]]
- [[Geographic Information System (GIS)]]
- [[Scale]]

### Backlinks

```dataview
LIST FROM [[Extent]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Extent"
```

