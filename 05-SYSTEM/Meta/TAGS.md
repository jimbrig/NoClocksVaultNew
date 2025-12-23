---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Complete tag taxonomy and conventions for the No Clocks Knowledge Vault
tags: [Status/Ongoing, Type/Meta, Topic/Obsidian]
aliases:
  - Tags
  - Tag System
  - Tag Conventions
publish: false
---

# Tag Taxonomy

```table-of-contents
title: Contents
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

This document defines the complete tag taxonomy for the No Clocks Knowledge Vault. Tags are organized into three categories: Status, Type, and Topic.

## Design Principles

1. **Flat over nested** - Avoid deep nesting like `Topic/Dev/Lang/R/Framework/Shiny`
2. **Combinable** - Use multiple flat tags: `#Topic/R` + `#Topic/Shiny`
3. **Consistent** - Every note gets Status + Type + Topic tags
4. **Purposeful** - Tags enable filtering and discovery

## Status Tags

Lifecycle state of the note.

| Tag | Description | Use When |
|-----|-------------|----------|
| `Status/Complete` | Finished, polished | Note is reviewed and done |
| `Status/WIP` | Work in progress | Actively being developed |
| `Status/Draft` | Initial state | First pass, needs refinement |
| `Status/Ongoing` | Continuously updated | READMEs, MOCs, living documents |

**Rule**: Every note gets exactly one Status tag.

## Type Tags

Classification of the note. Should match the file prefix.

| Tag | File Prefix | Description |
|-----|-------------|-------------|
| `Type/MOC` | `MOC - ` | Map of Content, navigation index |
| `Type/Code` | `Code - ` | Code snippet or example |
| `Type/Definition` | `Definition - ` | Term definition |
| `Type/Acronym` | (with Definition) | Acronym definition |
| `Type/List` | `List - ` | Curated list with links |
| `Type/Guide` | `Guide - ` | Step-by-step how-to |
| `Type/Checklist` | `Checklist - ` | Actionable checklist |
| `Type/Quote` | `Quote - ` | Quotation |
| `Type/Readme` | `_README` | Folder index |
| `Type/Note` | (none) | Generic slipbox note |
| `Type/Daily` | `YYYY-MM-DD` | Daily journal |
| `Type/Weekly` | (varies) | Weekly review |
| `Type/Monthly` | (varies) | Monthly review |
| `Type/Project` | (varies) | Project-specific note |

**Rule**: Every note gets at least one Type tag.

## Topic Tags

Subject domain. Flat structure, combinable.

### Programming Languages

| Tag | Description |
|-----|-------------|
| `Topic/R` | R programming language |
| `Topic/Python` | Python programming |
| `Topic/PowerShell` | PowerShell scripting |
| `Topic/SQL` | SQL and databases |
| `Topic/JavaScript` | JavaScript |
| `Topic/TypeScript` | TypeScript |
| `Topic/Bash` | Bash/shell scripting |
| `Topic/CSS` | CSS styling |
| `Topic/HTML` | HTML markup |
| `Topic/Go` | Golang |
| `Topic/Rust` | Rust programming |

### Frameworks and Libraries

| Tag | Description |
|-----|-------------|
| `Topic/Shiny` | R Shiny framework |
| `Topic/React` | React framework |
| `Topic/Node` | Node.js ecosystem |
| `Topic/Plumber` | R Plumber API framework |
| `Topic/FastAPI` | Python FastAPI |
| `Topic/Django` | Python Django |

### Platforms and Tools

| Tag | Description |
|-----|-------------|
| `Topic/Docker` | Docker containerization |
| `Topic/Git` | Git version control |
| `Topic/GitHub` | GitHub platform |
| `Topic/AWS` | Amazon Web Services |
| `Topic/Azure` | Microsoft Azure |
| `Topic/GCP` | Google Cloud Platform |
| `Topic/Vercel` | Vercel platform |
| `Topic/Netlify` | Netlify platform |

### Domains

| Tag | Description |
|-----|-------------|
| `Topic/GIS` | Geographic Information Systems |
| `Topic/Database` | Database design and management |
| `Topic/Cloud` | Cloud computing general |
| `Topic/DevOps` | DevOps practices |
| `Topic/AI` | Artificial Intelligence/ML |
| `Topic/Web` | Web development general |
| `Topic/API` | API design and integration |
| `Topic/Security` | Security practices |
| `Topic/Testing` | Testing and QA |

### Business

| Tag | Description |
|-----|-------------|
| `Topic/Business` | Business operations |
| `Topic/Finance` | Finance and accounting |
| `Topic/Legal` | Legal matters |
| `Topic/Marketing` | Marketing and outreach |
| `Topic/Strategy` | Business strategy |

### Meta

| Tag | Description |
|-----|-------------|
| `Topic/PKM` | Personal Knowledge Management |
| `Topic/Obsidian` | Obsidian-specific |
| `Topic/Meta` | About the vault itself |
| `Topic/Productivity` | Productivity methods |

## Usage Examples

### Code Snippet

```yaml
tags:
  - Status/Complete
  - Type/Code
  - Topic/R
  - Topic/Shiny
```

### Definition with Acronym

```yaml
tags:
  - Status/Complete
  - Type/Definition
  - Type/Acronym
  - Topic/GIS
```

### MOC

```yaml
tags:
  - Status/Ongoing
  - Type/MOC
  - Topic/R
```

### Daily Note

```yaml
tags:
  - Status/Complete
  - Type/Daily
```

## Dataview Queries

### Find all R code snippets

```dataview
LIST FROM #Type/Code AND #Topic/R
```

### Find all WIP notes

```dataview
TABLE file.mtime as "Modified"
FROM #Status/WIP
SORT file.mtime DESC
```

### Find notes by combined topics

```dataview
LIST FROM #Topic/R AND #Topic/Shiny
```

## Adding New Tags

When adding new tags:

1. Add to the appropriate category in this document
2. Use singular form (`Topic/Database` not `Topic/Databases`)
3. Use PascalCase for multi-word tags (`Topic/DevOps`)
4. Prefer existing tags over creating new ones
5. Keep Topic tags flat - don't nest

## Related Notes

- [[05-SYSTEM/Meta/PHILOSOPHY]]
- [[05-SYSTEM/Meta/AGENTS]]

## Appendix

*Created: 2024-12-20 | Modified: 2024-12-20*

### Backlinks

```dataview
LIST FROM [[Tag Taxonomy]] AND -"CHANGELOG" AND -"05-SYSTEM/Meta/Tag Taxonomy"
```
