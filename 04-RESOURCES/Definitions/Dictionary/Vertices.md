---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Points that define the shape of spatial features like polygons and lines.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Vertices
  - Vertex
  - Node
---

# Vertices

```table-of-contents
```

## Overview

**Vertices** are the points that define the shape of a spatial feature, such as the corners of a polygon or the points along a line, used to represent the geometry of the feature in a GIS. Each vertex is defined by a coordinate pair (and optionally Z and M values).

## Key Concepts

**Vertex** is a single point in a geometry (plural: vertices).
**Node** is a vertex at the start/end of a line or where lines connect.
**Shape point** is an intermediate vertex defining curvature.
**Vertex count** affects file size, processing speed, and visual smoothness.
**Simplification** reduces vertex count while preserving shape.

## Vertex Operations

| Operation | Description |
|-----------|-------------|
| Add vertex | Insert new point in geometry |
| Move vertex | Relocate existing point |
| Delete vertex | Remove point from geometry |
| Simplify | Reduce vertex density |
| Densify | Add vertices along segments |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Polygon]]
- [[LineString]]
- [[Feature]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[Vertices]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Vertices"
```

