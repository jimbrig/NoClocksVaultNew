---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial feature consisting of multiple polygons grouped as a single entity.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - MultiPolygon
  - Multi-Polygon
---

# MultiPolygon

```table-of-contents
```

## Overview

**MultiPolygon** is a spatial feature in a GIS that consists of multiple polygons grouped together as a single entity, often used to represent complex geographic features such as archipelagos or administrative regions with non-contiguous areas.

## Key Concepts

**Component polygons** are the individual polygons making up the collection.
**Non-contiguous** means polygons do not need to touch or overlap.
**Single feature** is the MultiPolygon treated as one record with shared attributes.
**Validity** requires each component polygon to be valid and non-overlapping.

## Representations

| Format | Example |
|--------|---------|
| WKT | `MULTIPOLYGON(((...)),((...)),((...)))` |
| GeoJSON | `{"type": "MultiPolygon", "coordinates": [[[[...]]]]}` |

## Use Cases

- Hawaii (non-contiguous state)
- Island nations (Indonesia, Philippines)
- Exclaves/enclaves (political boundaries)
- Fragmented land parcels
- Multi-part zoning districts

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Polygon]]
- [[Feature]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[MultiPolygon]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/MultiPolygon"
```

