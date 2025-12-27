---
creation_date: 2025-04-03
modification_date: 2025-04-03
author: Cline Assistant
tags:
  - Type/Guide
  - Topic/PKM
  - Status/Complete
aliases:
  - Obsidian Vault Organization Guide
  - PKM Organization Guide
publish: true
permalink: /system/pkm-organization-guide
description: "A comprehensive guide for organizing the No Clocks Knowledge Vault"
cssclasses:
  - guide
---

# Personal Knowledge Management (PKM) Organization Guide

## Overview

This guide outlines the structure, workflows, and best practices for organizing the No Clocks Knowledge Vault. It serves as a reference to maintain consistency and effectiveness in your Personal Knowledge Management (PKM) system.

## Vault Structure

The vault follows a modified PARA/Zettelkasten hybrid approach with numbered prefixes for easier navigation:

```plaintext
NoClocksVault/
├── 00-INBOX/           # Capture new information temporarily
├── 01-SLIPBOX/         # Permanent, atomic notes (Zettelkasten)
├── 02-PROJECTS/        # Time-bound initiatives with specific outcomes
│   ├── Clients/        # Client-specific projects
│   ├── Freelance/      # Freelance work
│   ├── Internal/       # Internal company projects
│   ├── Personal/       # Personal projects
│   └── Templates/      # Project templates
├── 03-AREAS/           # Areas of ongoing responsibility
├── 04-RESOURCES/       # Topic-based reference materials
├── 05-SYSTEM/          # Vault configuration and meta-information
└── 99-ARCHIVES/        # Completed or inactive notes
```

## Workflows

### Note Creation Workflow

1. **Capture** all new information in `00-INBOX/`
2. **Process** notes regularly (daily/weekly):
   - Delete if unnecessary
   - Reference and move to appropriate location if useful
   - Create permanent notes in `01-SLIPBOX/` if containing valuable insights
3. **Organize** by creating links between notes
4. **Review** periodically to maintain and improve the system

### Project Notes Workflow

1. Create a new folder in the appropriate `02-PROJECTS/` subfolder
2. Use project templates from `02-PROJECTS/Templates/`
3. Link relevant notes from other areas
4. Move to `99-ARCHIVES/` when completed

## Note Naming Conventions

- **Knowledge Notes**: Use descriptive titles that clearly indicate the content
- **Project Notes**: Use prefix format `[YYYY-MM-DD] Project Name - Document Type`
- **Reference Notes**: Use clear, searchable titles

## Metadata Best Practices

Use YAML frontmatter consistently in all notes:

```yaml
---
creation_date: YYYY-MM-DD
modification_date: YYYY-MM-DD
author: Your Name
tags:
  - Type/[Note|Project|Resource|etc]
  - Topic/[MainTopic]
  - Status/[Ongoing|Complete|Draft]
aliases: []
publish: true|false
permalink: optional/path
description: "Brief description of note content"
---
```

## Tagging System

Use a hierarchical tagging system:

- **Type/**: The kind of note (Article, Project, Resource, Template, etc.)
- **Topic/**: The main subject area
- **Status/**: Current state (Ongoing, Complete, Draft, etc.)
- **Priority/**: Importance level (if applicable)

## Linking Strategy

- Use bi-directional links liberally to connect related concepts
- Create Maps of Content (MOCs) for important topic areas
- Use the "unlinked mentions" feature to discover connections
- Consider embedding related notes when appropriate

## Regular Maintenance Tasks

- **Daily**: Process new inbox items
- **Weekly**: Review and update active project notes
- **Monthly**: Audit MOCs and index notes
- **Quarterly**: Archive completed projects and review tagging system

## Smart Usage of Plugins

Recommended plugins for organization:

- **Dataview**: For dynamic note queries and indexes
- **Templater**: For advanced templating
- **Smart Connections**: For discovering note relationships
- **Calendar**: For temporal organization
- **Kanban**: For project management
- **Obsidian Git**: For version control and backup

## Advanced Organization Techniques

### PARA Method Integration

- **Projects**: Time-bound initiatives with specific goals
- **Areas**: Ongoing responsibilities requiring maintenance
- **Resources**: Topic-based reference materials
- **Archives**: Inactive or completed items

### Progressive Summarization

Use highlighting layers to make future retrieval easier:

1. **Bold** key points
2. *Italicize* particularly important insights
3. ==Highlight== the most critical concepts

### Atomic Note Principles

1. One idea per note
2. Write in your own words
3. Keep notes brief and focused
4. Connect extensively to other notes

## Example MOC Structure

Maps of Content (MOCs) serve as navigational hubs for key topics:

```
03-AREAS/
├── PKM-MOC.md           # Personal Knowledge Management concepts
├── Development-MOC.md   # Software development topics
├── Business-MOC.md      # Business concepts and strategies
└── etc.
```

Each MOC should include:
- Brief overview of the topic
- Key concepts with links to relevant notes
- Organizational structure for subtopics
- Related MOCs

---

## Appendix

*Note created on [2025-04-03](2025-04-03.md) and last modified on [2025-04-03](2025-04-03.md).*

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
