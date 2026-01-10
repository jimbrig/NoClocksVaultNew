---
creation_date: 2025-12-13
modification_date: 2025-12-13
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: A markup language for defining database schema structure and relationships.
tags:
  - Status/Complete
  - Topic/DataEngineering
  - Type/Definition
  - Type/Acronym
aliases:
  - Database Markup Language
  - DBML
---

# Database Markup Language (DBML)
## Overview

**Database Markup Language (DBML)** is a markup language used to define the structure and relationships of database schemas, often used in GIS to describe spatial databases and their components. DBML is designed to be simple and readable while supporting visualization and documentation.

## Key Concepts

**Table** defines a database table with columns.
**Column** specifies field name, type, and constraints.
**Relationship** defines foreign key connections between tables.
**Note** adds documentation to schema elements.
**Enum** defines enumerated value types.

## Syntax Example

```dbml
Table parcels {
  id uuid [pk]
  apn varchar(20) [unique]
  owner_name varchar(255)
  geometry geometry [note: 'Polygon in EPSG:4326']
  created_at timestamp [default: `now()`]
}

Table owners {
  id uuid [pk]
  name varchar(255)
  email varchar(255)
}

Ref: parcels.owner_id > owners.id
```

## Tools

- dbdiagram.io - Visual schema design
- dbdocs.io - Documentation generation
- Various database migration tools

## Appendix

*Created: 2025-12-13 | Modified: 2025-12-13*

### See Also

- [Database Management System (DBMS)](Database Management System (DBMS).md)

### Backlinks
<!-- dynamic content -->
