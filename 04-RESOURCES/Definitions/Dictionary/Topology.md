---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The study of spatial relationships between geographic features that remain unchanged under continuous deformations.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Topology
  - Spatial Topology
---

# Topology

```table-of-contents
```

## Overview

**Topology** is the study of the properties of geometric objects that remain unchanged under continuous deformations, such as stretching or bending, often used in GIS to describe spatial relationships between features. Topological relationships include adjacency, connectivity, and containment.

## Key Concepts

**Adjacency** describes features that share a common boundary (neighboring polygons).
**Connectivity** describes features that are linked (road network nodes and edges).
**Containment** describes features that are inside other features (point in polygon).
**Node** is a point where lines meet or end.
**Arc/Edge** is a line segment between two nodes.
**Face** is an area enclosed by arcs (polygon).

## Topological Rules

| Rule | Description |
|------|-------------|
| Must Not Overlap | Polygons cannot share interior space |
| Must Not Have Gaps | Adjacent polygons must share boundaries |
| Must Be Connected | Line features must form a network |
| Must Be Inside | Points must fall within polygons |
| Must Not Self-Intersect | Lines cannot cross themselves |

## Applications

- Validating data integrity in vector datasets
- Network analysis (routing, shortest path)
- Polygon operations (union, intersection)
- Error detection and correction

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Geometry Engine - Open Source (GEOS)]]
- [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]]
- [[Vector]]

### Backlinks

```dataview
LIST FROM [[Topology]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Topology"
```

