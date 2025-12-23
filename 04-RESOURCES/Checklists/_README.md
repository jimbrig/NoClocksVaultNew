---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Index of actionable checklists
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Checklists
  - Checklists Index
publish: true
---

# Checklists

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains actionable checklists - reusable lists of tasks for common procedures.

Checklist notes use the naming convention: `Checklist - {Topic}.md`

For example: `Checklist - Deployment.md` or `Checklist - Project Setup.md`

## Index

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** checklists in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Checklist",
  description AS "Description"
FROM "04-RESOURCES/Checklists"
WHERE file.name != this.file.name
SORT file.name ASC
```

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[04-RESOURCES/Guides/_README|Guides]]
- [[04-RESOURCES/Lists/_README|Lists]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Checklists/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
