---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A human-readable data serialization format often used for configuration files.
tags:
  - Status/Complete
  - Topic/Development
  - Type/Definition
  - Type/Acronym
  - Type/FileFormat
aliases:
  - YAML Ain't Markup Language
  - YAML
---

# YAML Ain't Markup Language (YAML)
## Overview

**YAML Ain't Markup Language (YAML)** is a human-readable data serialization format often used for configuration files and data exchange in software applications, including GIS. YAML emphasizes readability and uses indentation to represent structure.

## Key Concepts

**Indentation** defines structure (spaces, not tabs).
**Key-value pairs** use `key: value` syntax.
**Lists** use dashes (`-`) for items.
**Comments** begin with `#`.
**Multi-line strings** use `|` or `>` indicators.

## Syntax

```yaml
# Example YAML configuration
name: Example Project
version: 1.0
settings:
  debug: true
  timeout: 30
layers:
  - name: roads
    type: line
  - name: parcels
    type: polygon
```

## YAML vs JSON

| Aspect | YAML | JSON |
|--------|------|------|
| Readability | More readable | Compact |
| Comments | Supported | Not supported |
| Syntax | Indentation-based | Braces/brackets |
| Complexity | More features | Simpler |

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [JavaScript Object Notation (JSON)](JavaScript Object Notation (JSON).md)

### Backlinks
<!-- dynamic content -->
