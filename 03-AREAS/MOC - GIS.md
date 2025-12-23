---
creation_date: 2024-04-12
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for GIS (Geographic Information Systems) and geospatial topics
tags:
  - Status/Ongoing
  - Type/MOC
  - Topic/GIS
aliases:
  - GIS
  - Geospatial
  - Geographic Information Systems
publish: true
---

# MOC - GIS

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Map of Content for **Geographic Information Systems (GIS)** and geospatial technologies. This covers spatial data management, analysis, visualization, standards, and related tools.

## Architecture & Concepts

Foundational knowledge for building modern geospatial systems:

| Note | Description |
|------|-------------|
| [[Cloud Native Geospatial Architecture]] | Architectural principles for modern cloud-native GIS systems |
| [[Spatial Indexing Trade-offs]] | When to use H3 vs S2 vs traditional spatial indexes |
| [[Row vs Columnar Geospatial Formats]] | Understanding GeoJSON vs GeoParquet trade-offs |

## Curated Lists

### Data Sources & Providers

| List | Description |
|------|-------------|
| [[List - Federal Geospatial Data Sources]] | USGS, FEMA, Census, NOAA, and federal data sources |
| [[List - Property Data Platforms]] | Parcel data providers and property intelligence APIs |
| [[List - Building Footprint Datasets]] | Open building footprint datasets (Microsoft, Google, Overture) |

### Standards & Organizations

| List | Description |
|------|-------------|
| [[List - GIS Standards Organizations]] | OGC, ISO TC 211, FGDC, and standards bodies |
| [[List - GIS Open Standards]] | Comprehensive OGC, ISO, and industry standards reference |
| [[List - OGC Web Service Standards]] | WMS, WFS, OGC API, and service specifications |

### Tools & Libraries

| List | Description |
|------|-------------|
| [[List - GIS Web Mapping Libraries]] | JavaScript libraries for interactive maps (Leaflet, MapLibre, etc.) |
| [[List - R Geospatial Packages]] | R packages for spatial analysis, visualization, and data access |
| [[List - Spatial Databases]] | PostGIS, Supabase, DuckDB spatial extensions |
| [[List - GIS AI Tools]] | AI-powered GIS tools and geospatial machine learning |
| [[List - Routing and Navigation Services]] | Routing engines, geocoding, and accessibility APIs |

## Guides

| Guide | Description |
|-------|-------------|
| [[Guide - Geospatial File Format Selection]] | Choosing the right format for your use case |
| [[Guide - ArcGIS REST API]] | Working with Esri's ArcGIS REST services |

## Key Definitions

### Data Formats

| Term | Description |
|------|-------------|
| [[GeoJSON]] | JSON-based format for encoding geographic data |
| [[GeoParquet]] | Columnar format for efficient geospatial storage |
| [[GeoTIFF]] | Raster format with embedded georeferencing |
| [[Cloud Optimized GeoTIFF (COG)]] | Cloud-native raster format |
| [[PMTiles]] | Single-file tile archive format |
| [[Mapbox Vector Tile (MVT)]] | Vector tile specification |
| [[Shapefile]] | Legacy vector format (use GeoPackage instead) |
| [[GeoPackage]] | OGC SQLite-based container format |

### Web Services

| Term | Description |
|------|-------------|
| [[Web Map Service (WMS)]] | OGC standard for map image rendering |
| [[Web Feature Service (WFS)]] | OGC standard for vector feature access |
| [[Web Coverage Service (WCS)]] | OGC standard for raster coverage access |
| [[Web Map Tile Service (WMTS)]] | OGC standard for pre-rendered tiles |
| [[SpatioTemporal Asset Catalog (STAC)]] | Metadata and discovery standard |
| [[OGC API - Features]] | Modern RESTful vector data API |

### Spatial Concepts

| Term | Description |
|------|-------------|
| [[Geographic Information System (GIS)]] | Definition and overview |
| [[Open Geospatial Consortium (OGC)]] | Standards development organization |
| [[Digital Elevation Model (DEM)]] | Grid-based elevation representation |
| [[Hexagonal Hierarchical Spatial Index (H3)]] | Uber's hexagonal grid system |
| [[OpenStreetMap (OSM)]] | Collaborative mapping project |
| [[Projection]] | Map projection fundamentals |
| [[Datum]] | Geodetic datum reference |
| [[Coordinates]] | Coordinate systems and CRS |

### Database & Tools

| Term | Description |
|------|-------------|
| [[PostGIS]] | PostgreSQL spatial extension |
| [[Geospatial Data Abstraction Library (GDAL)]] | GDAL/OGR toolkit |
| [[QGIS]] | Open source desktop GIS |
| [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]] | US Census geography |

### Geometry Types

| Term | Description |
|------|-------------|
| [[Point]] | Zero-dimensional geometry |
| [[LineString]] | One-dimensional geometry |
| [[Polygon]] | Two-dimensional geometry |
| [[MultiPolygon]] | Collection of polygons |
| [[Feature]] | Geometry with attributes |
| [[Layer]] | Collection of features |

### Geographic Units

| Term | Description |
|------|-------------|
| [[Parcel]] | Land ownership boundary |
| [[Census Tract (CT)]] | Census geography unit |
| [[Block Group (BG)]] | Census block group |
| [[ZIP Code Tabulation Area (ZCTA)]] | ZIP code approximation |
| [[Core-Based Statistical Area (CBSA)]] | Metropolitan/micropolitan areas |

## Core Tools

### Desktop GIS

- [[QGIS]] - Open source desktop GIS
- [[ArcGIS]] - Esri's enterprise GIS platform

### Web Mapping

- [[Leaflet.js]] - Lightweight web mapping
- [[MapLibre]] - Open source map rendering
- [[Mapbox]] - Commercial mapping platform
- [[OpenLayers]] - Feature-rich web mapping
- [[deck.gl]] - Large-scale data visualization
- [[kepler.gl]] - Geospatial data visualization

### Data Processing

- [[Apache Arrow]] - Columnar memory format
- [[DuckDB]] - Analytical database with spatial support
- [[tippecannoe]] - Vector tile generation
- [[GeoServer]] - Open source map server

## Related Topics

- [[MOC - R]] - R programming (geospatial packages)
- [[MOC - RealEstate]] - Real estate domain
- [[MOC - Cloud]] - Cloud platforms for GIS
- [[MOC - DataEngineering]] - Data pipelines

## External Resources

### Documentation

- [OGC Standards](https://www.ogc.org/standards/)
- [Cloud-Native Geospatial Guide](https://guide.cloudnativegeo.org/)
- [PostGIS Documentation](https://postgis.net/documentation/)
- [GDAL Documentation](https://gdal.org/en/stable/)

### Learning

- [Geocomputation with R](https://r.geocompx.org/)
- [Spatial Data Science with R](https://rspatial.org/)
- [MapLibre GL JS Docs](https://maplibre.org/maplibre-gl-js/docs/)
- [CRAN Spatial Task View](https://cran.r-project.org/web/views/Spatial.html)

### Communities

- [Cloud-Native Geospatial Forum](https://cloudnativegeo.org/)
- [OSGeo Foundation](https://www.osgeo.org/)
- [r-spatial](https://r-spatial.org/)

## Backlinks

```dataview
LIST
FROM [[MOC - GIS]]
WHERE file.name != this.file.name
```
