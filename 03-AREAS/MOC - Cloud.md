---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Cloud Computing platforms and services
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/Cloud
aliases:
  - Cloud Map of Content
  - Cloud Computing
  - MOC - Cloud
  - AWS
  - Azure
  - GCP
publish: true
---

# MOC - Cloud

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Cloud Computing** - on-demand delivery of computing resources over the internet.

## Platforms

### Major Providers
- Amazon Web Services (AWS)
- Microsoft Azure
- Google Cloud Platform (GCP)

### Core Services
- Compute (VMs, containers, serverless)
- Storage (object, block, file)
- Networking and CDN
- Databases and analytics

### DevOps & Infrastructure
- Infrastructure as Code (IaC)
- CI/CD pipelines
- Monitoring and observability

## Related MOCs

### Parent/Broader MOCs
- [[MOC - Computer Science]] - Computing foundations

### Sibling MOCs (Same Level)
- [[MOC - Development]] - Cloud-native development & DevOps
- [[MOC - Data Engineering]] - Cloud data pipelines
- [[MOC - Databases]] - Managed database services

### Platform MOCs
- [[MOC - Linux]] - Cloud server administration
- [[MOC - Windows]] - Windows cloud services

### Domain Applications
- [[MOC - Geospatial]] - Cloud-native geospatial
- [[MOC - Web Development]] - Cloud hosting and deployment

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/Cloud").length`** individual notes with the `#Topic/Cloud` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/Cloud
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Cloud"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Cloud]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Cloud"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
