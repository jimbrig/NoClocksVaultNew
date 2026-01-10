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
## Core Spatial Libraries (C/C++)
- [GDAL](GDAL.md) / [OGR](OGR.md)
- [GEOS](GEOS.md)
- [PROJ](PROJ.md)

## Databases, Extensions, and Services
- [PostgreSQL](PostgreSQL.md)
- [PostGIS](PostGIS.md)
- [pg_featureserv](pg_featureserv.md)
- [pg_tileserv](pg_tileserv.md)
- [pg_eventserv](pg_eventserv.md)
- [pgSVG](pgSVG.md)  <!-- verify -->
- [PostgREST](PostgREST.md)
- [Data API Builder (dab)](Data API Builder (dab).md)
- [pgAdmin](pgAdmin.md)
- [dbeaver](dbeaver.md)
- [dbmate](dbmate.md)
- [Database Markup Language](04-RESOURCES/Definitions/Acronyms/Database Markup Language (DBML).md)
- [psql](psql.md)
- [pgcli](pgcli.md)

## Data Engineering, Pipelines, and Orchestration
- [Apache Arrow](Apache Arrow.md)
- [DuckDB](DuckDB.md)
- [DuckLake](DuckLake.md)  <!-- verify -->
- [Apache Airflow](Apache Airflow.md)
- [Luigi](Luigi.md)
- [DAG](DAG.md)  <!-- concept -->
- [Data Build Tool (dbt)](Data Build Tool (dbt).md)
- [Data Load Tool (dlt)](Data Load Tool (dlt).md)
- [Data Version Control (DVC)](Data Version Control (dvt).md)

## Data Formats, Standards, and Catalogs
- [GeoJSON](GeoJSON.md)
- [TopoJSON](TopoJSON.md)
- [GeoTIFF](GeoTIFF.md)
- [Cloud Optimized GeoTIFF (COG)](04-RESOURCES/Definitions/Acronyms/Cloud Optimized GeoTIFF (COG).md)
- [Mapbox Vector Tiles (MVT)](04-RESOURCES/Definitions/Acronyms/Mapbox Vector Tile (MVT).md)
- [PMTiles](04-RESOURCES/Definitions/Dictionary/PMTiles.md)
- [GeoParquet](GeoParquet.md)
- [Protobuf](Protobuf.md)
- [Spatial Temporal Asset Catalogue (STAC)](Spatial Temporal Asset Catalogue (STAC).md)
- [Simple Features (SF)](Simple Features (SF).md)

## Spatial Indexing
- [Hexagonal Hierarchical Spatial Index (H3)](04-RESOURCES/Definitions/Acronyms/Hexagonal Hierarchical Spatial Index (H3).md)
- [GeoHash](GeoHash.md)

## Desktop, Server, and Platforms
- [QGIS](QGIS.md)
- [ArcGIS](ArcGIS.md)
- [GRASS-GIS](GRASS-GIS.md)
- [GeoServer](GeoServer.md)

## Web Mapping Libraries and Frameworks
- [Leaflet.js](Leaflet.js.md)
- [Leaflet Plugins](Leaflet Plugins.md)
- [OpenLayers](OpenLayers.md)
- [deck.gl](deck.gl.md)
- [kepler.gl](kepler.gl.md)
- [MapLibre](MapLibre.md)
- [Mapbox GL JS](Mapbox GL/JS.md)
- [Mapbox](Mapbox.md)
- [Mapbox API](Mapbox API.md)
- [GeoStyler](GeoStyler.md)

## OSM and Open Data
- [OpenStreetMap (OSM)](04-RESOURCES/Definitions/Acronyms/OpenStreetMap (OSM).md)
- [Overture Maps](Overture Maps.md)

## Command Line Utilities
- [ogr2ogr](ogr2ogr.md)
- [shp2pgsql](shp2pgsql.md)
- [osm2pgsql](osm2pgsql.md)
- [Kart](Kart.md)
- [tippecanoe](tippecannoe.md)
- [yogrt](yogrt.md)  <!-- verify -->

