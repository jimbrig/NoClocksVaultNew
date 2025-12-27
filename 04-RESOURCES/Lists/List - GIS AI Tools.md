---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: AI-powered tools and frameworks for geospatial analysis
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
  - Topic/AI
aliases:
  - GIS AI Tools
  - Geospatial AI
  - GeoAI Tools
publish: true
---

# List - GIS AI Tools
## Overview

Curated collection of **AI-powered tools and frameworks for geospatial analysis**, including machine learning for remote sensing, text-to-map tools, and LLM integrations.

## GeoAI Frameworks

### Python Packages

| Package | Description | Links |
|---------|-------------|-------|
| geoai-py | Comprehensive framework for geospatial AI (segmentation, detection) | [PyPI](https://pypi.org/project/geoai-py/) |
| TorchGeo | PyTorch library for geospatial data (datasets, samplers, transforms) | [GitHub](https://github.com/microsoft/torchgeo) |
| TerraTorch | Foundational models for geospatial applications | [GitHub](https://github.com/IBM/terratorch) |
| rasterio | Raster data I/O (foundation for ML pipelines) | [GitHub](https://github.com/rasterio/rasterio) |
| solaris | CosmiQ Works geospatial ML library | [GitHub](https://github.com/CosmiQ/solaris) |

### Deep Learning for Remote Sensing

| Tool | Description | Links |
|------|-------------|-------|
| Segment Anything Model (SAM) | Zero-shot segmentation for satellite imagery | [GitHub](https://github.com/facebookresearch/segment-anything) |
| Segment Geospatial | SAM for geospatial data | [GitHub](https://github.com/opengeos/segment-geospatial) |
| SITS (R) | Satellite image time series analysis | [CRAN](https://cran.r-project.org/package=sits) |
| eo-learn | Earth observation ML framework | [GitHub](https://github.com/sentinel-hub/eo-learn) |

## Text-to-Map & LLM Tools

| Tool | Description | Links |
|------|-------------|-------|
| MapsGPT | Generate maps from natural language prompts | [Website](https://www.mapsgpt.com) |
| Textomap | Text-to-map generation | [Website](https://www.textomap.com) |
| LLM-Geo | LLM-based geospatial analysis framework | Research |
| LLM-Find | LLM for geospatial data discovery | Research |
| Felt AI | AI-assisted map creation | [Website](https://felt.com) |

## QGIS AI Plugins

| Plugin | Description | Links |
|--------|-------------|-------|
| GeoAI | Vision-language model, semantic segmentation | [QGIS Plugins](https://plugins.qgis.org/plugins/geoai/) |
| Deepness | Deep learning inference in QGIS | [QGIS Plugins](https://plugins.qgis.org/plugins/deepness/) |
| GeoAI-Plugin | Building footprint extraction | [GitHub](https://github.com/nkarasiak/dzetsaka) |

## Cloud AI Platforms

| Platform | Description | Links |
|----------|-------------|-------|
| Google Earth Engine | Planetary-scale geospatial analysis | [Website](https://earthengine.google.com) |
| Microsoft Planetary Computer | AI for environmental science | [Website](https://planetarycomputer.microsoft.com) |
| AWS SageMaker Geospatial | ML for satellite imagery | [Website](https://aws.amazon.com/sagemaker/geospatial/) |
| Esri ArcGIS GeoAI | Deep learning in ArcGIS | [Website](https://www.esri.com/en-us/arcgis/geo-ai) |
| Descartes Labs | AI-powered geospatial platform | [Website](https://descarteslabs.com) |

## Feature Extraction & Detection

| Tool | Description | Links |
|------|-------------|-------|
| Microsoft Building Footprints | AI-extracted building polygons (US) | [GitHub](https://github.com/microsoft/USBuildingFootprints) |
| Google Open Buildings | Global building footprints | [Website](https://sites.research.google/open-buildings/) |
| NRCan GeoAI | Canadian roads, buildings, hydro extraction | [Website](https://geo.ca) |
| Overture Maps | AI-combined open map data | [Website](https://overturemaps.org) |

## Data Conversion & Processing

### GDAL/OGR

The foundational toolkit for geospatial data conversion.

| Aspect | Details |
|--------|---------|
| **Website** | [gdal.org](https://gdal.org) |
| **Best For** | Format conversion, projection transformation, raster processing |
| **Bindings** | Python, R, Java, C#, Julia |

### Common CLI Tools

| Tool | Description | Links |
|------|-------------|-------|
| tippecanoe | Build vector tilesets from GeoJSON | [GitHub](https://github.com/felt/tippecanoe) |
| ogr2ogr | Vector data conversion (GDAL) | [Docs](https://gdal.org/programs/ogr2ogr.html) |
| gdalwarp | Raster reprojection and warping | [Docs](https://gdal.org/programs/gdalwarp.html) |
| rio | Rasterio CLI for raster operations | [Docs](https://rasterio.readthedocs.io/en/stable/cli.html) |

## LLM Integration Resources

### Using ChatGPT/Claude with GIS

- Generate Python/R code for geospatial analysis
- Create SQL queries for PostGIS
- Explain GIS concepts and troubleshoot errors
- Generate data processing workflows

### Prompt Engineering for GIS

```
As a GIS expert, help me:
- Write a PostGIS query to find all parcels within 500m of a flood zone
- Create a Python script using geopandas to calculate parcel area
- Explain how H3 hexagonal indexing works for spatial aggregation
```

## Notes

- **TorchGeo** is the go-to PyTorch library for geospatial ML
- **Google Earth Engine** provides massive scale but requires cloud processing
- **GDAL** remains essential for any geospatial data pipeline
- Consider **segment-geospatial** for zero-shot image segmentation

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - R Geospatial Packages](List - R Geospatial Packages.md)
- [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

