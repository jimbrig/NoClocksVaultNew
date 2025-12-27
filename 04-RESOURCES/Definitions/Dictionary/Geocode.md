---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The process of converting addresses or place names into geographic coordinates.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Geocode
  - Geocoding
  - Address Geocoding
---

# Geocode
## Overview

**Geocode** (or geocoding) is the process of converting addresses or place names into geographic coordinates (latitude and longitude) for mapping and spatial analysis in a GIS. Geocoding enables the visualization and analysis of address-based data on maps.

## Key Concepts

**Address parsing** breaks an address into components (street, city, zip).
**Address matching** compares parsed address to reference data.
**Interpolation** estimates location along a street segment from address range.
**Rooftop geocoding** returns precise building location.
**Match score** indicates confidence in the geocode result.
**Reverse geocoding** converts coordinates back to addresses.

## Geocoding Methods

| Method | Accuracy | Description |
|--------|----------|-------------|
| Rooftop | High | Precise building location |
| Parcel centroid | High | Center of property parcel |
| Street interpolation | Medium | Estimated along block |
| ZIP centroid | Low | Center of ZIP code |
| City centroid | Low | Center of city |

## Geocoding Services

- Google Geocoding API
- US Census Geocoder
- OpenStreetMap Nominatim
- Esri World Geocoder
- HERE Geocoding

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Coordinates](Coordinates.md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)
- [Topologically Integrated Geographic Encoding and Referencing (TIGER)](Topologically Integrated Geographic Encoding and Referencing (TIGER).md)
- [Georeference](Georeference.md)

### Backlinks
<!-- dynamic content -->
