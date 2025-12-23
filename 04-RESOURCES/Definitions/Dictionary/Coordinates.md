---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A set of values defining a specific location in space, typically as latitude and longitude.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Coordinates
  - Geographic Coordinates
  - Spatial Coordinates
---

# Coordinates

```table-of-contents
```

## Overview

**Coordinates** are a set of values that define a specific location in space, typically represented as latitude and longitude in geographic coordinate systems. Coordinates enable precise positioning of features on the Earth's surface and form the foundation of all geospatial data.

## Key Concepts

**Latitude** is the angular distance north or south of the equator (0° to ±90°).
**Longitude** is the angular distance east or west of the Prime Meridian (0° to ±180°).
**Easting/Northing** are projected coordinate values in meters or feet.
**Altitude/Elevation** is the optional third dimension (Z-coordinate).
**Precision** is the number of decimal places in coordinate values.

## Coordinate Formats

| Format | Example | Notes |
|--------|---------|-------|
| Decimal Degrees (DD) | 40.7128, -74.0060 | Most common in GIS |
| Degrees Minutes Seconds (DMS) | 40°42'46"N, 74°0'22"W | Traditional format |
| Degrees Decimal Minutes (DDM) | 40°42.768'N, 74°0.360'W | Navigation |
| UTM | 18T 583960 4507523 | Zone + Easting + Northing |

## Coordinate Order

- **GeoJSON**: [longitude, latitude] (x, y)
- **WKT**: longitude latitude (x y)
- **GPS/Common**: latitude, longitude (y, x)

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Coordinate Reference System (CRS)]]
- [[Geographic Information System (GIS)]]
- [[Projection]]

### Backlinks

```dataview
LIST FROM [[Coordinates]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Coordinates"
```

