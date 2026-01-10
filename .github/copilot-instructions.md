# GitHub Copilot Instructions

This is the **No Clocks Knowledge Vault** - an Obsidian vault for personal knowledge management.

## Quick Reference

See `AGENTS.md` at the repository root for comprehensive AI agent instructions.

## Vault Structure

```
00-INBOX/      - Quick capture, unsorted notes
01-SLIPBOX/    - Atomic permanent notes (pure ideas)
02-JOURNAL/    - Daily, Weekly, Monthly notes
03-AREAS/      - MOCs (Maps of Content)
04-RESOURCES/  - Typed reference knowledge
05-SYSTEM/     - Templates, Assets, Meta
99-ARCHIVES/   - Archived content
```

## Core Conventions

### Frontmatter (Required)

```yaml
---
creation_date: YYYY-MM-DD
modification_date: YYYY-MM-DD
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Status/{Complete|WIP|Draft}
  - Type/{MOC|Definition|Code|Guide|List|Note}
  - Topic/{Subject}
aliases: []
publish: true|false
---
```

### File Naming

| Type | Pattern |
|------|---------|
| MOC | `MOC - {Topic}.md` |
| Definition | `Definition - {Term}.md` |
| Code | `Code - {Lang} - {Desc}.md` |
| Guide | `Guide - {Topic}.md` |
| List | `List - {Category}.md` |

### Linking

- Wikilinks: `[Note Title](Note Title.md)`
- Aliased: `[Display Text](Note Title.md)`
- Sections: `[Note](Note.md#Heading)`

## Restrictions

- No emojis unless requested
- Sparse, lowercase comments
- Preserve Templater syntax (do not execute)
- Use spaced topic tags: `Topic/Information Theory`

## Workflow Documentation

Specialized workflows have their own documentation:
- `04-RESOURCES/Guides/` - Workflow guides
- `.cursor/rules/` - Cursor-specific rules
- `.github/instructions/` - Additional instructions
