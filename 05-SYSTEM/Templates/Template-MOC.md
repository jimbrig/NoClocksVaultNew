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
## Overview

> [!NOTE] About
> This note serves as an index for all notes related to the topic: **<% topicName %>**.

## Notes

> [!NOTE]
> *Currently, there are  individual notes with the `#Topic/<% topicName %>` tag, including this note.*
<!-- dynamic content -->
***

## Appendix

*Note created on [<% tp.date.now("YYYY-MM-DD") %>](<% tp.date.now("YYYY-MM-DD") %>.md) and last modified on [<% tp.date.now("YYYY-MM-DD") %>](<% tp.date.now("YYYY-MM-DD") %>.md).*

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
