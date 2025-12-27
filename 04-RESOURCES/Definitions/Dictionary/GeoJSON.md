---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A JSON-based format for encoding geographic data structures for web and GIS applications.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/FileFormat
aliases:
  - GeoJSON
---

# GeoJSON
## Overview

**GeoJSON** is a lightweight, text-based format for encoding geographic data structures using [JSON](JavaScript Object Notation (JSON).md), commonly used for sharing and visualizing spatial data in web applications and GIS. GeoJSON supports points, lines, polygons, and collections of these geometry types along with non-spatial properties.

## Key Concepts

**Feature** is an object with geometry and properties.
**FeatureCollection** is an array of Features.
**Geometry** defines the spatial shape (Point, LineString, Polygon, etc.).
**Properties** contain non-spatial attributes as key-value pairs.
**Coordinates** use longitude, latitude order (x, y).

## Geometry Types

| Type | Description |
|------|-------------|
| Point | Single coordinate |
| MultiPoint | Array of points |
| LineString | Connected sequence of points |
| MultiLineString | Array of lines |
| Polygon | Closed ring(s) |
| MultiPolygon | Array of polygons |
| GeometryCollection | Mixed geometry types |

## Example

```json
{
  "type": "Feature",
  "geometry": {
    "type": "Point",
    "coordinates": [-74.006, 40.7128]
  },
  "properties": {
    "name": "New York City"
  }
}
```

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [JavaScript Object Notation (JSON)](JavaScript Object Notation (JSON).md)
- [Shapefile](Shapefile.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Feature](Feature.md)

### Backlinks
<!-- dynamic content -->
