---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Routing engines, geocoding services, and navigation APIs
tags:
  - Status/Ongoing
  - Type/List
  - Topic/GIS
  - Topic/API
aliases:
  - Routing Services
  - Navigation APIs
  - Geocoding Services
publish: true
---

# List - Routing and Navigation Services

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Curated collection of **routing engines, geocoding services, and navigation APIs** for geospatial applications. Includes open-source self-hosted options and commercial APIs.

## Open Source Routing Engines

### OSRM (Open Source Routing Machine)

High-performance routing engine using OpenStreetMap data.

| Aspect | Details |
|--------|---------|
| **Website** | [project-osrm.org](https://project-osrm.org) |
| **GitHub** | [Project-OSRM/osrm-backend](https://github.com/Project-OSRM/osrm-backend) |
| **License** | BSD 2-Clause |
| **Data Source** | OpenStreetMap |
| **Modes** | Driving, walking, cycling |

**Features:**
- Extremely fast routing
- Turn-by-turn navigation
- Table (distance matrix) queries
- Trip optimization (TSP)
- Tile-based map matching

### Valhalla

Multi-modal routing engine with isochrone support.

| Aspect | Details |
|--------|---------|
| **Website** | [valhalla.github.io/valhalla](https://valhalla.github.io/valhalla/) |
| **GitHub** | [valhalla/valhalla](https://github.com/valhalla/valhalla) |
| **License** | MIT |
| **Data Source** | OpenStreetMap |
| **Modes** | Driving, walking, cycling, transit, multimodal |

**Features:**
- Time-distance matrix
- Isochrones (travel time polygons)
- Map matching
- Elevation-aware routing
- Turn-by-turn directions with maneuvers

### GraphHopper

Flexible routing engine with multiple profiles.

| Aspect | Details |
|--------|---------|
| **Website** | [graphhopper.com](https://www.graphhopper.com) |
| **GitHub** | [graphhopper/graphhopper](https://github.com/graphhopper/graphhopper) |
| **License** | Apache 2.0 |
| **Modes** | Car, bike, foot, custom profiles |

**Features:**
- Route optimization API
- Matrix API
- Isochrone API
- Custom vehicle profiles
- Commercial hosted version available

### OpenRouteService

OGC-compliant routing and geospatial analysis.

| Aspect | Details |
|--------|---------|
| **Website** | [openrouteservice.org](https://openrouteservice.org) |
| **GitHub** | [GIScience/openrouteservice](https://github.com/GIScience/openrouteservice) |
| **License** | LGPL 3.0 |
| **API** | [api.openrouteservice.org](https://api.openrouteservice.org) |

**Features:**
- Directions, isochrones, matrix
- Points of interest search
- Geocoding
- Elevation profiles
- Free hosted API (rate limited)

## Commercial Routing APIs

| Service | Description | Links |
|---------|-------------|-------|
| Mapbox Directions | Turn-by-turn routing with traffic | [Docs](https://docs.mapbox.com/api/navigation/) |
| Google Directions | Routing with real-time traffic | [Docs](https://developers.google.com/maps/documentation/directions) |
| HERE Routing | Enterprise routing with fleet features | [Docs](https://developer.here.com/documentation/routing-api/dev_guide/index.html) |
| TomTom Routing | Traffic-aware routing | [Docs](https://developer.tomtom.com/routing-api) |
| Esri Network Analyst | ArcGIS routing services | [Docs](https://developers.arcgis.com/rest/network-analysis/) |

## Geocoding Services

### Open Source / Free

| Service | Description | Links |
|---------|-------------|-------|
| Nominatim | OSM-based geocoding | [Website](https://nominatim.org) |
| Photon | OSM geocoder with typo tolerance | [GitHub](https://github.com/komoot/photon) |
| Pelias | Modular open geocoder | [GitHub](https://github.com/pelias/pelias) |
| OpenCage | Aggregated geocoding (free tier) | [Website](https://opencagedata.com) |

### Commercial

| Service | Description | Links |
|---------|-------------|-------|
| Google Geocoding | High-quality global geocoding | [Docs](https://developers.google.com/maps/documentation/geocoding) |
| Mapbox Geocoding | Fast geocoding with POI | [Docs](https://docs.mapbox.com/api/search/geocoding/) |
| HERE Geocoding | Enterprise address matching | [Docs](https://developer.here.com/documentation/geocoding-search-api) |
| Esri Geocoding | ArcGIS World Geocoder | [Docs](https://developers.arcgis.com/rest/geocode/) |
| SmartyStreets | US address validation | [Website](https://www.smarty.com) |

## Accessibility & Scoring APIs

| Service | Description | Links |
|---------|-------------|-------|
| Walk Score | Walk/Transit/Bike scores | [API](https://www.walkscore.com/professional/) |
| Mapbox Isochrone | Travel time polygons | [Docs](https://docs.mapbox.com/api/navigation/isochrone/) |
| TravelTime | Isochrone and reachability | [Website](https://traveltime.com) |

## R Package Integration

| Package | Description | Links |
|---------|-------------|-------|
| osrm | R interface to OSRM | [CRAN](https://cran.r-project.org/package=osrm) |
| stplanr | Sustainable transport planning | [CRAN](https://cran.r-project.org/package=stplanr) |
| hereR | HERE API client | [CRAN](https://cran.r-project.org/package=hereR) |
| googleway | Google Maps API client | [CRAN](https://cran.r-project.org/package=googleway) |
| mapboxapi | Mapbox API client | [CRAN](https://cran.r-project.org/package=mapboxapi) |
| tidygeocoder | Multi-service geocoding | [CRAN](https://cran.r-project.org/package=tidygeocoder) |

## Python Libraries

| Library | Description | Links |
|---------|-------------|-------|
| osmnx | OSM network analysis | [GitHub](https://github.com/gboeing/osmnx) |
| routingpy | Multi-provider routing | [GitHub](https://github.com/gis-ops/routingpy) |
| geopy | Geocoding abstraction | [GitHub](https://github.com/geopy/geopy) |

## Self-Hosting Considerations

### OSRM Deployment

```bash
# extract and prepare data
docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-extract -p /opt/car.lua /data/region.osm.pbf
docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-partition /data/region.osrm
docker run -t -v "${PWD}:/data" osrm/osrm-backend osrm-customize /data/region.osrm

# run server
docker run -t -p 5000:5000 -v "${PWD}:/data" osrm/osrm-backend osrm-routed --algorithm mld /data/region.osrm
```

### Valhalla Deployment

```bash
docker run -dt --name valhalla -p 8002:8002 \
  -v $PWD/custom_files:/custom_files \
  ghcr.io/gis-ops/docker-valhalla/valhalla:latest
```

## Comparison Matrix

| Engine | Speed | Modes | Isochrones | Matrix | License |
|--------|-------|-------|------------|--------|---------|
| OSRM | Fastest | 3 | No | Yes | BSD |
| Valhalla | Fast | 4+ | Yes | Yes | MIT |
| GraphHopper | Fast | Custom | Yes | Yes | Apache |
| OpenRouteService | Moderate | 4+ | Yes | Yes | LGPL |

## Notes

- **OSRM** is best for pure speed when you only need basic routing
- **Valhalla** is preferred when you need isochrones or multi-modal routing
- **tidygeocoder** (R) abstracts multiple geocoding providers with a unified interface
- Consider data freshness when self-hosting (OSM data updates regularly)

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [[MOC - GIS]]
- [[List - R Geospatial Packages]]
- [[List - GIS Web Mapping Libraries]]

### Backlinks

```dataview
LIST FROM [[List - Routing and Navigation Services]] AND -"CHANGELOG" AND -"04-RESOURCES/Lists/List - Routing and Navigation Services"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

