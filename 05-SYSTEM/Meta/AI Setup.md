---
creation_date: 2024-12-20
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Documentation of AI tooling and configuration for the No Clocks Knowledge Vault
tags:
  - Status/Ongoing
  - Type/Note
  - Topic/AI
  - Topic/Meta
aliases:
  - AI Configuration
  - Cursor Setup
  - AI Agents Setup
publish: false
---

# AI Setup

```table-of-contents
title: Contents
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

This note documents the AI tooling and configuration for the No Clocks Knowledge Vault. The vault leverages multiple AI assistants and tools to enhance note-taking, content generation, and knowledge management.

## Cursor IDE Configuration

The `.cursor/` folder contains all Cursor-specific configuration:

### Directory Structure

```
.cursor/
├── commands/          # workflow automation commands
├── mcp.json          # MCP server configuration
├── plans/            # planning documents
├── prompts/          # reusable AI prompts
├── rules/            # context rules for AI
└── settings.json     # Cursor settings
```

### Rules

Rules provide context to Cursor about vault conventions:

| Rule File | Purpose |
|-----------|---------|
| `obsidian-vault.mdc` | Core vault structure, frontmatter, linking conventions |
| `quartz-publishing.mdc` | Quartz publishing workflow and configuration |
| `templater-syntax.mdc` | Templater plugin syntax reference |

### Prompts

Reusable prompts for common operations:

| Prompt | Purpose |
|--------|---------|
| `create-definition.md` | Generate definition/glossary notes |
| `create-code-snippet.md` | Generate code snippet documentation |
| `create-moc.md` | Generate Maps of Content |
| `summarize-note.md` | Summarize existing notes |
| `improve-note.md` | Analyze and improve note quality |

### Commands

Workflow automation commands:

| Command | Purpose |
|---------|---------|
| `create-daily-note.md` | Generate daily journal entries |
| `generate-backlinks.md` | Add backlinks sections to notes |
| `launch-quartz.md` | Sync content and start Quartz server |
| `process-inbox.md` | Organize inbox notes |
| `update-readme.md` | Update README with vault statistics |
| `validate-frontmatter.md` | Check and fix frontmatter |

Audit and cleanup commands:

| Command | Purpose |
|---------|---------|
| `audit-full.md` | Comprehensive vault health check |
| `audit-tags.md` | Review tag consistency and conventions |
| `audit-frontmatter.md` | Validate frontmatter completeness |
| `audit-links.md` | Find broken links and orphaned notes |
| `audit-structure.md` | Check note structure and formatting |
| `audit-content-gaps.md` | Identify areas needing content |
| `audit-templates.md` | Validate template syntax and usage |
| `audit-naming.md` | Review file naming consistency |

### Plans

Planning documents for vault maintenance:

| Plan | Purpose |
|------|---------|
| `vault-maintenance.md` | Weekly/monthly/quarterly maintenance tasks |
| `content-expansion.md` | Areas for content growth |

## MCP Servers

Model Context Protocol (MCP) servers extend AI capabilities:

| Server | Purpose | Type |
|--------|---------|------|
| **exa** | Web search with AI | HTTP |
| **firecrawl** | Web scraping and crawling | stdio |
| **tavily** | Real-time web search | stdio |
| **repomix** | Repository packaging for AI analysis | stdio |
| **context7** | Library documentation retrieval | HTTP |
| **obsidian** | Obsidian vault interaction via Local REST API | stdio |

### Obsidian MCP Server

The Obsidian MCP server requires the [Local REST API](https://github.com/coddingtonbear/obsidian-local-rest-api) community plugin:

1. Install "Local REST API" from Community Plugins
2. Enable the plugin and note the API key
3. Configure in `.cursor/mcp.json`:

```json
{
  "obsidian": {
    "command": "uvx",
    "args": ["mcp-obsidian"],
    "env": {
      "OBSIDIAN_API_KEY": "your-api-key",
      "OBSIDIAN_HOST": "http://127.0.0.1",
      "OBSIDIAN_PORT": "27123"
    }
  }
}
```

## Obsidian Copilot

The vault also uses [Obsidian Copilot](https://github.com/logancyang/obsidian-copilot) for in-editor AI assistance.

### Custom Prompts Location

Custom prompts are stored in `05-SYSTEM/Copilot/copilot-custom-prompts/`:

| Prompt | Function |
|--------|----------|
| Summarize | Create bullet-point summaries |
| Generate glossary | Extract terms and definitions |
| Simplify | Simplify complex text |
| Fix grammar and spelling | Proofread content |
| Make shorter/longer | Adjust content length |
| Generate table of contents | Create TOC from headings |

### Conversation History

Copilot conversations are saved in `05-SYSTEM/Copilot/copilot-conversations/`.

## AGENTS.md

The root `AGENTS.md` file provides comprehensive instructions for AI agents working with this vault. It covers:

- Vault structure and purpose
- Frontmatter conventions
- Tag system
- Linking rules
- Template usage
- Quartz publishing
- Writing guidelines

This file is automatically read by AI tools that support the AGENTS.md convention.

## Key Conventions for AI

When AI generates or modifies content:

1. **Preserve frontmatter** - Maintain existing YAML structure
2. **Use wikilinks** - Prefer `[[Note]]` over markdown links
3. **Match tags** - Follow Status/Type/Topic conventions
4. **No emojis** - Unless explicitly requested
5. **Templater awareness** - Preserve Templater syntax in templates
6. **Dataview compatibility** - Ensure valid query syntax

## Related Notes

- [[PLUGINS]]
- [[Guide - PKM Organization]]

## Appendix

*Created: 2024-12-20 | Modified: 2024-12-20*

### See Also

- [[AGENTS]]
- [Cursor Documentation](https://docs.cursor.com/)
- [MCP Protocol](https://modelcontextprotocol.io/)
- [Obsidian Copilot](https://github.com/logancyang/obsidian-copilot)

### Backlinks

```dataview
LIST FROM [[AI Setup]] AND -"CHANGELOG" AND -"05-SYSTEM/Meta/AI Setup"
```
