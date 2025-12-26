---
creation_date: 2024-12-17
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Comprehensive reference for OGC and ArcGIS web service standards
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
  - Topic/Web
  - Topic/API
aliases:
  - Geospatial Web Services
  - GIS Services
  - OGC Standards
publish: true
---

# List - OGC Web Service Standards

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Geospatial web services provide standardized interfaces for serving spatial data over the web. This reference covers [[Open Geospatial Consortium (OGC)]] legacy and modern API standards, plus ArcGIS service types.

## OGC Legacy Standards

These XML-based standards form the foundation of interoperable web GIS:

| Standard | Purpose | Links |
|----------|---------|-------|
| [[Web Map Service (WMS)]] | Serve georeferenced map images | [OGC Spec](https://www.ogc.org/standard/wms/) |
| [[Web Feature Service (WFS)]] | Serve vector features (GML) | [OGC Spec](https://www.ogc.org/standard/wfs/) |
| [[Web Coverage Service (WCS)]] | Serve raster coverages | [OGC Spec](https://www.ogc.org/standard/wcs/) |
| [[Web Map Tile Service (WMTS)]] | Serve pre-rendered map tiles | [OGC Spec](https://www.ogc.org/standard/wmts/) |
| Web Processing Service (WPS) | Remote geoprocessing | [OGC Spec](https://www.ogc.org/standard/wps/) |
| Catalog Service for the Web (CSW) | Metadata discovery | [OGC Spec](https://www.ogc.org/standard/cat/) |

## OGC API Standards

Modern RESTful APIs replacing legacy standards:

### Core Standards

| Standard | Purpose | Links |
|----------|---------|-------|
| OGC API - Common | Shared building blocks | [Docs](https://ogcapi.ogc.org/common/) |
| [[OGC API - Features]] | Vector feature access (replaces WFS) | [Docs](https://ogcapi.ogc.org/features/) |
| OGC API - Tiles | Vector/raster tile serving | [Docs](https://ogcapi.ogc.org/tiles/) |
| OGC API - Maps | Map image rendering (replaces WMS) | [Docs](https://ogcapi.ogc.org/maps/) |
| OGC API - Processes | Geoprocessing (replaces WPS) | [Docs](https://ogcapi.ogc.org/processes/) |

### Specialized Standards

| Standard | Purpose | Links |
|----------|---------|-------|
| OGC API - Records | Metadata catalog (replaces CSW) | [Docs](https://ogcapi.ogc.org/records/) |
| OGC API - Environmental Data Retrieval (EDR) | Environmental data access | [Docs](https://ogcapi.ogc.org/edr/) |
| OGC API - Discrete Global Grid Systems (DGGS) | Grid-based data access | [Docs](https://ogcapi.ogc.org/dggs/) |
| OGC API - Routes | Routing services | [Docs](https://ogcapi.ogc.org/routes/) |
| OGC API - Moving Features | Trajectory data | [Docs](https://ogcapi.ogc.org/movingfeatures/) |
| OGC API - Connected Systems | IoT/sensor integration | [Docs](https://ogcapi.ogc.org/connectedsystems/) |

## ArcGIS REST Services

Esri's proprietary service types available via ArcGIS Server:

| Service Type | Purpose |
|--------------|---------|
| Map Service | Rendered map images |
| Feature Service | Editable vector features |
| Image Service | Raster/imagery access |
| Geocode Service | Address geocoding |
| Vector Tile Service | Vector tile serving |
| Geoprocessing Service | Server-side analysis |

See [[Guide - ArcGIS REST API]] for implementation details.

## Legacy vs Modern Comparison

| Legacy | Modern Replacement | Key Improvement |
|--------|-------------------|-----------------|
| WMS | OGC API - Maps | RESTful, JSON responses |
| WFS | OGC API - Features | GeoJSON native, pagination |
| WCS | OGC API - Coverages | Cloud-native, COG support |
| CSW | OGC API - Records | JSON metadata, OpenAPI |
| WPS | OGC API - Processes | Async execution, chaining |

## See Also

- [[List - GIS Standards Organizations]]
- [[Guide - ArcGIS REST API]]
- [[MOC - GIS]]

## Backlinks

```dataview
LIST FROM [[List - OGC Web Service Standards]] 
WHERE file.name != this.file.name
```





