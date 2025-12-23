---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A Parquet format variant with support for geospatial data types and metadata.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/DataEngineering
  - Type/Definition
  - Type/FileFormat
aliases:
  - GeoParquet
  - Geo Parquet
---

# GeoParquet

```table-of-contents
```

## Overview

**GeoParquet** is a variant of the [[Parquet]] file format that includes support for geospatial data types and metadata, enabling efficient storage and analysis of spatial data in big data environments. GeoParquet stores geometries as Well-Known Binary (WKB) and includes spatial metadata in the file footer.

## Key Concepts

**Geometry column** stores WKB-encoded geometries.
**Spatial metadata** includes CRS, geometry type, and bounding box.
**Column metadata** describes the geometry column in Parquet schema.
**Encoding** uses WKB for geometry serialization.
**Bounding box** is stored in metadata for spatial filtering.

## Metadata

```json
{
  "version": "1.0.0",
  "primary_column": "geometry",
  "columns": {
    "geometry": {
      "encoding": "WKB",
      "geometry_types": ["Polygon", "MultiPolygon"],
      "crs": {...},
      "bbox": [-180, -90, 180, 90]
    }
  }
}
```

## Benefits over Shapefile/GeoJSON

- No file size limits
- Columnar access for analytics
- Better compression
- Type preservation
- Cloud-native access patterns

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Parquet]]
- [[GeoJSON]]
- [[Shapefile]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[GeoParquet]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/GeoParquet"
```

