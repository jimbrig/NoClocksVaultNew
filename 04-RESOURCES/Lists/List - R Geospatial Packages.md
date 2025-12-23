---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Curated list of R packages for geospatial analysis, visualization, and data access
tags:
  - Status/Ongoing
  - Type/List
  - Topic/R
  - Topic/GIS
aliases:
  - R Geospatial Packages
  - R Spatial Packages
  - Geospatial R Packages
publish: true
---

# List - R Geospatial Packages

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Curated collection of R packages for **geospatial analysis, visualization, and data access**. Based on the [CRAN Spatial Task View](https://cran.r-project.org/web/views/Spatial.html) and practical experience.

> [!TIP] Installation
> Install all core packages: `ctv::install.views("Spatial", coreOnly = TRUE)`

## Core Spatial Packages

The foundational packages for working with spatial data in R.

| Package | Description | Links |
|---------|-------------|-------|
| sf | Simple Features for R - modern vector data standard (OGC compliant) | [CRAN](https://cran.r-project.org/package=sf) - [Docs](https://r-spatial.github.io/sf/) |
| terra | Raster and vector spatial data analysis (successor to raster) | [CRAN](https://cran.r-project.org/package=terra) - [Docs](https://rspatial.org/terra/) |
| stars | Spatiotemporal arrays and raster/vector data cubes | [CRAN](https://cran.r-project.org/package=stars) - [Docs](https://r-spatial.github.io/stars/) |
| sp | Legacy spatial classes (superseded by sf) | [CRAN](https://cran.r-project.org/package=sp) |

## Geometry Operations

| Package | Description | Links |
|---------|-------------|-------|
| lwgeom | Lightweight geometry engine functions for sf | [CRAN](https://cran.r-project.org/package=lwgeom) |
| geos | High-performance GEOS bindings | [CRAN](https://cran.r-project.org/package=geos) |
| s2 | Spherical geometry operations (used by sf) | [CRAN](https://cran.r-project.org/package=s2) |
| wk | Well-known geometry parsing and writing | [CRAN](https://cran.r-project.org/package=wk) |
| sfheaders | Fast construction of sf objects | [CRAN](https://cran.r-project.org/package=sfheaders) |
| geosphere | Spherical trigonometry for geographic calculations | [CRAN](https://cran.r-project.org/package=geosphere) |

## Data Access - Census & Demographics

| Package | Description | Links |
|---------|-------------|-------|
| tidycensus | US Census Bureau data in tidy format with geometry | [CRAN](https://cran.r-project.org/package=tidycensus) - [Docs](https://walker-data.com/tidycensus/) |
| tigris | US Census TIGER/Line shapefiles (boundaries, roads, water) | [CRAN](https://cran.r-project.org/package=tigris) |
| censusapi | Access all Census Bureau APIs | [CRAN](https://cran.r-project.org/package=censusapi) |

## Data Access - Federal & Government

| Package | Description | Links |
|---------|-------------|-------|
| FedData | Download SSURGO, NED, NHD, NLCD and other federal data | [CRAN](https://cran.r-project.org/package=FedData) - [Docs](https://docs.ropensci.org/FedData/) |
| elevatr | Elevation data from multiple sources (AWS, OpenTopography) | [CRAN](https://cran.r-project.org/package=elevatr) |
| soilDB | NRCS soil databases (SSURGO, STATSGO) | [CRAN](https://cran.r-project.org/package=soilDB) |
| geodata | Climate, elevation, soil, crop, species occurrence data | [CRAN](https://cran.r-project.org/package=geodata) |
| terrainr | USGS National Map services | [CRAN](https://cran.r-project.org/package=terrainr) |

## Data Access - OpenStreetMap

| Package | Description | Links |
|---------|-------------|-------|
| osmdata | OpenStreetMap data via Overpass API | [CRAN](https://cran.r-project.org/package=osmdata) - [Docs](https://docs.ropensci.org/osmdata/) |
| osmextract | Download and convert large OSM extracts | [CRAN](https://cran.r-project.org/package=osmextract) |
| OpenStreetMap | OSM raster images | [CRAN](https://cran.r-project.org/package=OpenStreetMap) |

## Data Access - Natural & Global

| Package | Description | Links |
|---------|-------------|-------|
| rnaturalearth | Natural Earth map data (countries, coastlines, etc.) | [CRAN](https://cran.r-project.org/package=rnaturalearth) |
| rnaturalearthdata | Natural Earth datasets | [CRAN](https://cran.r-project.org/package=rnaturalearthdata) |
| giscoR | Eurostat GISCO spatial data | [CRAN](https://cran.r-project.org/package=giscoR) |
| cshapes | Historical country boundaries (1886-today) | [CRAN](https://cran.r-project.org/package=cshapes) |

## Data Access - Remote Sensing

| Package | Description | Links |
|---------|-------------|-------|
| rstac | SpatioTemporal Asset Catalog (STAC) client | [CRAN](https://cran.r-project.org/package=rstac) |
| rsi | Awesome Spectral Indices and STAC data | [CRAN](https://cran.r-project.org/package=rsi) |
| rgee | Google Earth Engine client | [CRAN](https://cran.r-project.org/package=rgee) |
| MODISTools | MODIS Land Products Subsets | [CRAN](https://cran.r-project.org/package=MODISTools) |
| sits | Satellite image time series analysis | [CRAN](https://cran.r-project.org/package=sits) |

## Visualization - Interactive Web Maps

| Package | Description | Links |
|---------|-------------|-------|
| leaflet | Interactive maps via Leaflet.js | [CRAN](https://cran.r-project.org/package=leaflet) - [Docs](https://rstudio.github.io/leaflet/) |
| leaflet.extras | Additional Leaflet plugins | [CRAN](https://cran.r-project.org/package=leaflet.extras) |
| leaflet.extras2 | More Leaflet plugins (time slider, etc.) | [CRAN](https://cran.r-project.org/package=leaflet.extras2) |
| leafem | Leaflet extensions for mapview | [CRAN](https://cran.r-project.org/package=leafem) |
| leaflegend | Custom legends for Leaflet | [CRAN](https://cran.r-project.org/package=leaflegend) |
| mapview | Quick interactive viewing of spatial data | [CRAN](https://cran.r-project.org/package=mapview) |
| mapdeck | Deck.gl and Mapbox GL maps | [CRAN](https://cran.r-project.org/package=mapdeck) |
| mapgl | MapLibre/Mapbox GL interface | [GitHub](https://github.com/walkerke/mapgl) |

## Visualization - Static Maps

| Package | Description | Links |
|---------|-------------|-------|
| tmap | Thematic maps with grammar of graphics | [CRAN](https://cran.r-project.org/package=tmap) - [Docs](https://r-tmap.github.io/tmap/) |
| mapsf | Thematic cartography (successor to cartography) | [CRAN](https://cran.r-project.org/package=mapsf) |
| ggplot2 | Grammar of graphics with geom_sf | [CRAN](https://cran.r-project.org/package=ggplot2) |
| ggspatial | ggplot2 extensions (north arrows, scale bars) | [CRAN](https://cran.r-project.org/package=ggspatial) |
| ggmap | ggplot2 with Google Maps and OSM | [CRAN](https://cran.r-project.org/package=ggmap) |
| rayshader | 3D visualization and hillshading | [CRAN](https://cran.r-project.org/package=rayshader) |

## Database Connectivity

| Package | Description | Links |
|---------|-------------|-------|
| rpostgis | PostGIS interface | [CRAN](https://cran.r-project.org/package=rpostgis) |
| RPostgres | PostgreSQL driver (works with PostGIS) | [CRAN](https://cran.r-project.org/package=RPostgres) |
| pool | Database connection pooling | [CRAN](https://cran.r-project.org/package=pool) |

## ArcGIS & Esri Integration

| Package | Description | Links |
|---------|-------------|-------|
| arcgislayers | Read ArcGIS Feature Services | [CRAN](https://cran.r-project.org/package=arcgislayers) |
| arcgisutils | ArcGIS REST API utilities | [CRAN](https://cran.r-project.org/package=arcgisutils) |
| esri2sf | Convert Esri services to sf | [GitHub](https://github.com/yonghah/esri2sf) |
| arcpullr | Pull ArcGIS REST API data | [CRAN](https://cran.r-project.org/package=arcpullr) |

## Spatial Analysis & Geostatistics

| Package | Description | Links |
|---------|-------------|-------|
| gstat | Geostatistical modeling and kriging | [CRAN](https://cran.r-project.org/package=gstat) |
| spdep | Spatial dependence and autocorrelation | [CRAN](https://cran.r-project.org/package=spdep) |
| spatialreg | Spatial regression models (SAR, CAR) | [CRAN](https://cran.r-project.org/package=spatialreg) |
| spatstat | Point pattern analysis | [CRAN](https://cran.r-project.org/package=spatstat) |
| exactextractr | Fast zonal statistics | [CRAN](https://cran.r-project.org/package=exactextractr) |

## Network Analysis

| Package | Description | Links |
|---------|-------------|-------|
| sfnetworks | Tidy spatial network analysis | [CRAN](https://cran.r-project.org/package=sfnetworks) |
| stplanr | Sustainable transport planning | [CRAN](https://cran.r-project.org/package=stplanr) |

## Geocoding

| Package | Description | Links |
|---------|-------------|-------|
| tidygeocoder | Tidy geocoding with multiple services | [CRAN](https://cran.r-project.org/package=tidygeocoder) |

## File I/O & Utilities

| Package | Description | Links |
|---------|-------------|-------|
| gdalraster | GDAL API bindings for raster/vector | [CRAN](https://cran.r-project.org/package=gdalraster) |
| vapour | Low-level GDAL access | [CRAN](https://cran.r-project.org/package=vapour) |
| rmapshaper | Mapshaper for topology-aware simplification | [CRAN](https://cran.r-project.org/package=rmapshaper) |
| geojsonio | GeoJSON I/O | [CRAN](https://cran.r-project.org/package=geojsonio) |

## LiDAR & Point Clouds

| Package | Description | Links |
|---------|-------------|-------|
| lidR | LiDAR data processing | [CRAN](https://cran.r-project.org/package=lidR) |
| whitebox | WhiteboxTools interface | [CRAN](https://cran.r-project.org/package=whitebox) |

## Classification & Color

| Package | Description | Links |
|---------|-------------|-------|
| classInt | Class interval algorithms for thematic maps | [CRAN](https://cran.r-project.org/package=classInt) |
| viridis | Color-blind friendly palettes | [CRAN](https://cran.r-project.org/package=viridis) |
| RColorBrewer | ColorBrewer palettes | [CRAN](https://cran.r-project.org/package=RColorBrewer) |

## Notes

- For related configurations, see [[Code - R - GDAL Geospatial Operations]]
- For setup guides, see [[Guide - R Coding Conventions]]
- See also the [Geocomputation with R](https://r.geocompx.org/) book

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [[MOC - R]]
- [[MOC - GIS]]
- [[List - R Database Packages]]

### Backlinks

```dataview
LIST FROM [[List - R Geospatial Packages]] AND -"CHANGELOG" AND -"04-RESOURCES/Lists/List - R Geospatial Packages"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

