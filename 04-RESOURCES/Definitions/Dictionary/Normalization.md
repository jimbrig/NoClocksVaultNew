---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The process of converting different units or scales into a common scale for comparison.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Statistics
  - Type/Definition
aliases:
  - Normalization
  - Data Normalization
---

# Normalization
## Overview

**Normalization** is the process of converting different units or scales into a common scale, often used in GIS and [MCDA](Multi-Criteria Decision Analysis (MCDA).md) to enable comparison and combination of diverse criteria. Normalization ensures that variables with different ranges contribute proportionally to analysis.

## Key Concepts

**Min-max normalization** scales values to a 0-1 range.
**Z-score normalization** centers data around mean with standard deviation units.
**Benefit criteria** are attributes where higher values are better.
**Cost criteria** are attributes where lower values are better (require inversion).
**Linear scaling** applies a linear transformation to values.

## Common Methods

| Method | Formula | Range |
|--------|---------|-------|
| Min-Max | $(x - min) / (max - min)$ | 0-1 |
| Z-Score | $(x - /mu) / /sigma$ | Unbounded |
| Max Scaling | $x / max$ | 0-1 |
| Log Transform | $/log(x)$ | Varies |

## Applications

- Multi-criteria analysis weighting
- Machine learning feature scaling
- Index creation (composite indicators)
- Raster reclassification

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Multi-Criteria Decision Analysis (MCDA)](Multi-Criteria Decision Analysis (MCDA).md)
- [Geographic Information System (GIS)](Geographic Information System (GIS).md)

### Backlinks
<!-- dynamic content -->
