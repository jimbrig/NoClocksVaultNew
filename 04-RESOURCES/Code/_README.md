---
creation_date: 2024-12-13
modification_date: 2024-12-13
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Type/Code
  - Topic/Meta
  - Topic/Developmentelopment
  - Status/Ongoing
aliases:
  - Code
  - Code Snippets
  - Code Folder
  - Code Readme
description: Index of all code snippets organized by programming language
cssclasses:
  - readme
  - clean-embeds
---

# Code

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `04-RESOURCES/Code` directory.
> Code snippets are organized by programming language in subfolders.

## Languages

> [!abstract] Available Languages
> Browse code snippets by language below. Each language folder contains its own README with an index of available snippets.

```dataview
TABLE WITHOUT ID
  file.link AS "Language",
  length(filter(file.outlinks, (x) => contains(x.path, file.folder))) AS "Snippets"
FROM "04-RESOURCES/Code"
WHERE file.name = "_README" AND file.folder != "04-RESOURCES/Code"
SORT file.folder ASC
```

## All Notes

> [!tip] Total Notes
> *Currently, there are **`$= dv.pages('"04-RESOURCES/Code"').length - 1`** total notes in the Code folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  regexreplace(file.folder, ".*Code/", "") AS "Language",
  file.mday AS "Modified"
FROM "04-RESOURCES/Code"
WHERE file.name != "_README" AND file.name != this.file.name
SORT file.folder ASC, file.name ASC
```

***

## Appendix

*Note created on [[2024-12-13]] and last modified on [[2024-12-13]].*

### See Also

- [[MOC - Development|Development Map of Content]]
- [[MOC - Technology|Technology Map of Content]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Code/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

