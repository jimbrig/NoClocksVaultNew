---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A Census Bureau geographic unit that is a subdivision of a census tract containing 600-3,000 people.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Census
  - Type/Definition
  - Type/Acronym
aliases:
  - Block Group
  - BG
  - Census Block Group
---

# Block Group (BG)

```table-of-contents
```

## Overview

**Block Group (BG)** is a geographic unit used by the U.S. Census Bureau that is a subdivision of a census tract and typically contains between 600 and 3,000 people. Block groups are the smallest geographic unit for which the Census Bureau publishes sample data from the American Community Survey (ACS).

## Key Concepts

**Census block** is the smallest geographic unit, bounded by visible features; block groups contain multiple blocks.
**Census tract** is the parent geography containing one or more block groups.
**GEOID** is the unique identifier formatted as: STATE(2) + COUNTY(3) + TRACT(6) + BLOCK GROUP(1).
**ACS data** is American Community Survey data available at the block group level.
**Population threshold** is the target of 600-3,000 people per block group.

## Geographic Hierarchy

```
State
└── County
    └── Census Tract
        └── Block Group (1-9 per tract)
            └── Census Block (many per BG)
```

## Data Availability

| Survey | Block Group Data |
|--------|------------------|
| Decennial Census | Full count (100%) |
| American Community Survey | Sample estimates with margins of error |
| Economic Census | Limited |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Federal Information Processing Standards (FIPS)]]
- [[Census Tabulation Block (TABBLOCK)]]
- [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]]
- [[US Census Bureau]]

### Backlinks

```dataview
LIST FROM [[Block Group (BG)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Block Group (BG)"
```

