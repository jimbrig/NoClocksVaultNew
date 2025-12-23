---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Guide to working with ArcGIS REST API for accessing Esri services
tags:
  - Status/Complete
  - Type/Guide
  - Topic/GIS
  - Topic/API
aliases:
  - ArcGIS REST API Guide
  - Esri REST API
publish: true
---

# Guide - ArcGIS REST API

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

The **ArcGIS REST API** provides access to Esri's ArcGIS Server, ArcGIS Online, and ArcGIS Enterprise services. This guide covers common endpoints and usage patterns for querying geospatial data.

## Base URL Structure

```
https://<host>/<instance>/rest/services/<folder>/<serviceName>/<serviceType>
```

**Examples:**

- FEMA: `https://hazards.fema.gov/arcgis/rest/services`
- ArcGIS Online: `https://services.arcgis.com/<orgId>/arcgis/rest/services`

## Server Info Endpoint

### `/info`

Returns server metadata and authentication information.

**Request:**

```http
GET https://hazards.fema.gov/arcgis/rest/info?f=json HTTP/1.1
Host: hazards.fema.gov
```

**Response:**

```json
{
  "currentVersion": 11.1,
  "fullVersion": "11.1.0",
  "soapUrl": "https://hazards.fema.gov/arcgis/services",
  "secureSoapUrl": null,
  "authInfo": {
    "isTokenBasedSecurity": true,
    "tokenServicesUrl": "https://hazards.fema.gov/arcgis/tokens/",
    "shortLivedTokenValidity": 60
  }
}
```

### `/info/healthCheck`

Returns service health status.

```
GET https://hazards.fema.gov/arcgis/rest/info/healthCheck?f=pjson
```

## Service Types

| Type | URL Suffix | Description |
|------|------------|-------------|
| MapServer | `/MapServer` | Map service (rendering + query) |
| FeatureServer | `/FeatureServer` | Feature service (CRUD operations) |
| ImageServer | `/ImageServer` | Raster imagery service |
| GeocodeServer | `/GeocodeServer` | Geocoding service |
| GeometryServer | `/GeometryServer` | Geometry operations |

## Querying Features

### MapServer/FeatureServer Query

**Endpoint:** `/<ServiceName>/MapServer/<LayerID>/query`

**Common Parameters:**

| Parameter | Description | Example |
|-----------|-------------|---------|
| `where` | SQL where clause | `STATE='CA'` |
| `geometry` | Spatial filter geometry | `{"x":-122,"y":37}` |
| `geometryType` | Type of geometry | `esriGeometryPoint` |
| `spatialRel` | Spatial relationship | `esriSpatialRelIntersects` |
| `outFields` | Fields to return | `*` or `OBJECTID,NAME` |
| `returnGeometry` | Return shapes | `true` or `false` |
| `outSR` | Output spatial reference | `4326` |
| `f` | Output format | `json`, `geojson`, `pjson` |

**Example - Query FEMA Flood Zones:**

```http
GET https://hazards.fema.gov/gis/nfhl/rest/services/public/NFHL/MapServer/28/query
?where=1=1
&outFields=*
&geometry=-122.4,37.8,-122.3,37.9
&geometryType=esriGeometryEnvelope
&spatialRel=esriSpatialRelIntersects
&returnGeometry=true
&outSR=4326
&f=geojson
```

### Spatial Relationships

| Value | Description |
|-------|-------------|
| `esriSpatialRelIntersects` | Geometry intersects |
| `esriSpatialRelContains` | Geometry contains |
| `esriSpatialRelWithin` | Geometry within |
| `esriSpatialRelTouches` | Geometry touches |
| `esriSpatialRelOverlaps` | Geometry overlaps |

### Geometry Types

| Value | Description |
|-------|-------------|
| `esriGeometryPoint` | Single point |
| `esriGeometryPolyline` | Line geometry |
| `esriGeometryPolygon` | Polygon geometry |
| `esriGeometryEnvelope` | Bounding box |

## Authentication

### Token-Based Authentication

1. Request token from token service:

```http
POST https://server/arcgis/tokens/generateToken
Content-Type: application/x-www-form-urlencoded

username=myuser&password=mypassword&f=json
```

2. Include token in requests:

```
?token=<your_token>&f=json
```

### API Keys (ArcGIS Online)

For ArcGIS Online, use an API key in the header or query parameter:

```
?token=<api_key>
```

## R Integration

Using `httr2` for ArcGIS REST API queries:

```r
library(httr2)
library(sf)

query_arcgis <- function(base_url, layer_id, where = "1=1", bbox = NULL) {
  url <- paste0(base_url, "/", layer_id, "/query")
  
  req <- httr2::request(url) |>
    httr2::req_url_query(
      where = where,
      outFields = "*",
      returnGeometry = "true",
      outSR = 4326,
      f = "geojson"
    )
  
  if (!is.null(bbox)) {
    req <- req |>
      httr2::req_url_query(
        geometry = paste(bbox, collapse = ","),
        geometryType = "esriGeometryEnvelope",
        spatialRel = "esriSpatialRelIntersects"
      )
  }
  
  resp <- req |> httr2::req_perform()
  geojson <- httr2::resp_body_json(resp)
  
  sf::st_read(jsonlite::toJSON(geojson, auto_unbox = TRUE), quiet = TRUE)
}
```

## Common Services

| Service | Base URL |
|---------|----------|
| FEMA NFHL | `https://hazards.fema.gov/gis/nfhl/rest/services/public/NFHL/MapServer` |
| Census TIGERweb | `https://tigerweb.geo.census.gov/arcgis/rest/services` |
| USGS National Map | `https://apps.nationalmap.gov/arcgis/rest/services` |

## Notes

- Always check `/info` first to understand server capabilities
- Use `f=geojson` for direct import into GIS tools
- For large queries, use pagination with `resultOffset` and `resultRecordCount`
- Consider using the `arcgislayers` R package for simplified access

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### See Also

- [[MOC - GIS]]
- [[List - Property Data Platforms]]
- [[Federal Emergency Management Agency (FEMA)]]

### Backlinks

```dataview
LIST FROM [[Guide - ArcGIS REST API]] AND -"CHANGELOG" AND -"04-RESOURCES/Guides/Guide - ArcGIS REST API"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

