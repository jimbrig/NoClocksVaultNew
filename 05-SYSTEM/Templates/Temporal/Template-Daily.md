---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Daily journal note for <% tp.date.now("MMMM D, YYYY") %>
tags:
  - Type/Journal
  - Status/Ongoing
aliases:
  - <% tp.date.now("MMMM D, YYYY") %>
  - <% tp.date.now("dddd, MMMM D") %>
publish: false
---

# <% tp.date.now("YYYY-MM-DD") %>

> <% tp.date.now("dddd, MMMM D, YYYY") %>

## Navigation

<< [[<% tp.date.now("YYYY-MM-DD", -1) %>|Yesterday]] | [[<% tp.date.now("YYYY-MM-DD", 1) %>|Tomorrow]] >>

---

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 3
includeLinks: true
```

## Daily Journal

> [!NOTE] Daily activity log and notes

- 

## Daily Discoveries

> [!TIP] New tools, technologies, code snippets, ideas discovered today

- 

## Tasks

> [!TODO] Today's tasks

- [ ] 

---

## Appendix

*Note created on [[<% tp.date.now("YYYY-MM-DD") %>]].*

### Created Today

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location"
FROM ""
WHERE file.cday = date("<% tp.date.now("YYYY-MM-DD") %>")
  AND file.name != this.file.name
SORT file.ctime ASC
```

### Modified Today

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location"  
FROM ""
WHERE file.mday = date("<% tp.date.now("YYYY-MM-DD") %>")
  AND file.cday != date("<% tp.date.now("YYYY-MM-DD") %>")
  AND file.name != this.file.name
SORT file.mtime ASC
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
