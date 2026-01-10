---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A file format for storing tiled map data in a single, compact file for web mapping.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/FileFormat
aliases:
  - PMTiles
  - Protomaps Tiles
---

# PMTiles
## Overview

**PMTiles** is a file format for storing and serving tiled map data in a single, compact file, optimized for efficient access and rendering in web mapping applications. PMTiles enables serverless tile hosting by using HTTP range requests to fetch only needed tiles.

## Key Concepts

**Single file** contains all tiles in one archive.
**HTTP range requests** retrieve individual tiles without server-side logic.
**Tile addressing** uses Z/X/Y coordinates to locate tiles.
**Compression** reduces file size (gzip supported).
**Cloud-native** works directly from object storage.

## Advantages

| Advantage | Description |
|-----------|-------------|
| Serverless | No tile server required |
| Static hosting | Works with any HTTP server |
| Cost-effective | Use cheap object storage |
| Portable | Single file to deploy |

## Comparison

| Format | Files | Server Required |
|--------|-------|-----------------|
| PMTiles | 1 | No |
| MBTiles | 1 | Yes (SQLite) |
| XYZ tiles | Many | No |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Mapbox Vector Tile (MVT)](Mapbox Vector Tile (MVT).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Zoom](Zoom.md)

### Backlinks
<!-- dynamic content -->
