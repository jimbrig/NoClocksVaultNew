---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A specification for organizing and sharing geospatial data in a standardized discoverable way.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/DataEngineering
  - Type/Definition
  - Type/Acronym
aliases:
  - SpatioTemporal Asset Catalog
  - STAC
---

# SpatioTemporal Asset Catalog (STAC)
## Overview

**SpatioTemporal Asset Catalog (STAC)** is a specification for organizing and sharing geospatial data in a standardized way, enabling easier discovery and access to spatial datasets. STAC provides a common language for describing geospatial assets and their metadata.

## Key Concepts

**Item** is a single spatiotemporal asset (e.g., one satellite scene).
**Catalog** is a collection of Items and child Catalogs.
**Collection** is a set of related Items with shared metadata.
**Asset** is a file associated with an Item (COG, thumbnail, metadata).
**Extension** adds domain-specific metadata fields.

## STAC Components

| Component | Description |
|-----------|-------------|
| STAC Catalog | JSON file organizing Items/Collections |
| STAC Collection | JSON describing a dataset collection |
| STAC Item | JSON describing a single asset |
| STAC API | RESTful API for searching catalogs |

## Example Item Structure

```json
{
  "type": "Feature",
  "stac_version": "1.0.0",
  "id": "scene-123",
  "geometry": {...},
  "bbox": [...],
  "properties": {
    "datetime": "2024-01-15T10:30:00Z"
  },
  "assets": {
    "image": {"href": "s3://bucket/image.tif"}
  }
}
```

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md)
- [GeoJSON](GeoJSON.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)

### Backlinks
<!-- dynamic content -->
