---
creation_date: 2024-04-22
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Index of term definitions - acronyms, dictionary terms, and glossaries
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Definitions
  - Definitions Index
publish: true
---

# Definitions

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains term definitions organized into three categories:
> - **Acronyms** - Abbreviated terms (API, GIS, SQL)
> - **Dictionary** - General terms and concepts
> - **Glossary** - Domain-specific term collections

### Naming Convention

All definitions use the prefix: `Definition - {Term}.md`

For acronyms: `Definition - {Full Name (ACRONYM)}.md`

### Subfolders

| Folder | Purpose | Example |
|--------|---------|---------|
| [[04-RESOURCES/Definitions/Acronyms/_README\|Acronyms/]] | Abbreviated terms | `Definition - Application Programming Interface (API).md` |
| [[04-RESOURCES/Definitions/Dictionary/_README\|Dictionary/]] | General terms | `Definition - Normalization.md` |
| [[04-RESOURCES/Definitions/Glossary/_README\|Glossary/]] | Domain glossaries | `Glossary - GIS Terms.md` |

## All Definitions

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"04-RESOURCES/Definitions"').length - 4`** definitions across all subfolders.*

```dataview
TABLE WITHOUT ID
  file.link AS "Term",
  file.folder AS "Category"
FROM "04-RESOURCES/Definitions"
WHERE file.name != "_README"
SORT file.name ASC
```

---

## Appendix

*Note created on [[2024-04-22]] and last modified on [[2024-12-20]].*

### See Also

- [[MOC - GIS]]
- [[MOC - PKM]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
