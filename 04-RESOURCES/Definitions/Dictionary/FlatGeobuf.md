---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A performant binary encoding for geographic data with streaming support
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
aliases:
  - FlatGeobuf
  - FGB
  - .fgb
publish: true
---

# FlatGeobuf
## Overview

**FlatGeobuf** is a performant binary encoding for geographic data based on FlatBuffers. It supports random access via HTTP range requests, making it ideal for streaming large datasets over the web without downloading the entire file.

## Key Features

| Feature | Description |
|---------|-------------|
| **Binary Format** | Compact, fast to parse |
| **Streaming** | HTTP range request support |
| **Spatial Index** | Optional R-tree for filtered reads |
| **Single File** | All data in one `.fgb` file |
| **Seekable** | Random access to features |
| **Attribute Types** | Full type support |

## Advantages

| Aspect | FlatGeobuf | GeoJSON | Shapefile |
|--------|------------|---------|-----------|
| Size | Small | Large | Medium |
| Parse speed | Fast | Slow | Medium |
| Streaming | Yes | No | No |
| Spatial index | Built-in | No | Separate |
| Single file | Yes | Yes | No |

## Usage

### GDAL/OGR

```bash
# convert geojson to flatgeobuf
ogr2ogr -f FlatGeobuf output.fgb input.geojson

# with spatial index
ogr2ogr -f FlatGeobuf -lco SPATIAL_INDEX=YES output.fgb input.geojson

# query with bbox filter
ogrinfo output.fgb -spat -122.5 37.7 -122.3 37.9
```

### JavaScript (Web)

```javascript
import { geojson } from 'flatgeobuf';

// stream features from URL with bbox filter
const bbox = { minX: -122.5, minY: 37.7, maxX: -122.3, maxY: 37.9 };
const iter = geojson.deserialize('https://example.com/data.fgb', bbox);

for await (const feature of iter) {
  console.log(feature);
}
```

### Leaflet Integration

```javascript
import { geojson } from 'flatgeobuf';

async function loadFlatGeobuf(map, url) {
  const response = await fetch(url);
  const iter = geojson.deserialize(response.body);
  
  const layer = L.geoJSON();
  for await (const feature of iter) {
    layer.addData(feature);
  }
  layer.addTo(map);
}
```

### R

```r
library(sf)

# read flatgeobuf
features <- sf::st_read("data.fgb")

# write flatgeobuf
sf::st_write(features, "output.fgb", driver = "FlatGeobuf")
```

### Python

```python
import geopandas as gpd

# read
gdf = gpd.read_file("data.fgb")

# write
gdf.to_file("output.fgb", driver="FlatGeobuf")
```

## When to Use

**Choose FlatGeobuf when:**
- Web streaming of vector data
- Need bbox filtering via HTTP
- Medium datasets (10-500MB)
- Binary efficiency matters
- Building web map applications

**Consider alternatives when:**
- Analytics queries → [GeoParquet](GeoParquet.md)
- Human readability → [GeoJSON](GeoJSON.md)
- Desktop GIS workflows → [GeoPackage](GeoPackage.md)

## Comparison with GeoParquet

| Aspect | FlatGeobuf | GeoParquet |
|--------|------------|------------|
| Orientation | Row-based | Columnar |
| Best for | Feature streaming | Analytics |
| Compression | Moderate | Excellent |
| Column selection | No | Yes |
| Ecosystem | Web mapping | Data science |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [Guide - Geospatial File Format Selection](Guide - Geospatial File Format Selection.md)
- [Row vs Columnar Geospatial Formats](Row vs Columnar Geospatial Formats.md)
- [GeoJSON](GeoJSON.md)
- [GeoParquet](GeoParquet.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

