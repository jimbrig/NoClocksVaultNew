---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A CBSA type with at least one urbanized area of 50,000+ population.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Census
  - Type/Definition
  - Type/Acronym
aliases:
  - Metropolitan Statistical Area
  - MSA
  - Metro Area
---

# Metropolitan Statistical Area (MSA)
## Overview

**Metropolitan Statistical Area (MSA)** is a type of [Core-Based Statistical Area](Core-Based Statistical Area (CBSA).md) that has at least one urbanized area with a population of 50,000 or more inhabitants, along with adjacent territories that have a high degree of social and economic integration with the core. MSAs are defined by the [OMB](Office of Management and Budget (OMB).md) and are widely used for economic analysis and federal program administration.

## Key Concepts

**Urbanized area** is a densely developed territory with a population of 50,000 or more.
**Principal city** is the largest city in the MSA and other cities meeting population/employment thresholds.
**Metropolitan division** is a subdivision of large MSAs with populations of 2.5 million or more.
**Outlying county** is a county with substantial commuting ties (25%+) to the central county.

## Structure

```
Metropolitan Statistical Area
├── Central County (contains urban core)
├── Outlying County (25%+ commuting)
└── Outlying County (25%+ commuting)
    └── May be subdivided into Metropolitan Divisions
```

## Examples

| MSA | 2020 Pop | Counties |
|-----|----------|----------|
| New York-Newark-Jersey City | 19.8M | 23 counties in NY, NJ, PA |
| Los Angeles-Long Beach-Anaheim | 13.0M | 2 counties |
| Chicago-Naperville-Elgin | 9.5M | 14 counties in IL, IN, WI |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Core-Based Statistical Area (CBSA)](Core-Based Statistical Area (CBSA).md)
- [Combined Statistical Area (CSA)](Combined Statistical Area (CSA).md)
- [Office of Management and Budget (OMB)](Office of Management and Budget (OMB).md)

### Backlinks
<!-- dynamic content -->
