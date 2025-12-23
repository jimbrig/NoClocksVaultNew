---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: An OGC standard for accessing geospatial vector features over the web.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Web Feature Service
  - WFS
---

# Web Feature Service (WFS)

```table-of-contents
```

## Overview

**Web Feature Service (WFS)** is an [[Open Geospatial Consortium (OGC)|OGC]] standard that provides an interface for accessing geospatial features over the web, allowing users to query and retrieve vector data. Unlike [[Web Map Service (WMS)|WMS]] which returns rendered images, WFS returns actual feature data (geometries and attributes) that can be analyzed, styled, and manipulated by the client.

## Key Concepts

**Feature** is a geographic object with geometry (point, line, polygon) and associated attributes.
**GetCapabilities** returns metadata about the service and available feature types.
**DescribeFeatureType** returns the schema (structure) of a specific feature type.
**GetFeature** retrieves actual feature data based on query parameters.
**Transaction** (WFS-T) allows for creating, updating, and deleting features on the server.
**Filter encoding** is an OGC standard for expressing spatial and attribute queries.

## WFS Versions

| Version | Key Features |
|---------|--------------|
| WFS 1.0.0 | Basic read operations, GML 2 output |
| WFS 1.1.0 | Paging, stored queries, GML 3 output |
| WFS 2.0.0 | Enhanced filtering, temporal queries, response paging |

## Output Formats

- [[Geography Markup Language (GML)|GML]] (default)
- [[GeoJSON]]
- Shapefile
- CSV
- KML

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Open Geospatial Consortium (OGC)]]
- [[Web Map Service (WMS)]]
- [[Geographic Information System (GIS)]]
- [[GeoJSON]]

### Backlinks

```dataview
LIST FROM [[Web Feature Service (WFS)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Web Feature Service (WFS)"
```

