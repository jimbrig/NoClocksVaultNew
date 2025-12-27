---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Esri's integrated geographic information system platform
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
aliases:
  - ArcGIS
  - ArcGIS Pro
  - ArcGIS Online
  - AGOL
publish: true
---

# ArcGIS
## Overview

**ArcGIS** is [Esri's](Environmental Systems Research Institute (ESRI).md) comprehensive geographic information system platform for creating, managing, sharing, and analyzing spatial data. It includes desktop, server, mobile, and cloud components used by organizations worldwide for enterprise GIS.

## Platform Components

| Component | Description |
|-----------|-------------|
| **ArcGIS Pro** | Desktop GIS application (replaced ArcMap) |
| **ArcGIS Online** | Cloud-hosted GIS platform |
| **ArcGIS Enterprise** | Self-hosted server platform |
| **ArcGIS Mobile** | Field data collection apps |
| **ArcGIS API** | Developer SDKs and APIs |

## ArcGIS Pro

Modern 64-bit desktop GIS with 2D/3D capabilities:

- Project-based workflow
- Multiple map views
- 3D scene editing
- Python (arcpy) scripting
- ModelBuilder automation
- Deep learning integration

## ArcGIS Online (AGOL)

Cloud platform for hosting and sharing geospatial content:

| Feature | Description |
|---------|-------------|
| Hosted Layers | Feature and tile services |
| Web Maps | Interactive map compositions |
| Web Apps | Configurable applications |
| Analysis | Cloud geoprocessing |
| Living Atlas | Esri curated content |

## ArcGIS REST API

All ArcGIS services expose a REST API:

```
https://<server>/<instance>/rest/services/<folder>/<service>/<type>
```

**Common Operations:**

| Endpoint | Description |
|----------|-------------|
| `/query` | Query features |
| `/identify` | Identify features at location |
| `/find` | Search attribute values |
| `/export` | Export map image |

See [Guide - ArcGIS REST API](Guide - ArcGIS REST API.md) for detailed usage.

## Data Formats

| Format | Description |
|--------|-------------|
| File Geodatabase (.gdb) | Primary Esri format, feature-rich |
| Shapefile (.shp) | Legacy format, widely supported |
| Feature Layer | Hosted editable layer |
| Tile Layer | Pre-rendered map tiles |
| Scene Layer | 3D content (I3S format) |

## R Integration

```r
# using arcgislayers package
library(arcgislayers)

# connect to feature service
url <- "https://services.arcgis.com/.../FeatureServer/0"
layer <- arc_open(url)

# query features
features <- arc_select(layer, where = "STATE = 'CA'")
```

## Python Integration

```python
from arcgis import GIS

# connect to arcgis online
gis = GIS("https://www.arcgis.com", "username", "password")

# search for content
items = gis.content.search("parcels", item_type="Feature Layer")

# access feature layer
layer = items[0].layers[0]
features = layer.query(where="STATE = 'CA'")
```

## Open Alternatives

| Need | ArcGIS | Open Source |
|------|--------|-------------|
| Desktop GIS | ArcGIS Pro | [QGIS](QGIS.md) |
| Map Server | ArcGIS Server | [GeoServer](GeoServer.md), MapServer |
| Web Maps | ArcGIS Online | [MapLibre](MapLibre.md), [Leaflet.js](Leaflet.js.md) |
| Spatial DB | Enterprise GDB | [PostGIS](PostGIS.md) |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [Guide - ArcGIS REST API](Guide - ArcGIS REST API.md)
- [Environmental Systems Research Institute (ESRI)](Environmental Systems Research Institute (ESRI).md)
- [QGIS](QGIS.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

