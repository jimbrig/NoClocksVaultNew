---
creation_date: <% tp.file.creation_date("YYYY-MM-DD") %>
modification_date: <% tp.file.last_modified_date("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: 
tags:
  - Status/Complete
  - Type/Definition
  - Type/Acronym
  - Topic/Placeholder
aliases:
  - <% tp.file.title %>
<%* if (tp.file.title.includes(" (")) { -%>
  - <% (tp.file.title.split(" (")[1]).replace(")", "") %>
  - <% (tp.file.title.split(" (")[0]) %>
<%* } -%>
---

# <% tp.file.title %>
## Overview

**<% tp.file.title %>** ...

## Key Concepts



## Appendix

*Created: <% tp.file.creation_date("YYYY-MM-DD") %> | Modified: <% tp.file.last_modified_date("YYYY-MM-DD") %>*

### See Also

- 

### Backlinks
<!-- dynamic content -->
