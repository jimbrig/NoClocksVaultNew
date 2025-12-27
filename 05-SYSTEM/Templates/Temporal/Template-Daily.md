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

<< [Yesterday](<% tp.date.now("YYYY-MM-DD", -1) %>.md) | [Tomorrow](<% tp.date.now("YYYY-MM-DD", 1) %>.md) >>

---
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

*Note created on [<% tp.date.now("YYYY-MM-DD") %>](<% tp.date.now("YYYY-MM-DD") %>.md).*

### Created Today
<!-- dynamic content -->
### Modified Today
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
