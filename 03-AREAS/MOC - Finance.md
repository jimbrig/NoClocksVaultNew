---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Finance and Financial Analysis
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Finance
aliases:
  - Finance Map of Content
  - Finance
  - Financial Analysis
  - FinTech
  - MOC - Finance
publish: true
---

# MOC - Finance

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Finance** - the management of money, investments, and financial systems.

## Core Areas

### Personal Finance
- Budgeting and savings
- Investment strategies
- Tax planning

### Corporate Finance
- Financial statements
- Valuation methods
- Capital structure

### Financial Markets
- Securities and trading
- Market analysis
- Risk management

### Quantitative Finance
- Financial modeling
- Algorithmic trading
- Portfolio optimization

## Related MOCs

### Child/Specialized MOCs
- [[MOC - Actuarial Science]] - Insurance and risk mathematics

### Sibling MOCs (Same Level)
- [[MOC - Business]] - Business operations
- [[MOC - Statistics]] - Statistical foundations

### Language-Specific MOCs
- [[MOC - R]] - Financial analysis in R (tidyquant, fredr)
- [[MOC - Python]] - Python finance (pandas, quantlib)

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Finance").length`** individual notes with the `#Topic/Finance` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Finance
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Finance"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Finance]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Finance"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
