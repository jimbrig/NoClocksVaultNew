---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: An XML-based format for encoding geographic information as an OGC standard.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
  - Type/FileFormat
aliases:
  - Geography Markup Language
  - GML
---

# Geography Markup Language (GML)
## Overview

**Geography Markup Language (GML)** is an XML-based format for encoding geographic information, allowing for the representation and exchange of spatial data in GIS applications. GML is an [OGC](Open Geospatial Consortium (OGC).md) standard and serves as the default output format for [WFS](Web Feature Service (WFS).md).

## Key Concepts

**Feature** is a geographic object with geometry and properties.
**Geometry** uses GML-specific elements (Point, LineString, Polygon, etc.).
**Coordinate Reference System** is specified via `srsName` attribute.
**Application schema** defines domain-specific feature types.
**Profile** is a subset of GML for specific use cases (Simple Features).

## GML Structure

```xml
<gml:FeatureCollection>
  <gml:featureMember>
    <myns:Building gml:id="b1">
      <myns:name>City Hall</myns:name>
      <myns:geometry>
        <gml:Point srsName="EPSG:4326">
          <gml:pos>40.7128 -74.006</gml:pos>
        </gml:Point>
      </myns:geometry>
    </myns:Building>
  </gml:featureMember>
</gml:FeatureCollection>
```

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Web Feature Service (WFS)](Web Feature Service (WFS).md)
- [Open Geospatial Consortium (OGC)](Open Geospatial Consortium (OGC).md)
- [GeoJSON](GeoJSON.md)
- [Keyhole Markup Language (KML)](Keyhole Markup Language (KML).md)

### Backlinks
<!-- dynamic content -->
