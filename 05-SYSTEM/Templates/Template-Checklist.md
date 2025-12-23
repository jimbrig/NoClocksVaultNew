---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: 
tags:
  - Status/Complete
  - Type/Checklist
  - Topic/Placeholder
aliases:
  - <% tp.file.title.replace("Checklist - ", "") %> Checklist
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

Actionable checklist for **<% tp.file.title.replace("Checklist - ", "") %>**.

## Checklist

### Section 1

- [ ] Task 1
- [ ] Task 2
- [ ] Task 3

### Section 2

- [ ] Task 4
- [ ] Task 5
- [ ] Task 6

### Section 3

- [ ] Task 7
- [ ] Task 8

## Notes

Additional notes or context for using this checklist.

---

## Appendix

*Created: <% tp.date.now("YYYY-MM-DD") %> | Modified: <% tp.date.now("YYYY-MM-DD") %>*

### See Also

- [[Related Checklist]]
- [[Related Guide]]

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
