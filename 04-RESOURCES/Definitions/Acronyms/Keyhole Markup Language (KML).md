---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: An XML-based format for storing and sharing geographic data, commonly used with Google Earth.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/Acronym
  - Type/FileFormat
aliases:
  - Keyhole Markup Language
  - KML
  - KMZ
---

# Keyhole Markup Language (KML)
## Overview

**Keyhole Markup Language (KML)** is an XML-based file format used for storing and sharing geographic data, often used with Google Earth and other GIS applications for visualizing spatial information. KML was originally developed by Keyhole, Inc. (acquired by Google) and is now an OGC standard.

## Key Concepts

**Placemark** is a point feature with name and description.
**Polygon/LineString** are geometry types for areas and lines.
**Style** defines appearance (colors, icons, line widths).
**NetworkLink** references external KML files for dynamic content.
**Ground overlay** places an image on the Earth's surface.
**KMZ** is a compressed (ZIP) archive containing KML and resources.

## KML Structure

```xml
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
  <Document>
    <Placemark>
      <name>Example Point</name>
      <Point>
        <coordinates>-74.006,40.7128,0</coordinates>
      </Point>
    </Placemark>
  </Document>
</kml>
```

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [GeoJSON](GeoJSON.md)
- [Geography Markup Language (GML)](Geography Markup Language (GML).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)

### Backlinks
<!-- dynamic content -->
