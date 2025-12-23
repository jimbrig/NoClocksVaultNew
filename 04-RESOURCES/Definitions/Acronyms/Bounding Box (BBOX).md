---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A rectangular area defined by minimum and maximum coordinates encompassing a spatial dataset.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Bounding Box
  - BBOX
  - MBR
  - Minimum Bounding Rectangle
---

# Bounding Box (BBOX)

```table-of-contents
```

## Overview

**Bounding Box (BBOX)** is a rectangular area defined by the minimum and maximum coordinates (latitude and longitude) that encompasses a spatial dataset or map extent. Bounding boxes are used extensively in spatial queries, web map requests, and data filtering.

## Key Concepts

**Min X (West)** is the minimum longitude/easting.
**Min Y (South)** is the minimum latitude/northing.
**Max X (East)** is the maximum longitude/easting.
**Max Y (North)** is the maximum latitude/northing.
**Axis order** varies by standard (lon/lat vs lat/lon).

## Formats

| Context | Format | Example |
|---------|--------|---------|
| WMS 1.1 | minx,miny,maxx,maxy | -74.25,40.50,-73.70,40.92 |
| WMS 1.3 | (axis order varies) | 40.50,-74.25,40.92,-73.70 |
| GeoJSON | [minx, miny, maxx, maxy] | [-74.25, 40.50, -73.70, 40.92] |
| WKT | POLYGON from corners | POLYGON((...)) |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Extent]]
- [[Geographic Information System (GIS)]]
- [[Web Map Service (WMS)]]

### Backlinks

```dataview
LIST FROM [[Bounding Box (BBOX)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Bounding Box (BBOX)"
```

