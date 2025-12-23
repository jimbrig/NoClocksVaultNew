---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A GeoTIFF optimized for efficient cloud access without downloading entire files.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/DataEngineering
  - Type/Definition
  - Type/Acronym
  - Type/FileFormat
aliases:
  - Cloud Optimized GeoTIFF
  - COG
---

# Cloud Optimized GeoTIFF (COG)

```table-of-contents
```

## Overview

**Cloud Optimized GeoTIFF (COG)** is a type of [[GeoTIFF]] file that is optimized for efficient access and processing in cloud environments, allowing for faster retrieval of specific portions of the data without needing to download the entire file. COGs use internal tiling and overviews to enable HTTP range requests.

## Key Concepts

**Internal tiling** organizes pixels into rectangular blocks for random access.
**Overviews** are reduced-resolution versions for quick previews.
**HTTP range requests** retrieve only needed bytes from cloud storage.
**Header optimization** places metadata at file start for fast reading.
**Compression** reduces file size (LZW, Deflate, ZSTD).

## Requirements

1. Tiled (not stripped) organization
2. Overviews included
3. Metadata at file start
4. Compression (optional but recommended)

## Benefits

| Benefit | Description |
|---------|-------------|
| Streaming | Read portions without full download |
| Scalability | Works with any HTTP-accessible storage |
| Efficiency | Only transfer needed data |
| Compatibility | Standard GeoTIFF readers still work |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[GeoTIFF]]
- [[Raster]]
- [[SpatioTemporal Asset Catalog (STAC)]]

### Backlinks

```dataview
LIST FROM [[Cloud Optimized GeoTIFF (COG)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Cloud Optimized GeoTIFF (COG)"
```

