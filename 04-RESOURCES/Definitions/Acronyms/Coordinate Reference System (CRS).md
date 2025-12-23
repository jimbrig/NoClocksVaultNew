---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A system that uses coordinates to establish a position in space for geographic mapping and analysis.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
aliases:
  - Coordinate Reference System
  - CRS
  - Spatial Reference System
  - SRS
---

# Coordinate Reference System (CRS)

```table-of-contents
```

## Overview

**Coordinate Reference System (CRS)** is a system that uses coordinates to establish a position in space, allowing for the accurate mapping and analysis of geographic data. A CRS defines the origin, units, and axes of a coordinate system and relates them to real-world locations on the Earth's surface.

## Key Concepts

**Geographic CRS** uses angular units (degrees) on a three-dimensional ellipsoidal model of the Earth (latitude/longitude).
**Projected CRS** uses linear units (meters, feet) on a two-dimensional flat surface created by mathematical projection.
**Datum** is the reference surface and origin point for a coordinate system.
**Ellipsoid** is the mathematical model approximating the Earth's shape.
**Projection** is the mathematical transformation from 3D geographic to 2D planar coordinates.
**EPSG code** is a standardized numeric identifier for coordinate reference systems.

## Types of Coordinate Systems

| Type | Coordinates | Units | Use Case |
|------|-------------|-------|----------|
| Geographic | Latitude, Longitude | Degrees | Global data, GPS |
| Projected | Easting, Northing | Meters/Feet | Local mapping, area calculations |
| Local | X, Y | Various | CAD, engineering |

## Common CRS Examples

- **WGS 84 (EPSG:4326)**: Global geographic standard, used by GPS
- **Web Mercator (EPSG:3857)**: Web mapping (Google Maps, OpenStreetMap)
- **UTM Zones**: Regional projected system with minimal distortion
- **State Plane**: High-accuracy projections for US states

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[European Petroleum Survey Group (EPSG)]]
- [[Projection]]
- [[Datum]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[Coordinate Reference System (CRS)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Coordinate Reference System (CRS)"
```

