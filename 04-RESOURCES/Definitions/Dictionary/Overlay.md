---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A GIS operation combining multiple spatial layers to analyze relationships between features.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Overlay
  - Overlay Analysis
  - Spatial Overlay
---

# Overlay

```table-of-contents
```

## Overview

**Overlay** is a GIS operation that involves combining multiple layers of spatial data to analyze relationships and interactions between different features. Overlay operations are fundamental to spatial analysis, enabling users to answer questions about how different geographic phenomena relate to each other.

## Key Concepts

**Union** combines all features from input layers, preserving all areas.
**Intersect** returns only areas common to all input layers.
**Erase/Difference** removes areas of one layer that overlap with another.
**Identity** preserves input features while adding attributes from overlay layer.
**Clip** cuts features to the boundary of a clip layer.
**Symmetric difference** returns areas in either layer but not both.

## Overlay Types

| Operation | Result |
|-----------|--------|
| Union | A + B + (A ∩ B) |
| Intersect | A ∩ B |
| Difference | A - B |
| Symmetric Difference | (A ∪ B) - (A ∩ B) |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Layer]]
- [[Geometry Engine - Open Source (GEOS)]]

### Backlinks

```dataview
LIST FROM [[Overlay]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Overlay"
```

