---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The smallest geographic unit used by the Census Bureau for data collection and tabulation.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Census
  - Type/Definition
  - Type/Acronym
aliases:
  - Census Tabulation Block
  - TABBLOCK
  - Census Block
---

# Census Tabulation Block (TABBLOCK)

```table-of-contents
```

## Overview

**Census Tabulation Block (TABBLOCK)** is the smallest geographic unit used by the U.S. Census Bureau for data collection and tabulation, typically bounded by visible features such as roads or rivers. There are approximately 8 million census blocks in the United States.

## Key Concepts

**Visible features** are physical boundaries like streets, roads, railroads, streams that define block edges.
**Non-visible features** are legal boundaries (city limits, county lines) that may also define blocks.
**Block number** is a 4-digit code within a census tract, where the first digit indicates the block group.
**GEOID** combines state (2) + county (3) + tract (6) + block (4) = 15 digits.
**Zero population** blocks include water, parks, commercial areas with no residents.

## Data Availability

| Data Type | Available at Block Level |
|-----------|-------------------------|
| Population counts | Yes (decennial census) |
| Housing unit counts | Yes (decennial census) |
| Demographics (age, race) | Yes (decennial census) |
| ACS estimates | No (block group minimum) |
| Economic data | No |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Block Group (BG)]]
- [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]]
- [[Federal Information Processing Standards (FIPS)]]

### Backlinks

```dataview
LIST FROM [[Census Tabulation Block (TABBLOCK)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Census Tabulation Block (TABBLOCK)"
```

