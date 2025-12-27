---
creation_date: 2024-12-23
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Modern RESTful API standard for accessing vector geospatial features
tags:
  - Status/Complete
  - Type/Definition
  - Topic/GIS
  - Topic/API
aliases:
  - OGC API - Features
  - OGC API Features
  - OAFeat
publish: true
---

# OGC API - Features
## Overview

**OGC API - Features** is an [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md) standard that provides a modern, RESTful API for accessing vector geospatial features. It is the successor to [Web Feature Service (WFS)](Web Feature Service (WFS).md), designed with web developer experience in mind using JSON, OpenAPI, and REST principles.

## Key Features

| Feature | Description |
|---------|-------------|
| **RESTful** | Standard HTTP methods and URLs |
| **JSON Native** | GeoJSON as default output |
| **OpenAPI** | Self-documenting API specification |
| **Pagination** | Built-in result paging |
| **Filtering** | CQL2 query language |
| **CORS Friendly** | Works in browsers |

## Comparison with WFS

| Aspect | OGC API - Features | WFS |
|--------|-------------------|-----|
| Protocol | REST | SOAP/XML-RPC |
| Output | GeoJSON | GML (XML) |
| Documentation | OpenAPI | GetCapabilities |
| Queries | CQL2, bbox | Filter Encoding (XML) |
| Developer UX | Modern | Legacy |

## Endpoints

| Endpoint | Description |
|----------|-------------|
| `/` | Landing page |
| `/conformance` | Supported conformance classes |
| `/collections` | List of available collections |
| `/collections/{id}` | Collection metadata |
| `/collections/{id}/items` | Features in collection |
| `/collections/{id}/items/{featureId}` | Single feature |

## Query Parameters

| Parameter | Description | Example |
|-----------|-------------|---------|
| `limit` | Max features to return | `?limit=100` |
| `offset` | Starting position | `?offset=100` |
| `bbox` | Bounding box filter | `?bbox=-122.5,37.7,-122.3,37.9` |
| `datetime` | Temporal filter | `?datetime=2024-01-01/2024-12-31` |
| `filter` | CQL2 filter expression | `?filter=area>10000` |
| `filter-lang` | Filter language | `?filter-lang=cql2-text` |

## Example Requests

### Get Collections

```http
GET /collections HTTP/1.1
Accept: application/json
```

### Get Features with Bbox

```http
GET /collections/parcels/items?bbox=-122.5,37.7,-122.3,37.9&limit=100 HTTP/1.1
Accept: application/geo+json
```

### Get Single Feature

```http
GET /collections/parcels/items/12345 HTTP/1.1
Accept: application/geo+json
```

### Filter with CQL2

```http
GET /collections/parcels/items?filter=area>10000 AND owner LIKE 'Smith%' HTTP/1.1
Accept: application/geo+json
```

## Server Implementations

| Server | Language | Links |
|--------|----------|-------|
| pygeoapi | Python | [GitHub](https://github.com/geopython/pygeoapi) |
| pg_featureserv | Go | [GitHub](https://github.com/CrunchyData/pg_featureserv) |
| tipg | Python | [GitHub](https://github.com/developmentseed/tipg) |
| ldproxy | Java | [GitHub](https://github.com/interactive-instruments/ldproxy) |
| GeoServer | Java | [Website](https://geoserver.org) |

## R Client

```r
library(httr2)
library(sf)

# query ogc api features
get_features <- function(base_url, collection, bbox = NULL, limit = 100) {
  url <- paste0(base_url, "/collections/", collection, "/items")
  
  req <- httr2::request(url) |>
    httr2::req_url_query(limit = limit, f = "json")
  
  if (!is.null(bbox)) {
    req <- req |>
      httr2::req_url_query(bbox = paste(bbox, collapse = ","))
  }
  
  resp <- req |> httr2::req_perform()
  geojson <- httr2::resp_body_json(resp)
  
 sf::st_read(jsonlite::toJSON(geojson, auto_unbox = TRUE), quiet = TRUE)
}
```

---

## Appendix

*Created: 2024-12-23 | Modified: 2024-12-23*

### See Also

- [MOC - GIS](MOC - GIS.md)
- [List - OGC Web Service Standards](List - OGC Web Service Standards.md)
- [Web Feature Service (WFS)](Web Feature Service (WFS).md)
- [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md)
- [GeoJSON](GeoJSON.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

