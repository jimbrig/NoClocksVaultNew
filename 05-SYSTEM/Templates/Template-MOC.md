<%*
const topicName = await tp.system.prompt("Enter Topic Name");
-%>
---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: 
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/<% topicName %>
aliases:
  - <% topicName %> Map of Content
publish: true
---

# <% tp.file.title %>

```table-of-contents
title: Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
debugInConsole: false
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to the topic: **<% topicName %>**.

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/<% topicName %>").length`** individual notes with the `#Topic/<% topicName %>` tag, including this note.*

```dataview
LIST
FROM #Topic/<% topicName %>
AND -"CHANGELOG"
AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

***

## Appendix

*Note created on [[<% tp.date.now("YYYY-MM-DD") %>]] and last modified on [[<% tp.date.now("YYYY-MM-DD") %>]].*

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
