---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A lightweight, text-based format for storing and exchanging structured data.
tags:
  - Status/Complete
  - Topic/Development
  - Type/Definition
  - Type/Acronym
  - Type/FileFormat
aliases:
  - JavaScript Object Notation
  - JSON
---

# JavaScript Object Notation (JSON)
## Overview

**JavaScript Object Notation (JSON)** is a lightweight, text-based format for storing and exchanging data, commonly used in web applications and GIS for representing structured information. JSON is language-independent and human-readable while being easy for machines to parse.

## Key Concepts

**Object** is an unordered collection of key-value pairs enclosed in braces `{}`.
**Array** is an ordered list of values enclosed in brackets `[]`.
**Value** can be a string, number, boolean, null, object, or array.
**Key** is a string identifying a value in an object.

## Syntax

```json
{
  "name": "Example",
  "count": 42,
  "active": true,
  "items": ["a", "b", "c"],
  "metadata": {
    "created": "2025-01-01"
  }
}
```

## GIS Extensions

- [GeoJSON](GeoJSON.md) - JSON with geometry support
- TopoJSON - Topology-aware JSON encoding
- JSON-LD - Linked data in JSON

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [GeoJSON](GeoJSON.md)
- [YAML Ain't Markup Language (YAML)](YAML Ain't Markup Language (YAML).md)

### Backlinks
<!-- dynamic content -->
