---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Open building footprint datasets from major providers
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
aliases:
  - Building Footprints
  - Building Datasets
  - Open Buildings
publish: true
---

# List - Building Footprint Datasets
## Overview

Curated collection of **open building footprint datasets** from major providers. These datasets are essential for property analysis, urban planning, and geospatial applications.

## Major Providers

### Microsoft Building Footprints

AI-extracted building polygons covering the United States.

| Aspect | Details |
|--------|---------|
| **Coverage** | United States |
| **Buildings** | 129+ million |
| **Format** | GeoJSON |
| **License** | ODbL (Open Database License) |
| **GitHub** | [microsoft/USBuildingFootprints](https://github.com/microsoft/USBuildingFootprints) |
| **Global** | [microsoft/GlobalMLBuildingFootprints](https://github.com/microsoft/GlobalMLBuildingFootprints) |

**Features:**
- High-quality ML-derived footprints
- State-by-state downloads
- Regular updates
- Global dataset also available (1.2B+ buildings)

### Google Open Buildings

Global building footprints derived from satellite imagery.

| Aspect | Details |
|--------|---------|
| **Coverage** | Global (Africa, South Asia, Southeast Asia, Latin America, Caribbean) |
| **Buildings** | 1.8+ billion |
| **Format** | GeoJSON, CSV |
| **License** | CC-BY-4.0 |
| **Website** | [sites.research.google/open-buildings](https://sites.research.google/open-buildings/) |

**Features:**
- V3 includes confidence scores and plus codes
- Temporal coverage 2021-2023
- Optimized for developing regions

### Overture Maps Foundation Buildings

Merged and harmonized building data from multiple sources.

| Aspect | Details |
|--------|---------|
| **Coverage** | Global |
| **Buildings** | Growing (includes Microsoft, OSM, Esri contributions) |
| **Format** | GeoParquet |
| **License** | CDLA Permissive 2.0 |
| **Website** | [overturemaps.org](https://overturemaps.org) |

**Features:**
- Building height and floor count attributes
- Unified schema across sources
- Cloud-native GeoParquet format
- Monthly releases

### OpenStreetMap Buildings

Community-contributed building footprints.

| Aspect | Details |
|--------|---------|
| **Coverage** | Global (varies by region) |
| **Buildings** | 500+ million |
| **Format** | OSM PBF, GeoJSON via Overpass |
| **License** | ODbL |
| **Website** | [openstreetmap.org](https://openstreetmap.org) |

**Access Methods:**
- [Overpass Turbo](https://overpass-turbo.eu/) - Query API
- [Geofabrik](https://download.geofabrik.de/) - Regional extracts
- [osmextract](https://cran.r-project.org/package=osmextract) - R package

## Provider Comparison

| Provider | Coverage | Buildings | Format | Height Data | License |
|----------|----------|-----------|--------|-------------|---------|
| Microsoft US | USA | 129M+ | GeoJSON | No | ODbL |
| Microsoft Global | Global | 1.2B+ | GeoJSON | No | ODbL |
| Google Open Buildings | Global* | 1.8B | GeoJSON/CSV | No | CC-BY-4.0 |
| Overture Maps | Global | Growing | GeoParquet | Yes | CDLA |
| OpenStreetMap | Global | 500M+ | OSM/GeoJSON | Sometimes | ODbL |

*Google coverage focused on developing regions

## Commercial Providers

| Provider | Description | Links |
|----------|-------------|-------|
| Regrid | Building footprints as add-on to parcel data | [Website](https://regrid.com) |
| CoreLogic ParcelPoint | Premium building footprints with attributes | [Website](https://corelogic.com) |
| Nearmap | AI-derived 3D building models | [Website](https://nearmap.com) |
| Pictometry (EagleView) | Oblique imagery-derived footprints | [Website](https://eagleview.com) |

## Access via Cloud Platforms

| Platform | Available Datasets | Links |
|----------|-------------------|-------|
| AWS Open Data | Microsoft, Overture | [Registry](https://registry.opendata.aws) |
| Google Earth Engine | Google Open Buildings | [Catalog](https://developers.google.com/earth-engine/datasets) |
| Microsoft Planetary Computer | Microsoft Buildings | [Website](https://planetarycomputer.microsoft.com) |
| Source Cooperative | Overture, others | [Website](https://source.coop) |

## Usage Examples

### R - Download Microsoft Buildings

```r
# download state building footprints
library(sf)
library(httr2)

state <- "Colorado"
url <- glue::glue(
 "https://usbuildingdata.blob.core.windows.net/usbuildings-v2/{state}.geojson.zip"
)

# download and read
temp <- tempfile(fileext = ".zip")
download.file(url, temp)
buildings <- sf::st_read(unzip(temp))
```

### Python - Query Overture via DuckDB

```python
import duckdb

con = duckdb.connect()
con.execute("INSTALL spatial; LOAD spatial;")

# query buildings for a bbox
query = """
SELECT *
FROM read_parquet('s3://overturemaps-us-west-2/release/2024-*/theme=buildings/*')
WHERE bbox.xmin > -105.3 AND bbox.xmax < -104.9
  AND bbox.ymin > 39.6 AND bbox.ymax < 39.8
"""
buildings = con.execute(query).fetchdf()
```

## Notes

- **Microsoft** provides the best US coverage with consistent quality
- **Overture Maps** is emerging as the unified standard with richer attributes
- **Google** excels in developing regions with sparse OSM coverage
- Consider **freshness**: AI-derived datasets update less frequently than OSM
- **Licensing**: Check license requirements for commercial use

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - Federal Geospatial Data Sources](List - Federal Geospatial Data Sources.md)
- [List - Property Data Platforms](List - Property Data Platforms.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

