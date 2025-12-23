---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A reference system defining position of geographic features on Earth's surface.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Datum
  - Geodetic Datum
---

# Datum

```table-of-contents
```

## Overview

**Datum** is a reference system used to define the position of geographic features on the Earth's surface, often used in conjunction with coordinate systems and projections in GIS. A geodetic datum defines the size and shape of the Earth (ellipsoid) and the origin and orientation of coordinate axes.

## Key Concepts

**Ellipsoid** is the mathematical model of Earth's shape.
**Reference frame** is the physical realization of a datum through survey monuments.
**Horizontal datum** defines positions on Earth's surface (latitude/longitude).
**Vertical datum** defines elevation reference (mean sea level).
**Datum shift** is the transformation between different datums.

## Common Horizontal Datums

| Datum | Ellipsoid | Use |
|-------|-----------|-----|
| WGS 84 | WGS 84 | GPS, global |
| NAD 83 | GRS 80 | North America |
| NAD 27 | Clarke 1866 | Legacy US |
| ETRS 89 | GRS 80 | Europe |

## Vertical Datums

- NAVD 88 (North American Vertical Datum 1988)
- NGVD 29 (National Geodetic Vertical Datum 1929)
- EGM96/EGM2008 (Earth Gravitational Model)

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Coordinate Reference System (CRS)]]
- [[Projection]]
- [[European Petroleum Survey Group (EPSG)]]

### Backlinks

```dataview
LIST FROM [[Datum]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Datum"
```

