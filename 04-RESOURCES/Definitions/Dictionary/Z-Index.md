---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial indexing method using hierarchical grid structure for efficient spatial queries.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Z-Index
  - Z-Order
  - Morton Code
  - Space-Filling Curve
---

# Z-Index

```table-of-contents
```

## Overview

**Z-Index** (also known as Morton code or Z-order) is a spatial indexing method that organizes geographic data into a hierarchical grid structure, often used to improve the efficiency of spatial queries and analysis. The Z-index maps multidimensional data to one dimension while preserving locality.

## Key Concepts

**Space-filling curve** is a mathematical curve that visits all points in a grid.
**Morton code** interleaves binary representations of X and Y coordinates.
**Locality preservation** keeps nearby points close in the 1D ordering.
**Quadtree** is a related hierarchical spatial index structure.
**Geohash** is a similar concept using base32 encoding.

## Applications

- Database indexing for spatial queries
- Efficient range queries in spatial databases
- Tile pyramids for web mapping
- Parallel processing of spatial data

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Hexagonal Hierarchical Spatial Index (H3)]]

### Backlinks

```dataview
LIST FROM [[Z-Index]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Z-Index"
```

