---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A geospatial indexing system using hexagonal grids for efficient spatial analysis.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/DataEngineering
  - Type/Definition
  - Type/Acronym
aliases:
  - Hexagonal Hierarchical Spatial Index
  - H3
  - Uber H3
---

# Hexagonal Hierarchical Spatial Index (H3)

```table-of-contents
```

## Overview

**Hexagonal Hierarchical Spatial Index (H3)** is a geospatial indexing system developed by Uber that uses hexagonal grids to partition the Earth's surface for efficient spatial analysis and data representation. H3 provides a hierarchical system of increasingly fine hexagonal cells, enabling multi-resolution spatial analysis.

## Key Concepts

**Hexagonal grid** is chosen because hexagons have uniform adjacency (6 neighbors) and approximate circles well.
**Resolution** refers to the 16 levels (0-15) of increasingly smaller hexagons.
**Cell index** is a 64-bit integer uniquely identifying each hexagon.
**Hierarchy** allows each hexagon to contain approximately 7 child hexagons at the next resolution.
**Edge** and **vertex** modes provide indexing for hexagon boundaries and corners.

## Resolution Levels

| Resolution | Avg. Area | Edge Length | Use Case |
|------------|-----------|-------------|----------|
| 0 | 4.3M km² | 1,108 km | Continental |
| 4 | 1,770 km² | 22 km | Regional |
| 7 | 5.2 km² | 1.2 km | City district |
| 9 | 105,332 m² | 174 m | Neighborhood |
| 12 | 307 m² | 9.4 m | Building |
| 15 | 0.9 m² | 0.5 m | Sub-meter |

## Advantages

- Uniform distance to neighbors (unlike square grids)
- Efficient spatial joins and aggregation
- Consistent global coverage
- Fast point-to-cell and cell-to-point operations

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Spatial Index]]

### Backlinks

```dataview
LIST FROM [[Hexagonal Hierarchical Spatial Index (H3)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Hexagonal Hierarchical Spatial Index (H3)"
```

