---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Python programming language and ecosystem
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Python
aliases:
  - Python Map of Content
  - Python Programming
  - Python Language
  - MOC - Python
publish: true
---

# MOC - Python

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Python** - the versatile, high-level programming language.

## Core Areas

### Language Fundamentals
- Data structures and algorithms
- OOP and functional programming
- Type hints and annotations

### Data Science Stack
- NumPy, Pandas, Polars
- Scikit-learn, TensorFlow, PyTorch
- Jupyter notebooks

### Web Development
- FastAPI, Flask, Django
- API development
- Async programming

### Tooling
- pip, uv, poetry
- Virtual environments
- Testing (pytest)

## Related MOCs

- [[MOC - Data Science]] - Data analysis
- [[MOC - Artificial Intelligence]] - AI/ML
- [[MOC - Data Engineering]] - Data pipelines
- [[MOC - Development]] - General programming
- [[MOC - R]] - Alternative for statistics

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Python").length`** individual notes with the `#Topic/Python` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Python
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Python"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Python]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Python"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
