---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A collection of spatial data representing a specific type of feature or theme in GIS.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Layer
  - Map Layer
  - Data Layer
---

# Layer

```table-of-contents
```

## Overview

**Layer** is a collection of spatial data in a GIS that represents a specific type of feature or theme, such as roads, land use, or elevation, often organized in a way that allows for easy visualization and analysis. Layers can be stacked and combined to create complex maps and enable spatial analysis.

## Key Concepts

**Base layer** is the foundational layer (imagery, streets) upon which other layers are displayed.
**Overlay** is a thematic layer displayed on top of base layers.
**Visibility** controls whether a layer is displayed.
**Z-order** determines the stacking order of layers.
**Transparency** allows underlying layers to show through.
**Symbology** defines how layer features are visually rendered.

## Layer Types

| Type | Data Model | Examples |
|------|------------|----------|
| Vector | Points, lines, polygons | Roads, parcels, POIs |
| Raster | Grid cells | Imagery, elevation, land cover |
| Tile | Pre-rendered images | Basemaps, cached services |
| WMS/WFS | Web service | External data streams |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Feature]]
- [[Overlay]]
- [[Symbology]]

### Backlinks

```dataview
LIST FROM [[Layer]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Layer"
```

