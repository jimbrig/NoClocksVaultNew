---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Standardized codes for uniform identification of geographic entities in the United States.
tags:
  - Status/Complete
  - Topic/GIS
  - Topic/Government
  - Type/Definition
  - Type/Acronym
aliases:
  - Federal Information Processing Standards
  - FIPS
  - FIPS Codes
---

# Federal Information Processing Standards (FIPS)

```table-of-contents
```

## Overview

**Federal Information Processing Standards (FIPS)** is a standardized set of numeric or alphanumeric codes issued by the National Institute of Standards and Technology (NIST) to ensure uniform identification of geographic entities such as states and counties. FIPS codes are widely used in government data systems, census products, and geographic databases.

## Key Concepts

**State FIPS** is a two-digit code uniquely identifying each U.S. state and territory.
**County FIPS** is a three-digit code identifying counties within a state.
**FIPS 5-digit** is the concatenation of state (2) + county (3) codes for unique county identification.
**Place FIPS** is a five-digit code identifying incorporated places and census-designated places.
**GEOID** is a geographic identifier that extends FIPS codes to smaller geographic units.

## Code Structure

| Level | Digits | Example | Description |
|-------|--------|---------|-------------|
| State | 2 | 36 | New York |
| County | 3 | 061 | New York County (Manhattan) |
| State+County | 5 | 36061 | New York County, NY |
| Tract | 6 | 000100 | Census tract within county |
| Block Group | 1 | 1 | Block group within tract |
| Block | 4 | 1001 | Block within block group |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [[Topologically Integrated Geographic Encoding and Referencing (TIGER)]]
- [[US Census Bureau]]
- [[Block Group (BG)]]

### Backlinks

```dataview
LIST FROM [[Federal Information Processing Standards (FIPS)]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Federal Information Processing Standards (FIPS)"
```