## Storage and File Browsing
- [FileBrowser](FileBrowser.md)

## AI / LLM Tools for Geo
- [LLM-Find](LLM-Find.md), [LLM-Geo](LLM-Geo.md)
- [MapsGPT](MapsGPT.md)
- [TextToMap](TextToMap.md)
- [GeoAI](GeoAI.md)
- [Marvin](Marvin.md)

---

## R Packages

> See also: Spatial CRAN Task View — https://cran.r-project.org/web/views/Spatial.html

### Core vector/raster and spatial ops
- [sf](sf.md)  <!-- primary vector API (OGC SF) -->
- [lwgeom](lwgeom.md)
- [terra](terra.md)
- [stars](stars.md)
- [geosphere](geosphere.md)
- [sfheaders](sfheaders.md)
- [sfnetworks](sfnetworks.md)
- [sfext](sfext.md)

### Data IO, databases, and APIs
- [rpostgis](rpostgis.md)
- [sfdbi](sfdbi.md)  <!-- verify -->
- [arcgislayers](arcgislayers.md)
- [arcgisutils](arcgisutils.md)
- [esri2sf](esri2sf.md)
- [arcpullr](arcpullr.md)
- [osmdata](osmdata.md)
- [osmextract](osmextract.md)
- [geodata](geodata.md)
- [wkt](wkt.md)

### Web mapping and tiles
- [leaflet](leaflet.md)
- [leaflet.providers](leaflet.providers.md)
- [leaflet.extras](leaflet.extras.md)
- [leaflet.extras2](leaflet.extras2.md)
- [leaflet.opacity](leaflet.opacity.md)
- [leafdown](leafdown.md)
- [leafem](leafem.md)
- [leaflegend](leaflegend.md)
- [mapview](mapview.md)
- [maptiles](maptiles.md)
- [mapgl](mapgl.md)  <!-- verify -->
- [mapboxapi](mapbopxapi.md)

### Analysis, modeling, and terrain
- [spatstat](spatstat.md)
- [spdep](spdep.md)
- [spatialEco](spatialEco.md)
- [exactextractr](exactextractr.md)
- [whitebox](whitebox.md)
- [lidR](lidR.md)
- [elevatr](elevatr.md)
- [geosphere](geosphere.md)
- [AOI](AOI.md)
- [addr](addr.md)  <!-- verify -->

### Data sources and government data
- [tigris](tigris.md)
- [tidycensus](tidycensus.md)
- [censusapi](censusapi.md)
- [rnaturalearth](rnaturalearth.md)
- [rnaturalearthdata](rnaturalearthdata.md)
- [USAboundaries](USABoundaries.md)
- [NFHL](NFHL.md)  <!-- verify -->
- [FedData](FedData.md)
- [soilDB](soilDB.md)

### Visualization
- [ggplot2](ggplot2.md)
- [ggspatial](ggspatial.md)
- [tmap](tmap.md)
- [plotly](plotly.md)
- [highcharter](highcharter.md)
- [rayshader](rayshader.md)
- [maps](maps.md)
- [mapsf](mapsf.md)
- [cartography](cartographic.md)

### Time series and econ (supporting datasets)
- [tidyquant](tidyquant.md)
- [fredr](fredr.md)
- [ggmap](ggmap.md)

### Retired/archived (kept for legacy projects)
- [sp](sp.md)  <!-- superseded by sf -->
- [rgdal](rgdal.md)  <!-- retired -->
- [rgeos](rgeos.md)  <!-- retired -->
- [GISTools](GISTools.md)  <!-- archived -->
- [acs](acs.md)  <!-- likely archived -->

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
- Split the R Packages into separate notes (e.g., [R spatial packages](R spatial packages.md)) and keep a transclusion here?
- Add Dataview sections so new tools auto-populate by tag (e.g., tag tools with and query them)?
[Timestamp: 2025/12/22 19:07:30]