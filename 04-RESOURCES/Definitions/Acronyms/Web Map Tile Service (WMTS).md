---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: OGC standard for serving pre-rendered map tiles for web mapping applications.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Web Map Tile Service
  - WMTS
publish: true
---

# Web Map Tile Service (WMTS)
## Overview

**Web Map Tile Service (WMTS)** is an [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md) standard for serving pre-rendered, cached map tiles. Unlike [Web Map Service (WMS)](Web Map Service (WMS).md) which renders maps on-demand, WMTS serves pre-generated tiles for faster performance and better scalability.

## Key Concepts

| Concept | Description |
|---------|-------------|
| **Tile** | Pre-rendered image at a fixed size (typically 256x256 pixels) |
| **Tile Matrix** | Grid of tiles at a specific zoom level |
| **Tile Matrix Set** | Collection of tile matrices for all zoom levels |
| **Tile Pyramid** | Hierarchical structure of tiles at different resolutions |

## Operations

### GetCapabilities

Returns XML describing available layers and tile matrix sets.

```
GET /wmts?service=WMTS&version=1.0.0&request=GetCapabilities
```

### GetTile

Returns a specific tile by layer, matrix, row, and column.

```
GET /wmts?service=WMTS&version=1.0.0&request=GetTile&layer=roads&style=default&format=image/png&TileMatrixSet=GoogleMapsCompatible&TileMatrix=12&TileRow=1234&TileCol=5678
```

## URL Templates

WMTS supports RESTful URL templates for easier integration:

```
https://server.com/wmts/{layer}/{TileMatrixSet}/{TileMatrix}/{TileRow}/{TileCol}.png
```

Common patterns:
- XYZ: `/{z}/{x}/{y}.png` (used by Leaflet, OpenLayers)
- TMS: `/{z}/{x}/{y}.png` (y-axis inverted)
- QuadKey: Single key encoding (Bing Maps)

## Tile Matrix Sets

| Name | EPSG | Description |
|------|------|-------------|
| GoogleMapsCompatible | 3857 | Web Mercator (most common) |
| WorldCRS84Quad | 4326 | Geographic WGS84 |
| UTM | Various | UTM zone-based |

## Advantages over WMS

| Aspect | WMTS | WMS |
|--------|------|-----|
| Performance | Pre-cached, fast | On-demand, slower |
| Scalability | Highly scalable | Server-intensive |
| Flexibility | Fixed styles | Dynamic styling |
| Caching | Built-in | Optional |

## Modern Alternatives

- [OGC API - Tiles](OGC API - Tiles.md) - Modern REST API replacement
- [Mapbox Vector Tile (MVT)](Mapbox Vector Tile (MVT).md) - Vector tiles for dynamic styling
- [PMTiles](PMTiles.md) - Single-file tile archive

## See Also

- [Web Map Service (WMS)](Web Map Service (WMS).md)
- [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md)
- [List - GIS Standards Organizations](List - GIS Standards Organizations.md)

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### Backlinks
<!-- dynamic content -->
