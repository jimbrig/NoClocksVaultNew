---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Open source server for sharing geospatial data via OGC standards
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
aliases:
  - GeoServer
publish: true
---

# GeoServer
## Overview

**GeoServer** is an open-source server written in Java that allows users to share and edit geospatial data. It implements [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md) standards including [Web Map Service (WMS)](Web Map Service (WMS).md), [Web Feature Service (WFS)](Web Feature Service (WFS).md), and [Web Coverage Service (WCS)](Web Coverage Service (WCS).md), making it a cornerstone of open-source GIS infrastructure.

## Key Features

| Feature | Description |
|---------|-------------|
| **OGC Compliant** | WMS, WFS, WCS, WMTS, WPS |
| **Data Sources** | Shapefile, PostGIS, GeoPackage, Oracle, SQL Server |
| **Styling** | SLD (Styled Layer Descriptor) |
| **Security** | Role-based access control |
| **REST API** | Configuration via REST |
| **Web Admin** | Browser-based administration |

## Supported Services

| Service | Description |
|---------|-------------|
| WMS | Rendered map images |
| WMTS | Cached tile pyramids |
| WFS | Vector feature access and editing |
| WCS | Raster coverage access |
| WPS | Server-side geoprocessing |
| CSW | Catalog and metadata services |

## Data Sources

| Format | Type | Notes |
|--------|------|-------|
| [PostGIS](PostGIS.md) | Vector | Recommended for production |
| [GeoPackage](GeoPackage.md) | Vector/Raster | Good for file-based |
| Shapefile | Vector | Legacy support |
| GeoTIFF | Raster | Standard raster |
| ImageMosaic | Raster | Large imagery collections |
| Oracle Spatial | Vector | Enterprise |
| SQL Server | Vector | Enterprise |

## REST API Examples

### Get Layers

```bash
curl -u admin:geoserver /
  "http://localhost:8080/geoserver/rest/layers.json"
```

### Create Workspace

```bash
curl -u admin:geoserver -X POST /
  -H "Content-Type: application/json" /
  -d '{"workspace":{"name":"myworkspace"}}' /
  "http://localhost:8080/geoserver/rest/workspaces"
```

### Publish PostGIS Layer

```bash
curl -u admin:geoserver -X POST /
  -H "Content-Type: application/json" /
  -d '{
    "featureType": {
      "name": "parcels",
      "nativeName": "parcels",
      "srs": "EPSG:4326"
    }
  }' /
  "http://localhost:8080/geoserver/rest/workspaces/myworkspace/datastores/postgis/featuretypes"
```

## Docker Deployment

```yaml
# docker-compose.yml
version: '3'
services:
  geoserver:
    image: kartoza/geoserver:2.24.0
    ports:
      - "8080:8080"
    environment:
      - GEOSERVER_ADMIN_PASSWORD=geoserver
    volumes:
      - geoserver-data:/opt/geoserver/data_dir

volumes:
  geoserver-data:
```

## Alternatives

| Server | Best For |
|--------|----------|
| GeoServer | Full OGC stack, enterprise |
| [pg_tileserv](pg_tileserv.md) | Simple vector tiles from PostGIS |
| [pg_featureserv](pg_featureserv.md) | Simple OGC Features from PostGIS |
| MapServer | High-performance WMS |
| QGIS Server | QGIS project publishing |

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - OGC Web Service Standards](List - OGC Web Service Standards.md)
- [PostGIS](PostGIS.md)
- [Web Map Service (WMS)](Web Map Service (WMS).md)
- [Web Feature Service (WFS)](Web Feature Service (WFS).md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

