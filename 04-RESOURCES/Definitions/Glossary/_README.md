---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Index of domain-specific glossaries
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - Glossary
  - Glossary Index
publish: true
---

# Glossary

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder contains domain-specific glossaries - comprehensive term lists for specific fields or topics.

Glossary notes collect related terms for a specific domain, such as GIS, Finance, or DevOps.

## Index

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** glossary documents in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Glossary",
  description AS "Description"
FROM "04-RESOURCES/Definitions/Glossary"
WHERE file.name != this.file.name
SORT file.name ASC
```

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[04-RESOURCES/Definitions/_README|Definitions Index]]
- [[04-RESOURCES/Definitions/Acronyms/_README|Acronyms]]
- [[04-RESOURCES/Definitions/Dictionary/_README|Dictionary]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Definitions/Glossary/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
