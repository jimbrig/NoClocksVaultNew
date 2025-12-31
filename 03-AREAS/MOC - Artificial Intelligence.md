---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for Artificial Intelligence and Machine Learning topics
tags:
  - Type/MOC
  - Status/Ongoing
  - Topic/AI
  - Topic/ML
aliases:
  - AI Map of Content
  - Artificial Intelligence Map of Content
  - AI
  - Machine Learning
  - ML
  - MOC - AI
  - MOC - Machine Learning
publish: true
---

# MOC - Artificial Intelligence

```table-of-contents
title: Contents 
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes related to **Artificial Intelligence** - the simulation of human intelligence in machines.

## Core Areas

### Machine Learning
- Supervised, unsupervised, reinforcement learning
- Deep learning and neural networks
- Model training and evaluation

### Natural Language Processing
- Language models and transformers
- Text analysis and generation
- Conversational AI

### Computer Vision
- Image recognition and classification
- Object detection
- Video analysis

### AI Applications
- LLM integrations and workflows
- AI-assisted development
- Automation and agents

## Related MOCs

- [[MOC - Data Science]] - Data-driven AI
- [[MOC - Computer Science]] - Computational foundations
- [[MOC - Development]] - AI integration in apps
- [[MOC - Python]] - Primary AI/ML language

## Notes

> [!NOTE]
> *Currently, there are **`$= dv.pages("#Topic/AI").length`** individual notes with the `#Topic/AI` tag.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.folder AS "Location",
  join(filter(file.tags, (t) => startswith(t, "#Type/")), ", ") AS "Type"
FROM #Topic/AI
AND -"CHANGELOG"
AND -"03-AREAS/MOC - Artificial Intelligence"
SORT file.name ASC
```

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### Backlinks

```dataview
LIST FROM [[MOC - Artificial Intelligence]] AND -"CHANGELOG" AND -"03-AREAS/MOC - Artificial Intelligence"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
