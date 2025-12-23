---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Atomic permanent notes - the Zettelkasten core
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Status/Ongoing
aliases:
  - Slipbox
  - Slipbox Index
  - Zettelkasten
publish: true
---

# Slipbox

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> The Slipbox contains atomic, polished permanent notes - the core of the Zettelkasten method.

### What Goes Here

Notes that are:
- **Atomic** - One idea per note
- **Permanent** - Polished and complete
- **Non-typed** - Pure ideas/insights, not code snippets or definitions
- **Linked** - Connected to other notes

### What Does NOT Go Here

- Code snippets → `04-RESOURCES/Code/`
- Definitions → `04-RESOURCES/Definitions/`
- Lists → `04-RESOURCES/Lists/`
- Guides → `04-RESOURCES/Guides/`
- Quick captures → `00-INBOX/`

## Index

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** atomic notes in the slipbox.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.mday AS "Modified"
FROM "01-SLIPBOX"
WHERE file.name != this.file.name
SORT file.mtime DESC
```

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[05-SYSTEM/Meta/PHILOSOPHY]]
- [[MOC - PKM]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"01-SLIPBOX/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
