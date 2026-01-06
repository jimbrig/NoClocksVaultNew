---
creation_date: 2026-01-06
modification_date: 2026-01-06
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Clippings
  - Web Clips
  - Web Clips Index
publish: true
permalink:
description: Index of all notes under the Clippings directory
cssclasses:
  - readme
---

# Clippings

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `00-INBOX/Clippings` directory.

## Index

> [!tip] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** individual notes in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.mday AS "Modified"
FROM "00-INBOX/Clippings"
WHERE file.name != this.file.name
SORT file.name ASC
```

***

## Appendix

*Note created on [[2026-01-06]] and last modified on [[2026-01-06]].*

### See Also

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"00-INBOX/Clippings/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2026
