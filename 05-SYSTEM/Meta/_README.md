---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Index of vault meta documentation - philosophy, conventions, and configuration
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Status/Ongoing
aliases:
  - Meta
  - Meta Index
  - Vault Meta
publish: false
---

# Meta

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains meta documentation about the vault itself - its philosophy, conventions, configuration, and organizational decisions.

## Documents

| Document | Purpose |
|----------|---------|
| [[Vault Philosophy]] | Core philosophy, structure decisions, and conventions |
| [[Tag Taxonomy]] | Complete tag hierarchy and usage guidelines |
| [[AI Setup]] | AI tooling configuration (Cursor, Copilot, MCP) |
| [[PLUGINS]] | Installed Obsidian plugins and their purposes |

## Index

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** meta documents in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Document",
  description AS "Description",
  file.mday AS "Modified"
FROM "05-SYSTEM/Meta"
WHERE file.name != this.file.name
SORT file.name ASC
```

## Quick Reference

### Vault Structure

```
00-INBOX/     → Quick capture
01-SLIPBOX/   → Atomic permanent notes
02-JOURNAL/   → Temporal notes
03-AREAS/     → MOCs (global indices)
04-RESOURCES/ → Typed knowledge
05-SYSTEM/    → Vault meta
99-ARCHIVES/  → Inactive
```

### Tag Categories

- **Status/**: `Complete`, `WIP`, `Draft`, `Ongoing`
- **Type/**: `MOC`, `Code`, `Definition`, `List`, `Guide`, `Checklist`, etc.
- **Topic/**: `R`, `Python`, `GIS`, `DevOps`, `Cloud`, `Business`, etc.

### Naming Prefixes

- `MOC - ` → Maps of Content
- `Code - ` → Code snippets
- `Definition - ` → Definitions
- `List - ` → Curated lists
- `Guide - ` → How-to guides
- `Checklist - ` → Checklists
- `_README` → Folder indices

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[AGENTS]]
- [[README]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"05-SYSTEM/Meta/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
