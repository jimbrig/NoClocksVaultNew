---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial feature representing a series of connected points forming a line.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - LineString
  - Polyline
  - Line Geometry
---

# LineString

```table-of-contents
```

## Overview

**LineString** is a spatial feature in a GIS that represents a series of connected points forming a line, often used to represent linear features such as roads, rivers, or trails. LineStrings are ordered sequences of two or more vertices connected by straight line segments.

## Key Concepts

**Vertices** are the points defining the line path.
**Segment** is a straight line between consecutive vertices.
**Simple** means the line does not cross itself.
**Closed** means the first and last vertices are the same (ring).
**MultiLineString** is a collection of lines as a single feature.
**Length** is the total distance along the line.

## Representations

| Format | Example |
|--------|---------|
| WKT | `LINESTRING(-74 40, -74 41, -73 41)` |
| GeoJSON | `{"type": "LineString", "coordinates": [[-74,40],[-74,41],[-73,41]]}` |

## Use Cases

- Road and street networks
- Rivers and streams
- Utility lines (power, water, gas)
- Transit routes
- Trails and paths
- Property boundaries (as segments)

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Feature]]
- [[Point]]
- [[Polygon]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[LineString]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/LineString"
```

