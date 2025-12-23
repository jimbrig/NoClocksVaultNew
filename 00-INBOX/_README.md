---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Quick capture inbox for unsorted notes
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Status/Ongoing
aliases:
  - Inbox
  - Inbox Index
publish: false
---

# Inbox

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> The Inbox is for quick capture of unsorted notes. Notes here should be processed and moved to their appropriate location.

### Processing Workflow

1. Capture quick thoughts/discoveries here
2. Review during daily/weekly processing
3. Determine note type (Code, Definition, List, Guide, etc.)
4. Move to appropriate folder with proper naming
5. Add proper frontmatter and tags

## Current Inbox Contents

> [!TIP] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** notes in the inbox awaiting processing.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.ctime AS "Created",
  file.mtime AS "Modified"
FROM "00-INBOX"
WHERE file.name != this.file.name AND file.name != "_index"
SORT file.ctime DESC
```

---

## Appendix

*Note created on [[2024-12-20]] and last modified on [[2024-12-20]].*

### See Also

- [[05-SYSTEM/Meta/PHILOSOPHY]]
- [[MOC - PKM]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"00-INBOX/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
