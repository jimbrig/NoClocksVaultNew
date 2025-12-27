---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Status/WIP
aliases:
  - <% tp.file.title %>
publish: true
permalink:
description:
cssclasses:
  - code
---

# <% tp.file.title %>

> [!info] Code Properties
> - **Language**: 
> - **Packages**: 

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

```
# code goes here
```

## Usage

How to use this code:

```
# usage example
```

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [[<% tp.date.now("YYYY-MM-DD") %>]] and last modified on [[<% tp.date.now("YYYY-MM-DD") %>]].*

### See Also

- [[04-RESOURCES/Code/_README|Code Index]]

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
