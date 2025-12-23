---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A spatial data format combining raster and vector data, or the geographic extent of a dataset.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Coverage
  - ArcInfo Coverage
---

# Coverage

```table-of-contents
```

## Overview

**Coverage** can refer to two concepts in GIS: (1) A legacy ArcInfo data format that represents geographic features using a combination of topologically linked features (arcs, nodes, polygons), or (2) the geographic area represented by a spatial dataset. The term is also used generally to describe the extent of data availability.

## Key Concepts (Data Format)

**Arc** is a line feature connecting nodes in coverage topology.
**Node** is a point where arcs meet or terminate.
**Polygon** is an area defined by enclosing arcs.
**Tic** is a registration point for georeferencing.
**INFO table** is an attribute table in the legacy coverage format.

## Key Concepts (Geographic)

**Spatial coverage** is the geographic extent of a dataset.
**Complete coverage** means no gaps in the data area.
**Temporal coverage** is the time period represented by data.

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Geographic Information System (GIS)]]
- [[Extent]]
- [[Vector]]

### Backlinks

```dataview
LIST FROM [[Coverage]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Coverage"
```

