---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A data type for storing large amounts of binary data like images or geospatial files.
tags:
  - Status/Complete
  - Topic/DataEngineering
  - Type/Definition
  - Type/Acronym
aliases:
  - Binary Large Object
  - Blob
  - BLOB
---

# Binary Large Object (Blob)
## Overview

**Binary Large Object (Blob)** is a data type used to store large amounts of binary data, such as images or geospatial files, often used in databases and cloud storage systems. In cloud computing, blob storage provides scalable object storage for unstructured data.

## Key Concepts

**Binary data** is raw bytes without text encoding.
**Object storage** organizes data as discrete objects with metadata.
**Container/Bucket** is a logical grouping of blobs.
**Access tier** determines storage cost and retrieval speed (hot, cool, archive).
**CDN integration** enables global distribution of blob content.

## Cloud Blob Storage

| Provider | Service |
|----------|---------|
| Azure | Blob Storage |
| AWS | S3 |
| Google Cloud | Cloud Storage |

## GIS Applications

- Storing raster imagery (GeoTIFF, COG)
- Hosting tile caches (PMTiles)
- Distributing large vector datasets
- Archiving spatial data backups

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md)
- [GeoTIFF](GeoTIFF.md)

### Backlinks
<!-- dynamic content -->
