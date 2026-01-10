---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A mapping table relating equivalent codes or identifiers between different systems.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/DataEngineering
  - Type/Definition
aliases:
  - Crosswalk
  - Crosswalk Table
  - Code Mapping
---

# Crosswalk
## Overview

**Crosswalk** is a table or database that maps equivalent codes or identifiers from one system to another, often used in GIS to relate different geographic coding systems. Crosswalks enable data integration between datasets using different classification schemes.

## Key Concepts

**Source code** is the identifier in the original system.
**Target code** is the equivalent identifier in the destination system.
**Relationship type** can be one-to-one, one-to-many, or many-to-many.
**Temporal validity** indicates the time period the mapping applies.
**Allocation factor** handles cases where one code maps to multiple targets.

## Common GIS Crosswalks

| From | To | Purpose |
|------|-----|---------|
| ZIP Code | ZCTA | Postal to Census geography |
| FIPS (old) | FIPS (new) | County code changes |
| Census Tract (2010) | Census Tract (2020) | Decennial boundary changes |
| NAICS | SIC | Industry classification |

## Use Cases

- Joining datasets from different vintages
- Converting between geographic hierarchies
- Harmonizing classification systems
- Temporal data integration

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Federal Information Processing Standards (FIPS)](Federal Information Processing Standards (FIPS).md)
- [ZIP Code Tabulation Area (ZCTA)](ZIP Code Tabulation Area (ZCTA).md)

### Backlinks
<!-- dynamic content -->
