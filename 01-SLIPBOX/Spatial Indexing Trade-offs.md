---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Understanding when to use H3 vs S2 vs traditional spatial indexing
tags:
  - Status/Complete
  - Type/Note
  - Topic/GIS
  - Topic/Database
aliases:
  - H3 vs S2
  - Spatial Index Selection
publish: true
---

# Spatial Indexing Trade-offs

## The Problem

Traditional spatial indexes (R-trees, quadtrees) work well for range queries but struggle with:
- Aggregation at multiple scales
- Uniform cell properties for analysis
- Global coverage without projection distortion

Discrete Global Grid Systems (DGGS) like [Hexagonal Hierarchical Spatial Index (H3)](Hexagonal Hierarchical Spatial Index (H3).md) and S2 solve these problems differently.

## H3: Hexagonal Hierarchies

**Best for:** Aggregation, binning, analytics, visualization

Uber's H3 uses hexagonal cells because:
- Hexagons have uniform distance to neighbors (unlike squares)
- Better for movement/flow analysis
- 16 resolution levels from global to sub-meter
- Hierarchical parent-child relationships

**Use when:**
- Building heatmaps or choropleth visualizations
- Aggregating points to areas
- Traffic or movement analysis
- Clustering for analysis

**Limitations:**
- Not a perfect hierarchy (some cells have 7 children, some have 6)
- Less efficient for precise polygon containment queries

## S2: Spherical Geometry

**Best for:** Precise geometric operations, global indexing, polygon queries

Google's S2 uses:
- Hilbert curve space-filling ordering
- Spherical coordinates (no projection distortion)
- 30 levels of refinement
- Mathematically rigorous predicates

**Use when:**
- Need precise geometric predicates (contains, intersects)
- Working with global data
- Building spatial indexes for databases
- Requiring consistent cell hierarchy

**Limitations:**
- Square-ish cells less intuitive for visualization
- More complex to work with than H3

## Traditional R-Trees

**Best for:** Range queries, nearest neighbor, database indexing

PostGIS GiST indexes use R-trees:
- Excellent for bounding box queries
- Good for nearest-neighbor searches
- Well-integrated with SQL queries

**Use when:**
- Primary index for PostGIS tables
- Range queries (find all points in bbox)
- Nearest neighbor searches

## Decision Framework

| Need | Best Choice |
|------|-------------|
| Analytics/aggregation | H3 |
| Visualization (heatmaps) | H3 |
| Precise geometry operations | S2 |
| Global coverage without distortion | S2 |
| Database range queries | R-tree (GiST) |
| Nearest neighbor | R-tree |
| Hierarchical analysis | H3 or S2 |

## See Also

- [Hexagonal Hierarchical Spatial Index (H3)](Hexagonal Hierarchical Spatial Index (H3).md)
- [List - Spatial Databases](List - Spatial Databases.md)
- [MOC - GIS](MOC - GIS.md)

## Backlinks
<!-- dynamic content -->
