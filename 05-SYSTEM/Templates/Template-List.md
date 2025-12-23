---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: 
tags:
  - Status/Ongoing
  - Type/List
  - Topic/Placeholder
aliases:
  - <% tp.file.title.replace("List - ", "") %>
publish: true
---

# <% tp.file.title %>

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Curated collection of tools and resources for **<% tp.file.title.replace("List - ", "") %>**.

## Category 1

| Tool | Description | Links |
|------|-------------|-------|
| Name | Brief description | [Site](url) - [Docs](url) |
| Name | Brief description | [Site](url) - [Docs](url) |

## Category 2

| Tool | Description | Links |
|------|-------------|-------|
| Name | Brief description | [Site](url) - [Docs](url) |

## Notes

- For related configurations, see [[Code - Tool - Config]]
- For setup guides, see [[Guide - Topic]]

---

## Appendix

*Created: <% tp.date.now("YYYY-MM-DD") %> | Modified: <% tp.date.now("YYYY-MM-DD") %>*

### See Also

- [[Related List]]
- [[Related MOC]]

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
