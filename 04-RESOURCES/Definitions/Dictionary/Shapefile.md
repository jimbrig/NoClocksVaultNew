---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A popular vector data format storing geometry and attribute information in multiple files.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
  - Type/FileFormat
aliases:
  - Shapefile
  - ESRI Shapefile
  - SHP
---

# Shapefile

```table-of-contents
```

## Overview

**Shapefile** is a popular vector data format used in GIS that stores geometric location and attribute information for spatial features, typically consisting of multiple files with extensions such as .shp, .shx, and .dbf. Developed by Esri in the early 1990s, shapefiles remain widely used despite limitations.

## Key Concepts

**Multi-file format** requires several files with the same base name.
**Single geometry type** means each shapefile can only contain one type (point, line, or polygon).
**DBF limitation** restricts field names to 10 characters.
**File size limit** caps individual components at 2GB.
**No NULL support** in attribute fields.

## Required Files

| Extension | Purpose |
|-----------|---------|
| .shp | Geometry (shapes) |
| .shx | Spatial index |
| .dbf | Attributes (dBASE table) |

## Optional Files

| Extension | Purpose |
|-----------|---------|
| .prj | Coordinate reference system |
| .cpg | Character encoding |
| .sbn/.sbx | Spatial index (Esri) |

## Limitations

- 2GB file size limit
- 10-character field names
- No date-time support
- Single geometry type per file
- No topology

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[GeoJSON]]
- [[GeoPackage]]
- [[Vector]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[Shapefile]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Shapefile"
```

