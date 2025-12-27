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
## Overview

Map of Content for **Geographic Information Systems (GIS)** and geospatial technologies. This covers spatial data management, analysis, visualization, standards, and related tools.

## Architecture & Concepts

Foundational knowledge for building modern geospatial systems:

| Note | Description |
|------|-------------|
| [Cloud Native Geospatial Architecture](Cloud Native Geospatial Architecture.md) | Architectural principles for modern cloud-native GIS systems |
| [Spatial Indexing Trade-offs](Spatial Indexing Trade-offs.md) | When to use H3 vs S2 vs traditional spatial indexes |
| [Row vs Columnar Geospatial Formats](Row vs Columnar Geospatial Formats.md) | Understanding GeoJSON vs GeoParquet trade-offs |

## Curated Lists

### Data Sources & Providers

| List | Description |
|------|-------------|
| [List - Federal Geospatial Data Sources](List - Federal Geospatial Data Sources.md) | USGS, FEMA, Census, NOAA, and federal data sources |
| [List - Property Data Platforms](List - Property Data Platforms.md) | Parcel data providers and property intelligence APIs |
| [List - Building Footprint Datasets](List - Building Footprint Datasets.md) | Open building footprint datasets (Microsoft, Google, Overture) |

### Standards & Organizations

| List | Description |
|------|-------------|
| [List - GIS Standards Organizations](List - GIS Standards Organizations.md) | OGC, ISO TC 211, FGDC, and standards bodies |
| [List - GIS Open Standards](List - GIS Open Standards.md) | Comprehensive OGC, ISO, and industry standards reference |
| [List - OGC Web Service Standards](List - OGC Web Service Standards.md) | WMS, WFS, OGC API, and service specifications |

### Tools & Libraries

| List | Description |
|------|-------------|
| [List - GIS Web Mapping Libraries](List - GIS Web Mapping Libraries.md) | JavaScript libraries for interactive maps (Leaflet, MapLibre, etc.) |
| [List - R Geospatial Packages](List - R Geospatial Packages.md) | R packages for spatial analysis, visualization, and data access |
| [List - Spatial Databases](List - Spatial Databases.md) | PostGIS, Supabase, DuckDB spatial extensions |
| [List - GIS AI Tools](List - GIS AI Tools.md) | AI-powered GIS tools and geospatial machine learning |
| [List - Routing and Navigation Services](List - Routing and Navigation Services.md) | Routing engines, geocoding, and accessibility APIs |

## Guides

| Guide | Description |
|-------|-------------|
| [Guide - Geospatial File Format Selection](Guide - Geospatial File Format Selection.md) | Choosing the right format for your use case |
| [Guide - ArcGIS REST API](Guide - ArcGIS REST API.md) | Working with Esri's ArcGIS REST services |

## Key Definitions

### Data Formats

| Term | Description |
|------|-------------|
| [GeoJSON](GeoJSON.md) | JSON-based format for encoding geographic data |
| [GeoParquet](GeoParquet.md) | Columnar format for efficient geospatial storage |
| [GeoTIFF](GeoTIFF.md) | Raster format with embedded georeferencing |
| [Cloud Optimized GeoTIFF (COG)](Cloud Optimized GeoTIFF (COG).md) | Cloud-native raster format |
| [PMTiles](PMTiles.md) | Single-file tile archive format |
| [Mapbox Vector Tile (MVT)](Mapbox Vector Tile (MVT).md) | Vector tile specification |
| [Shapefile](Shapefile.md) | Legacy vector format (use GeoPackage instead) |
| [GeoPackage](GeoPackage.md) | OGC SQLite-based container format |

### Web Services

