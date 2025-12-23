---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: 
tags:
  - Status/Complete
  - Type/Guide
  - Topic/Placeholder
aliases:
  - <% tp.file.title.replace("Guide - ", "") %> Guide
  - How to <% tp.file.title.replace("Guide - ", "") %>
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

This guide walks through **<% tp.file.title.replace("Guide - ", "") %>**.

## Prerequisites

- Requirement 1
- Requirement 2
- See [[List - Related Tools]] for tool options

## Steps

### Step 1: First Step

Description of what to do.

```bash
# example command
```

### Step 2: Second Step

Description of what to do next.

### Step 3: Third Step

Continue with the process.

## Verification

How to confirm the process completed successfully:

- [ ] Check 1
- [ ] Check 2

## Troubleshooting

### Common Issue 1

**Problem**: Description of the issue.

**Solution**: How to fix it.

### Common Issue 2

**Problem**: Description of the issue.

**Solution**: How to fix it.

---

## Appendix

*Created: <% tp.date.now("YYYY-MM-DD") %> | Modified: <% tp.date.now("YYYY-MM-DD") %>*

### See Also

- [[Related Guide]]
- [[Related Code Note]]
- [[List - Related Tools]]

### Backlinks

```dataview
LIST FROM [[<% tp.file.title %>]] AND -"CHANGELOG" AND -"<% tp.file.folder(true) %>/<% tp.file.title %>"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
