---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A collaborative project that creates a free, editable map of the world from volunteer contributions.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - OpenStreetMap
  - OSM
---

# OpenStreetMap (OSM)

```table-of-contents
```

## Overview

**OpenStreetMap (OSM)** is a collaborative project that creates a free, editable map of the world, providing geographic data contributed by volunteers. Founded in 2004, OSM operates under the Open Database License (ODbL), allowing anyone to use, share, and modify the data with attribution.

## Key Concepts

**Node** is a point feature defined by latitude and longitude (buildings, POIs, vertices).
**Way** is an ordered list of nodes forming lines (roads, rivers) or closed polygons (buildings, parks).
**Relation** is a collection of nodes, ways, and other relations defining complex features (routes, boundaries).
**Tags** are key-value pairs describing feature attributes (name=Main Street, highway=primary).
**Changeset** is a group of edits submitted together with metadata about the edit.
**Overpass API** is a query language for extracting specific data from OSM.

## Data Access

| Method | Description |
|--------|-------------|
| Planet.osm | Complete database dump (PBF format) |
| Geofabrik | Regional extracts updated daily |
| Overpass API | Real-time queries for specific data |
| OSM API | Direct access for editing |
| Tile servers | Pre-rendered map tiles |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[GeoJSON]]
- [[Web Map Service (WMS)]]

### Backlinks

```dataview
LIST FROM [[OpenStreetMap (OSM)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/OpenStreetMap (OSM)"
```

