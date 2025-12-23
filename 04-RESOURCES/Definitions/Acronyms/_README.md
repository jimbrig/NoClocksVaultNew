---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Index of acronym definitions
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Acronyms
  - Acronyms Index
publish: true
---

# Acronyms

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains definitions for acronyms - abbreviated terms commonly used in technology, business, and various domains.

Acronym notes use the naming convention: `Definition - {Full Name (ACRONYM)}.md`

For example: `Definition - Application Programming Interface (API).md`

## Index

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** acronym definitions in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Acronym",
  description AS "Description"
FROM "04-RESOURCES/Definitions/Acronyms"
WHERE file.name != this.file.name
SORT file.name ASC
```

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[04-RESOURCES/Definitions/_README|Definitions Index]]
- [[04-RESOURCES/Definitions/Dictionary/_README|Dictionary]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Acronyms/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
