---
creation_date: 2024-12-22
modification_date: 2024-12-22
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: OGC standard for accessing geospatial raster data (coverages) over the web.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Web Coverage Service
  - WCS
publish: true
---

# Web Coverage Service (WCS)

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

**Web Coverage Service (WCS)** is an [[Open Geospatial Consortium (OGC)]] standard that provides access to geospatial raster data, called "coverages." Unlike [[Web Map Service (WMS)]] which returns rendered images, WCS returns the actual data values, enabling analysis and processing on the client side.

## Key Concepts

| Concept | Description |
|---------|-------------|
| **Coverage** | Multi-dimensional raster data (e.g., elevation, temperature, satellite imagery) |
| **GetCapabilities** | Returns service metadata and available coverages |
| **DescribeCoverage** | Returns detailed metadata about a specific coverage |
| **GetCoverage** | Returns the actual raster data in requested format |

## Operations

### GetCapabilities

Returns XML describing the service and available coverages.

```
GET /wcs?service=WCS&version=2.0.1&request=GetCapabilities
```

### DescribeCoverage

Returns detailed metadata for a specific coverage.

```
GET /wcs?service=WCS&version=2.0.1&request=DescribeCoverage&CoverageId=DEM
```

### GetCoverage

Returns the actual raster data.

```
GET /wcs?service=WCS&version=2.0.1&request=GetCoverage&CoverageId=DEM&format=image/tiff
```

## Versions

| Version | Status | Notes |
|---------|--------|-------|
| WCS 1.0 | Legacy | Original specification |
| WCS 1.1 | Legacy | Added GML encoding |
| WCS 2.0 | Current | Modular, modern architecture |
| WCS 2.1 | Current | Extended interpolation support |

## Use Cases

- Downloading elevation data (DEMs)
- Accessing satellite imagery data values
- Retrieving climate model outputs
- Environmental data analysis

## Related Standards

- [[Web Map Service (WMS)]] - Returns rendered images
- [[Web Feature Service (WFS)]] - Returns vector features
- [[OGC API - Coverages]] - Modern REST API replacement

## See Also

- [[Open Geospatial Consortium (OGC)]]
- [[List - GIS Standards Organizations]]

---

## Appendix

*Created: 2024-12-22 | Modified: 2024-12-22*

### Backlinks

```dataview
LIST FROM [[Web Coverage Service (WCS)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/Web Coverage Service (WCS)"
```

