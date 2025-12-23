---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The smallest unit of a raster image representing a specific ground area with a single value.
tags:
  - Status/Complete
  - Topic/GIS
  - Type/Definition
aliases:
  - Pixel
  - Picture Element
  - Cell
---

# Pixel

```table-of-contents
```

## Overview

**Pixel** is the smallest unit of a raster image in GIS, representing a specific area on the ground with a single value, such as color or elevation. The term is a contraction of "picture element" and forms the building blocks of all raster data.

## Key Concepts

**Cell size** is the ground dimension of a pixel (e.g., 30m x 30m).
**Resolution** is the pixel size; smaller pixels = higher resolution.
**Bit depth** is the number of bits used to store pixel values (8-bit = 256 values).
**Band** is a single layer of values (RGB images have 3 bands).
**NoData** is a special value indicating no valid data for a pixel.

## Pixel Values

| Data Type | Bit Depth | Value Range |
|-----------|-----------|-------------|
| Unsigned 8-bit | 8 | 0 to 255 |
| Signed 16-bit | 16 | -32,768 to 32,767 |
| Unsigned 16-bit | 16 | 0 to 65,535 |
| 32-bit float | 32 | Continuous decimal |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Raster]]
- [[Resolution]]
- [[Geographic Information System (GIS)]]

### Backlinks

```dataview
LIST FROM [[Pixel]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Pixel"
```

