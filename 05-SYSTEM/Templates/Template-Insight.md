---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Atomic insight extracted from AI conversation
tags:
  - Type/Note
  - Type/Insight
  - Topic/Placeholder
  - Status/Complete
aliases:
  - <% tp.file.title %>
publish: true
source_chat: "[[]]"
source_provider: <%* const provider = await tp.system.suggester(["Perplexity", "ChatGPT", "Claude", "Cursor", "Copilot", "Other"], ["Perplexity", "ChatGPT", "Claude", "Cursor", "Copilot", "Other"], false, "Source Provider"); tR += provider %>
confidence: <%* const conf = await tp.system.suggester(["High", "Medium", "Low"], ["high", "medium", "low"], false, "Confidence Level"); tR += conf %>
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

**<% tp.file.title %>** ...

> [!QUOTE] Source
> Extracted from: `= this.source_chat`
> Provider: `= this.source_provider`
> Confidence: `= this.confidence`

## Key Concept

<!-- The core atomic idea in 2-3 sentences -->



## Details

<!-- Expanded explanation with context -->



## Implications

<!-- Why this matters, connections to other ideas -->

- 

## Supporting Evidence

<!-- Citations, references, or logical arguments supporting this insight -->

- 

---

## Appendix

*Created: <% tp.date.now("YYYY-MM-DD") %> | Modified: <% tp.date.now("YYYY-MM-DD") %>*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
