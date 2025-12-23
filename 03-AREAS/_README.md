---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Maps of Content (MOCs) - global knowledge indices
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Status/Ongoing
aliases:
  - Areas
  - MOCs
  - Maps of Content
publish: true
---

# Areas - Maps of Content

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains **Maps of Content (MOCs)** - global knowledge indices that aggregate related notes across the vault.

### Purpose

MOCs serve as structural navigation notes that:
- Index related content by topic
- Provide entry points into knowledge domains
- Use Dataview queries to dynamically surface related notes
- Cross-link to other MOCs for connected navigation

### Naming Convention

MOCs use the prefix: `MOC - {Topic}.md`

## Current MOCs

```dataview
TABLE WITHOUT ID
  file.link AS "MOC",
  description AS "Description"
FROM "03-AREAS"
WHERE file.name != this.file.name AND startswith(file.name, "MOC")
SORT file.name ASC
```

## Creating New MOCs

Use the [[05-SYSTEM/Templates/Template-MOC|MOC Template]] to create new Maps of Content.

MOCs should be created for topics with:
- 5+ related notes across the vault
- Clear domain boundaries
- Ongoing relevance

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[05-SYSTEM/Meta/PHILOSOPHY]]
- [[MOC - PKM]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"03-AREAS/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