| Term | Description |
|------|-------------|
| [Web Map Service (WMS)](Web Map Service (WMS).md) | OGC standard for map image rendering |
| [Web Feature Service (WFS)](Web Feature Service (WFS).md) | OGC standard for vector feature access |
| [Web Coverage Service (WCS)](Web Coverage Service (WCS).md) | OGC standard for raster coverage access |
| [Web Map Tile Service (WMTS)](Web Map Tile Service (WMTS).md) | OGC standard for pre-rendered tiles |
| [SpatioTemporal Asset Catalog (STAC)](SpatioTemporal Asset Catalog (STAC).md) | Metadata and discovery standard |
| [OGC API - Features](OGC API - Features.md) | Modern RESTful vector data API |

### Spatial Concepts

| Term | Description |
|------|-------------|
| [Geographic Information System (GIS)](Geographic Information System (GIS).md) | Definition and overview |
| [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md) | Standards development organization |
| [Digital Elevation Model (DEM)](Digital Elevation Model (DEM).md) | Grid-based elevation representation |
| [Hexagonal Hierarchical Spatial Index (H3)](Hexagonal Hierarchical Spatial Index (H3).md) | Uber's hexagonal grid system |
| [OpenStreetMap (OSM)](OpenStreetMap (OSM).md) | Collaborative mapping project |
| [Projection](Projection.md) | Map projection fundamentals |
| [Datum](Datum.md) | Geodetic datum reference |
| [Coordinates](Coordinates.md) | Coordinate systems and CRS |

### Database & Tools

| Term | Description |
|------|-------------|
| [PostGIS](PostGIS.md) | PostgreSQL spatial extension |
| [Geospatial Data Abstraction Library (GDAL)](Geospatial Data Abstraction Library (GDAL).md) | GDAL/OGR toolkit |
| [QGIS](QGIS.md) | Open source desktop GIS |
| [Topologically Integrated Geographic Encoding and Referencing (TIGER)](Topologically Integrated Geographic Encoding and Referencing (TIGER).md) | US Census geography |

### Geometry Types

| Term | Description |
|------|-------------|
| [Point](Point.md) | Zero-dimensional geometry |
| [LineString](LineString.md) | One-dimensional geometry |
| [Polygon](Polygon.md) | Two-dimensional geometry |
| [MultiPolygon](MultiPolygon.md) | Collection of polygons |
| [Feature](Feature.md) | Geometry with attributes |
| [Layer](Layer.md) | Collection of features |

### Geographic Units

| Term | Description |
|------|-------------|
| [Parcel](Parcel.md) | Land ownership boundary |
| [Census Tract (CT)](Census Tract (CT).md) | Census geography unit |
| [Block Group (BG)](Block Group (BG).md) | Census block group |
| [ZIP Code Tabulation Area (ZCTA)](ZIP Code Tabulation Area (ZCTA).md) | ZIP code approximation |
| [Core-Based Statistical Area (CBSA)](Core-Based Statistical Area (CBSA).md) | Metropolitan/micropolitan areas |

## Core Tools

### Desktop GIS

- [QGIS](QGIS.md) - Open source desktop GIS
- [ArcGIS](ArcGIS.md) - Esri's enterprise GIS platform

### Web Mapping

- [Leaflet.js](Leaflet.js.md) - Lightweight web mapping
- [MapLibre](MapLibre.md) - Open source map rendering
- [Mapbox](Mapbox.md) - Commercial mapping platform
- [OpenLayers](OpenLayers.md) - Feature-rich web mapping
- [deck.gl](deck.gl.md) - Large-scale data visualization
- [kepler.gl](kepler.gl.md) - Geospatial data visualization

### Data Processing

- [Apache Arrow](Apache Arrow.md) - Columnar memory format
- [DuckDB](DuckDB.md) - Analytical database with spatial support
- [tippecannoe](tippecannoe.md) - Vector tile generation
- [GeoServer](GeoServer.md) - Open source map server

## Related Topics

- [MOC - R](MOC - R.md) - R programming (geospatial packages)
- [MOC - RealEstate](MOC - RealEstate.md) - Real estate domain
- [MOC - Cloud](MOC - Cloud.md) - Cloud platforms for GIS
- [MOC - DataEngineering](MOC - DataEngineering.md) - Data pipelines

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
<!-- dynamic content -->
