---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Meta
  - Topic/AI
  - Status/Ongoing
aliases:
  - AI Agents
  - Agent Instructions
publish: false
---

# AI Agents Instructions

> This file provides instructions for AI agents (Cursor, GitHub Copilot, etc.) working with the No Clocks Knowledge Vault.

## Vault Overview

This is an **Obsidian vault** for [No Clocks, LLC](https://noclocks.dev) - a curated knowledge base structured as a Zettelkasten with atomic, interlinked notes. The vault is published via [Quartz](https://quartz.jzhao.xyz/) to [docs.noclocks.dev/noclocksvault](https://docs.noclocks.dev/noclocksvault/).

## Directory Structure

| Folder | Purpose |
|--------|---------|
| `00-INBOX/` | Quick capture entry point for unsorted notes |
| `01-SLIPBOX/` | Atomic permanent notes (non-typed pure ideas) |
| `02-JOURNAL/` | Temporal notes (Daily, Weekly, Monthly, Quarterly, Annual) |
| `03-AREAS/` | MOCs - global knowledge indices |
| `04-RESOURCES/` | Typed reference knowledge (Code, Definitions, Lists, Guides, Checklists) |
| `05-SYSTEM/` | Vault configuration (Templates, Assets, Meta) |
| `99-ARCHIVES/` | Archived/deprecated content |
| `quartz/` | Quartz static site generator configuration |
| `.cursor/` | Cursor IDE configuration (rules, prompts, commands) |

### Knowledge Flow

```
CAPTURE (Inbox/Daily) → PROCESS (route by type) → NAVIGATE (MOCs) → REFERENCE
```

### Key Philosophy

- **Link to official docs** rather than duplicating them
- **Capture YOUR knowledge** - insights, customizations, curated selections
- **No individual Tool notes** - use curated Lists with external links instead
- **Project docs stay with projects** - this vault is for cross-project knowledge

## Frontmatter Conventions

All notes should include YAML frontmatter with these fields:

```yaml
---
creation_date: YYYY-MM-DD
modification_date: YYYY-MM-DD
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Brief description of the note
tags:
  - Status/{Complete|WIP|Draft|Ongoing}
  - Type/{Note|Definition|Code|Project|MOC|Readme|...}
  - Topic/{TopicName}
aliases:
  - Alternative names
publish: true|false
---
```

### Tag Conventions

**Status tags:**
- `Status/Complete` - Finished, reviewed notes
- `Status/WIP` - Work in progress
- `Status/Draft` - Initial draft state
- `Status/Ongoing` - Continuously updated

**Type tags:**
- `Type/MOC` - Maps of Content (index notes)
- `Type/Code` - Code snippets and examples
- `Type/Definition` - Term definitions/glossary
- `Type/Acronym` - (combined with Definition for acronyms)
- `Type/List` - Curated lists with external links
- `Type/Guide` - Step-by-step how-to guides
- `Type/Checklist` - Actionable checklists
- `Type/Quote` - Quotations
- `Type/Readme` - Folder/section documentation
- `Type/Note` - Generic slipbox notes
- `Type/Daily` - Daily journal entries
- `Type/Weekly` - Weekly reviews
- `Type/Monthly` - Monthly reviews

**Topic tags** (flat, combinable):
- `Topic/{Subject}` - Domain-specific categorization
- Examples: `Topic/R`, `Topic/GIS`, `Topic/DevOps`, `Topic/Cloud`, `Topic/Business`
- Combine for specificity: `#Topic/R` + `#Topic/Shiny` for R Shiny content

## Linking Conventions

- Use **wikilinks** for internal references: `[[Note Title]]`
- Use **aliased links** for readability: `[[Note Title|Display Text]]`
- Use **heading links** for specific sections: `[[Note Title#Heading]]`
- Embed content with `![[Note Title]]`
- External links use standard markdown: `[text](url)`

## Templates

Templates are located in `05-SYSTEM/Templates/` and use [Templater](https://github.com/SilentVoid13/Templater) syntax:

| Template | Purpose |
|----------|---------|
| `Template-Definition.md` | Glossary/term definitions |
| `Template-Daily.md` | Daily journal entries |
| `Template-Weekly.md` | Weekly reviews |
| `Template-Monthly.md` | Monthly reviews |
| `Template-Code-*.md` | Code snippet documentation |
| `Template-Frontmatter.md` | Base frontmatter fragment |

### Templater Syntax Reference

```javascript
// File metadata
<% tp.file.title %>                           // Current file name
<% tp.file.folder(true) %>                    // Full folder path
<% tp.file.creation_date("YYYY-MM-DD") %>     // Creation date
<% tp.file.last_modified_date("YYYY-MM-DD") %> // Modified date

// Date operations
<% tp.date.now("YYYY-MM-DD") %>               // Current date
<% tp.date.now("dddd, MMMM Do YYYY") %>       // Formatted date

// Conditional content
<%* if (condition) { -%>
content
<%* } -%>

// User input
<% await tp.system.prompt("Enter value") %>
<% await tp.system.suggester(["a","b"], ["A","B"]) %>
```

## Code Blocks and Plugins

### Dataview Queries

The vault uses [Dataview](https://github.com/blacksmithgu/obsidian-dataview) for dynamic content:

```dataview
LIST FROM [[Current Note]] AND -"CHANGELOG"
```

```dataview
TABLE file.ctime as Created, file.mtime as Modified
FROM "01-SLIPBOX"
WHERE contains(tags, "Status/WIP")
SORT file.mtime DESC
```

### Table of Contents

Use the automatic TOC plugin:

```table-of-contents
title: Contents
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Quartz Publishing

The vault publishes to Quartz with these considerations:

**Published:** All content except ignored patterns
**Ignored:** `05-SYSTEM/Templates`, `99-ARCHIVES`, `.obsidian`, `private`

**Branch workflow:**
1. `develop` - Raw Obsidian content with wikilinks
2. `main` - Converted to standard markdown links
3. `gh-pages` - Deployed Quartz site

When creating notes intended for publication:
- Set `publish: true` in frontmatter
- Avoid using Obsidian-only plugins in published content
- Ensure all linked notes exist or are also published

## Writing Guidelines

1. **Atomic notes:** Each note should cover one concept
2. **Meaningful titles:** Use descriptive, searchable names
3. **Liberal linking:** Connect ideas with wikilinks
4. **Consistent formatting:** Follow existing patterns
5. **Backlinks section:** Include Dataview backlinks query
6. **See Also section:** Add related note references

## File Naming

Notes use type prefixes for organization, with aliases for clean wikilinks:

| Type | Pattern | Example |
|------|---------|---------|
| MOC | `MOC - {Topic}.md` | `MOC - R.md` |
| Code | `Code - {Lang} - {Desc}.md` | `Code - R - Shiny Helpers.md` |
| Definition | `Definition - {Term}.md` | `Definition - API.md` |
| List | `List - {Category}.md` | `List - DevOps Tools.md` |
| Guide | `Guide - {Topic}.md` | `Guide - Local Dev Setup.md` |
| Checklist | `Checklist - {Topic}.md` | `Checklist - Deployment.md` |
| Quote | `Quote - {Author} - {Snippet}.md` | `Quote - Knuth - Premature Optimization.md` |
| Template | `Template-{Type}.md` | `Template-Definition.md` |
| Readme | `_README.md` | (folder index, converted to `README.md` on main branch) |

**Rules:**
- Use Title Case for note names
- Use hyphens for multi-word names in system files
- Add clean aliases in frontmatter (e.g., `Definition - API.md` has alias `API`)

## AI-Specific Instructions

When generating or modifying content:

1. **Preserve frontmatter:** Always maintain existing YAML frontmatter structure
2. **Use wikilinks:** Prefer `[[Note]]` over markdown links for internal references
3. **Match conventions:** Follow existing tag and folder conventions
4. **Templater awareness:** Recognize and preserve Templater syntax (don't execute it)
5. **No emojis:** Avoid using emojis unless explicitly requested
6. **Sparse comments:** Use comments sparingly, all lowercase
7. **Dataview compatibility:** Ensure generated queries are valid Dataview syntax

### Common Tasks

**Creating a new definition:**
1. Use `Template-Definition.md` structure
2. Name: `Definition - {Term}.md` (or `Definition - {Full Name (ACRONYM)}.md`)
3. Place in `04-RESOURCES/Definitions/Acronyms/` or `04-RESOURCES/Definitions/Dictionary/`
4. Add `Type/Definition` tag (plus `Type/Acronym` for acronyms)
5. Add aliases for the term and acronym
6. Include backlinks query

**Creating a new code snippet:**
1. Use `Template-Code-*.md` structure
2. Name: `Code - {Language} - {Description}.md`
3. Place in `04-RESOURCES/Code/{Language}/`
4. Add `Type/Code` and relevant `Topic/` tags
5. Include language-specific syntax highlighting
6. Add usage examples

**Creating a MOC:**
1. Name: `MOC - {Topic}.md`
2. Place in `03-AREAS/` (directly, not in subfolder)
3. Use `Type/MOC` and `Status/Ongoing` tags
4. Include Dataview queries for related content by topic tag
5. Cross-link to related MOCs

**Creating a curated list:**
1. Name: `List - {Category}.md`
2. Place in `04-RESOURCES/Lists/`
3. Use `Type/List` tag
4. Include tables with tool names, descriptions, and external URLs
5. Link to related Code/Guide notes for your implementations

**Creating a guide:**
1. Name: `Guide - {Topic}.md`
2. Place in `04-RESOURCES/Guides/`
3. Use `Type/Guide` tag
4. Include step-by-step instructions
5. Link to related tools (via Lists) and code snippets

### What NOT to Create

- **Individual Tool notes** - Add to Lists instead
- **Copied documentation** - Link to official docs
- **Project-specific docs** - Keep with the project
- **Stub notes** - If you only have a sentence, add to a List or skip

## Related Documentation

For more detailed documentation, see:

- [[05-SYSTEM/Meta/PHILOSOPHY]] - Core philosophy, structure decisions, and conventions
- [[TAGS]] - Complete tag hierarchy and usage guidelines
- [[05-SYSTEM/Meta/AGENTS]] - AI tooling configuration (Cursor, Copilot, MCP)
- [[PLUGINS]] - Installed Obsidian plugins and their purposes
