---
creation_date: 2025-12-23
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Software Development, DevOps, and Engineering practices
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Development
  - Topic/DevOps
aliases:
  - Dev Map of Content
  - Development Map of Content
  - Software Development
  - DevOps
  - MOC - DevOps
  - Software Engineering
publish: true
---

# MOC - Development

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Software Development** - the process of designing, coding, testing, and maintaining software systems. This includes **DevOps** practices for continuous integration and deployment.

## Core Areas

### Software Engineering
- Design patterns and architecture
- Code quality and testing
- Version control (Git)
- Code review practices

### DevOps & Infrastructure
- CI/CD pipelines
- Infrastructure as Code (IaC)
- Containerization (Docker, Kubernetes)
- Monitoring and observability

### Development Workflows
- Agile and Scrum methodologies
- Documentation practices
- API design and development

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Computer Science]] - Theoretical foundations

### Child/Specialized MOCs
- [[MOC - Web Development]] - Web application development
- [[MOC - R Shiny]] - R Shiny application development
- [[MOC - Data Engineering]] - Data pipeline development

### Language-Specific MOCs
- [[MOC - R]] - R programming
- [[MOC - Python]] - Python programming
- [[MOC - JavaScript]] - JavaScript/TypeScript
- [[MOC - PowerShell]] - PowerShell scripting

### Platform MOCs
- [[MOC - Cloud]] - Cloud deployment
- [[MOC - Linux]] - Linux systems
- [[MOC - Windows]] - Windows development

## Guides

| Guide | Description |
|-------|-------------|
| [[Guide - Conventional Git Commits]] | Commit message conventions |
| [[Guide - R Coding Conventions]] | R style guide |
| [[Guide - JavaScript Coding Conventions]] | JavaScript style guide |
| [[Guide - PowerShell Naming Conventions]] | PowerShell conventions |

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Development OR #Topic/DevOps OR #Topic/Dev").length`** individual notes with development-related tags.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM (#Topic/Development OR #Topic/DevOps OR #Topic/Dev)
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Development"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Development]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Development"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
