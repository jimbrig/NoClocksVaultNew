---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Federal and government geospatial data sources and APIs
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
  - Topic/Government
aliases:
  - Federal GIS Data
  - Government Geospatial Data
  - Public Geospatial APIs
publish: true
---

# List - Federal Geospatial Data Sources

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Curated collection of **federal, state, and government geospatial data sources** available for integration into applications. These sources provide authoritative data for elevation, boundaries, flood hazards, demographics, and natural resources.

## USGS - Elevation & Terrain

| Resource | Description | Links |
|----------|-------------|-------|
| 3DEP (3D Elevation Program) | High-resolution elevation data for the US | [Website](https://usgs.gov/3d-elevation-program) - [API](https://epqs.nationalmap.gov/v1/docs) |
| The National Map | USGS geospatial data portal | [Website](https://nationalmap.gov) - [Downloader](https://apps.nationalmap.gov/downloader/) |
| NED (National Elevation Dataset) | Legacy elevation data (now part of 3DEP) | [Website](https://usgs.gov/programs/national-geospatial-program/national-map) |
| LIDAR Explorer | Point cloud and LIDAR data access | [Website](https://apps.nationalmap.gov/lidar-explorer/) |

## Census Bureau - Demographics & Boundaries

| Resource | Description | Links |
|----------|-------------|-------|
| TIGER/Line Shapefiles | Boundaries, roads, water features | [Website](https://census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html) |
| Cartographic Boundary Files | Simplified boundaries for mapping | [Website](https://census.gov/geographies/mapping-files/time-series/geo/cartographic-boundary.html) |
| TIGERweb | Web mapping service for Census geography | [Website](https://tigerweb.geo.census.gov/tigerweb/) |
| Census API | Demographic data with geometry | [Website](https://census.gov/data/developers/data-sets.html) |
| American Community Survey | Demographic estimates API | [Website](https://census.gov/programs-surveys/acs) |

## FEMA - Flood & Hazard Data

| Resource | Description | Links |
|----------|-------------|-------|
| National Flood Hazard Layer (NFHL) | Flood zones, FIRMs, floodplain boundaries | [Website](https://fema.gov/flood-maps/national-flood-hazard-layer) - [[National Flood Hazard Layer (NFHL)]] |
| NFHL Viewer | Interactive flood map viewer | [Website](https://hazards-fema.maps.arcgis.com/apps/webappviewer/index.html) |
| Map Service Center (MSC) | Official FEMA flood map downloads | [Website](https://msc.fema.gov) |
| FEMA GIS Services | ArcGIS REST services for NFHL | [ArcGIS](https://hazards.fema.gov/gis/nfhl/rest/services) |

## NOAA - Weather & Environmental

| Resource | Description | Links |
|----------|-------------|-------|
| NOAA Data Catalog | Environmental and climate data | [Website](https://data.noaa.gov) |
| National Weather Service API | Weather forecasts and alerts | [API Docs](https://www.weather.gov/documentation/services-web-api) |
| Coastal LIDAR | Coastal elevation data | [Website](https://coast.noaa.gov/digitalcoast/data/) |
| NCEI (Climate Data) | Historical climate records | [Website](https://ncei.noaa.gov) |

## USDA/NRCS - Soils & Agriculture

| Resource | Description | Links |
|----------|-------------|-------|
| SSURGO | Detailed soil survey data | [Website](https://websoilsurvey.sc.egov.usda.gov) |
| STATSGO2 | State soil geographic database | [Website](https://nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/geo/) |
| Web Soil Survey | Interactive soil data access | [Website](https://websoilsurvey.nrcs.usda.gov) |
| CropScape | Cropland data layers | [Website](https://nassgeodata.gmu.edu/CropScape/) |
| NAIP Imagery | Aerial imagery | [Website](https://naip-usdaonline.hub.arcgis.com) |

## EPA - Environmental

| Resource | Description | Links |
|----------|-------------|-------|
| EnviroAtlas | Environmental data and mapping | [Website](https://enviroatlas.epa.gov) |
| Facility Registry Service | Regulated facility locations | [Website](https://epa.gov/frs) |
| WATERS GeoViewer | Water quality and watershed data | [Website](https://epa.gov/waterdata/waters-geoviewer) |

## BLM - Public Lands

| Resource | Description | Links |
|----------|-------------|-------|
| General Land Office Records | Historical land patents | [Website](https://glorecords.blm.gov) |
| Public Land Survey System | Township/Range/Section data | [Website](https://blm.gov/services/land-surveying) |
| BLM Geospatial Data | Land management boundaries | [Website](https://gbp-blm-egis.hub.arcgis.com) |

## National Park Service

| Resource | Description | Links |
|----------|-------------|-------|
| NPS Open Data | Park boundaries and facilities | [Website](https://public-nps.opendata.arcgis.com) |
| IRMA Data Store | NPS resource management data | [Website](https://irma.nps.gov/DataStore/) |

## Multi-Agency Portals

| Resource | Description | Links |
|----------|-------------|-------|
| GeoPlatform | Federal geospatial data catalog | [Website](https://geoplatform.gov) |
| Data.gov | Federal open data portal | [Website](https://data.gov) |
| HIFLD Open | Homeland infrastructure data | [Website](https://hifld-geoplatform.opendata.arcgis.com) |
| US Interagency Elevation Inventory | Elevation data catalog | [Website](https://coast.noaa.gov/inventory/) |

## Notes

- For R integration, use packages like `tigris`, `tidycensus`, `FedData`, `elevatr`
- See [[List - R Geospatial Packages]] for data access packages
- FEMA data requires understanding of flood zone codes - see [[National Flood Hazard Layer (NFHL)]]

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [[MOC - GIS]]
- [[List - R Geospatial Packages]]
- [[List - Property Data Platforms]]

### Backlinks

```dataview
LIST FROM [[List - Federal Geospatial Data Sources]] AND -"CHANGELOG" AND -"04-RESOURCES/Lists/List - Federal Geospatial Data Sources"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

