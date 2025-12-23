---
epoch: 1766448382253
modelKey: "gpt-5|openai"
topic: "Note Organization Help"


tags:
  - Type/Copilot
---

**user**: Help me organize this note properly
[Context: Notes: 00-INBOX/GIS Tools.md]
[Timestamp: 2025/12/22 19:06:22]

**ai**: Great note! I can see a few easy wins:
- Group tools into clearer categories (Core libs, Databases, Web mapping, Formats, CLI, R packages, AI, etc.)
- Fix a handful of typos and duplicates
- Flag items that look ambiguous for your confirmation

Below is a paste‑ready, organized version that keeps your links intact, with safe display-text fixes using alias pipes where needed. I also added a “To verify/cleanup” section so nothing gets lost.

--- PASTE-READY REWRITE ---

---
creation_date: 2025-12-04
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Curated catalog of GIS tools, libraries, formats, and packages
tags:
  - gis
  - tools
  - geospatial
aliases: GIS Tools
---

# GIS Tools

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
debugInConsole: false
```

## Core Spatial Libraries (C/C++)
- [[GDAL]] / [[OGR]]
- [[GEOS]]
- [[PROJ]]

## Databases, Extensions, and Services
- [[PostgreSQL]]
- [[PostGIS]]
- [[pg_featureserv]]
- [[pg_tileserv]]
- [[pg_eventserv]]
- [[pgSVG]]  <!-- verify -->
- [[PostgREST]]
- [[Data API Builder (dab)]]
- [[pgAdmin]]
- [[dbeaver]]
- [[dbmate]]
- [[04-RESOURCES/Definitions/Acronyms/Database Markup Language (DBML)|Database Markup Language]]
- [[psql]]
- [[pgcli]]

## Data Engineering, Pipelines, and Orchestration
- [[Apache Arrow]]
- [[DuckDB]]
- [[DuckLake]]  <!-- verify -->
- [[Apache Airflow]]
- [[Luigi]]
- [[DAG]]  <!-- concept -->
- [[Data Build Tool (dbt)]]
- [[Data Load Tool (dlt)]]
- [[Data Version Control (dvt)|Data Version Control (DVC)]]

## Data Formats, Standards, and Catalogs
- [[GeoJSON]]
- [[TopoJSON]]
- [[GeoTIFF]]
- [[04-RESOURCES/Definitions/Acronyms/Cloud Optimized GeoTIFF (COG)|Cloud Optimized GeoTIFF (COG)]]
- [[04-RESOURCES/Definitions/Acronyms/Mapbox Vector Tile (MVT)|Mapbox Vector Tiles (MVT)]]
- [[04-RESOURCES/Definitions/Dictionary/PMTiles|PMTiles]]
- [[GeoParquet]]
- [[Protobuf]]
- [[Spatial Temporal Asset Catalogue (STAC)]]
- [[Simple Features (SF)]]

## Spatial Indexing
- [[04-RESOURCES/Definitions/Acronyms/Hexagonal Hierarchical Spatial Index (H3)|Hexagonal Hierarchical Spatial Index (H3)]]
- [[GeoHash]]

## Desktop, Server, and Platforms
- [[QGIS]]
- [[ArcGIS]]
- [[GRASS-GIS]]
- [[GeoServer]]

## Web Mapping Libraries and Frameworks
- [[Leaflet.js]]
- [[Leaflet Plugins]]
- [[OpenLayers]]
- [[deck.gl]]
- [[kepler.gl]]
- [[MapLibre]]
- [[Mapbox GL/JS|Mapbox GL JS]]
- [[Mapbox]]
- [[Mapbox API]]
- [[GeoStyler]]

## OSM and Open Data
- [[04-RESOURCES/Definitions/Acronyms/OpenStreetMap (OSM)|OpenStreetMap (OSM)]]
- [[Overture Maps]]

## Command Line Utilities
- [[ogr2ogr]]
- [[shp2pgsql]]
- [[osm2pgsql]]
- [[Kart]]
- [[tippecannoe|tippecanoe]]
- [[yogrt]]  <!-- verify -->

## Storage and File Browsing
- [[FileBrowser]]

## AI / LLM Tools for Geo
- [[LLM-Find]], [[LLM-Geo]]
- [[MapsGPT]]
- [[TextToMap]]
- [[GeoAI]]
- [[Marvin]]

---

## R Packages

> See also: Spatial CRAN Task View — https://cran.r-project.org/web/views/Spatial.html

### Core vector/raster and spatial ops
- [[sf]]  <!-- primary vector API (OGC SF) -->
- [[lwgeom]]
- [[terra]]
- [[stars]]
- [[geosphere]]
- [[sfheaders]]
- [[sfnetworks]]
- [[sfext]]

### Data IO, databases, and APIs
- [[rpostgis]]
- [[sfdbi]]  <!-- verify -->
- [[arcgislayers]]
- [[arcgisutils]]
- [[esri2sf]]
- [[arcpullr]]
- [[osmdata]]
- [[osmextract]]
- [[geodata]]
- [[wkt]]

### Web mapping and tiles
- [[leaflet]]
- [[leaflet.providers]]
- [[leaflet.extras]]
- [[leaflet.extras2]]
- [[leaflet.opacity]]
- [[leafdown]]
- [[leafem]]
- [[leaflegend]]
- [[mapview]]
- [[maptiles]]
- [[mapgl]]  <!-- verify -->
- [[mapbopxapi|mapboxapi]]

### Analysis, modeling, and terrain
- [[spatstat]]
- [[spdep]]
- [[spatialEco]]
- [[exactextractr]]
- [[whitebox]]
- [[lidR]]
- [[elevatr]]
- [[geosphere]]
- [[AOI]]
- [[addr]]  <!-- verify -->

### Data sources and government data
- [[tigris]]
- [[tidycensus]]
- [[censusapi]]
- [[rnaturalearth]]
- [[rnaturalearthdata]]
- [[USABoundaries|USAboundaries]]
- [[NFHL]]  <!-- verify -->
- [[FedData]]
- [[soilDB]]

### Visualization
- [[ggplot2]]
- [[ggspatial]]
- [[tmap]]
- [[plotly]]
- [[highcharter]]
- [[rayshader]]
- [[maps]]
- [[mapsf]]
- [[cartographic|cartography]]

### Time series and econ (supporting datasets)
- [[tidyquant]]
- [[fredr]]
- [[ggmap]]

### Retired/archived (kept for legacy projects)
- [[sp]]  <!-- superseded by sf -->
- [[rgdal]]  <!-- retired -->
- [[rgeos]]  <!-- retired -->
- [[GISTools]]  <!-- archived -->
- [[acs]]  <!-- likely archived -->

---

## To verify or rename
- tippecannoe → tippecanoe (spelling)
- Data Version Control (dvt) → Data Version Control (DVC)
- mapbopxapi → mapboxapi (R)
- cartographic → cartography (R)
- USABoundaries → USAboundaries (canonical package name)
- Mapbox GL/JS → Mapbox GL JS (naming)
- DuckLake — which project did you mean here?
- pgSVG — which extension specifically?
- yogrt — which CLI tool is this?
- mapgl (R) — confirm intended package
- addr (R) — confirm intended package
- NFHL — package name or dataset note?
- geocompr is a book/resource, not a package — move to Resources?

---

Would you like me to:
- Bulk-rename those notes (with aliases preserved)?
- Split the R Packages into separate notes (e.g., [[R spatial packages]]) and keep a transclusion here?
- Add Dataview sections so new tools auto-populate by tag (e.g., tag tools with and query them)?
[Timestamp: 2025/12/22 19:07:30]