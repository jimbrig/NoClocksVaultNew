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
## Overview

**Web Feature Service (WFS)** is an [OGC](Open Geospatial Consortium (OGC).md) standard that provides an interface for accessing geospatial features over the web, allowing users to query and retrieve vector data. Unlike [WMS](Web Map Service (WMS).md) which returns rendered images, WFS returns actual feature data (geometries and attributes) that can be analyzed, styled, and manipulated by the client.

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

- [GML](Geography Markup Language (GML).md) (default)
- [GeoJSON](GeoJSON.md)
- Shapefile
- CSV
- KML

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md)
- [Web Map Service (WMS)](Web Map Service (WMS).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [GeoJSON](GeoJSON.md)

### Backlinks
<!-- dynamic content -->
