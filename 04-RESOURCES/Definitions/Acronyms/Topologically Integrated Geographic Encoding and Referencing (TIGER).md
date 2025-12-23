---
creation_date: 2025-12-01
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A geographic database format developed by the U.S. Census Bureau for storing and distributing digital geographic data.
tags: 
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases: 
  - Topologically Integrated Geographic Encoding and Referencing
  - TIGER
---

# Topologically Integrated Geographic Encoding and Referencing (TIGER)

```table-of-contents
```

## Overview

**Topologically Integrated Geographic Encoding and Referencing (TIGER)** is a digital geographic database developed by the [[US Census Bureau]] to support its mapping and geographic programs. Originally created for the 1990 decennial census, TIGER provides a comprehensive, topologically structured representation of geographic features across the United States, including roads, boundaries, water features, and address ranges.

> [!NOTE] External Resources
> - [Topologically Integrated Geographic Encoding and Referencing - Wikipedia](https://en.wikipedia.org/wiki/Topologically_Integrated_Geographic_Encoding_and_Referencing)
> - [A Complete Guide to TIGER GIS Data - GIS Geography](https://gisgeography.com/tiger-gis-data-topologically-integrated-geographic-encoding-referencing/)
> - [TIGER Data Products Guide](https://www.census.gov/programs-surveys/geography/guidance/tiger-data-products-guide.html)
> - [TIGER/Line Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html)
> - [Cartographic Boundary Files](https://www.census.gov/geographies/mapping-files/time-series/geo/cartographic-boundary.html)

## Key Concepts

**Topology** refers to the mathematical relationships between geographic features (adjacency, connectivity, containment) that ensure data integrity.
**Line features** include roads, railroads, rivers, and boundaries represented as connected line segments.
**Area features** are polygons representing geographic areas such as census tracts, counties, states, and water bodies.
**Point features** represent discrete locations such as landmarks or address points.
**Address ranges** are the low/high address numbers associated with street segments for geocoding purposes.
**FIPS codes** are Federal Information Processing Standards codes used to uniquely identify geographic entities.
**GEOID** is a geographic identifier that concatenates FIPS codes to create unique identifiers for census geographies.

## Data Products

### TIGER/Line Shapefiles

The primary distribution format containing:
- **Legal boundaries**: States, counties, cities, townships, congressional districts
- **Statistical boundaries**: Census tracts, block groups, blocks, ZCTAs (ZIP Code Tabulation Areas)
- **Physical features**: Roads, railroads, water features, landmarks
- **Address data**: Address ranges for geocoding applications

### Cartographic Boundary Files

Simplified, clipped versions of TIGER/Line files optimized for:
- Thematic mapping and visualization
- Smaller file sizes (coastlines clipped to shoreline)
- Generalized geometries for faster rendering

### Geographic Hierarchy

```
Nation
├── Region
│   └── Division
│       └── State
│           ├── County
│           │   ├── County Subdivision
│           │   ├── Census Tract
│           │   │   └── Block Group
│           │   │       └── Block
│           │   └── Place (City/Town)
│           └── Congressional District
└── Metropolitan/Micropolitan Statistical Area
```

## Applications

- **Geocoding**: Converting addresses to coordinates using TIGER address ranges.
- **Redistricting**: Analyzing and drawing political boundaries.
- **Demographic analysis**: Joining census data to geographic boundaries.
- **Urban planning**: Infrastructure and zoning analysis using standardized boundaries.
- **Real estate**: Parcel mapping, market area definition, location analysis.
- **Emergency services**: 911 addressing and response routing.

## Limitations

- Address ranges are interpolated estimates, not precise address locations.
- Data updates occur annually; may lag behind real-world changes.
- Road network geometry may not match other commercial datasets.
- Designed primarily for census operations, not navigation or routing.

## Appendix

*Created: 2025-12-01 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[00-INBOX/GIS/GIS Data Sources]]
- [[US Census Bureau]]
- [[Coordinate Reference System (CRS)]]
- [[Geocoding]]

### Backlinks

```dataview
LIST FROM [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Topologically Integrated Geographic Encoding and Referencing (TIGER)"
```
