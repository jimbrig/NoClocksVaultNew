---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: AI Chat exports integration folder for processing and knowledge extraction
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Topic/AI
  - Topic/Integration
  - Status/Ongoing
aliases:
  - AI Chats
  - Chat Integration
  - LLM Conversations
publish: false
---

# AI Chat Integration

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This folder serves as the **integration point for AI LLM chat exports** from various providers (Perplexity, ChatGPT, Claude, etc.). Chats imported here should be reviewed, processed, and valuable insights extracted as atomic notes.

## Configuration

### Providers

Supported AI providers are listed below:

- [[04-RESOURCES/Integrations/Chats/ChatGPT/_README|ChatGPT]]
- [[04-RESOURCES/Integrations/Chats/Claude/_README|Claude]]
- [[04-RESOURCES/Integrations/Chats/Perplexity/_README|Perplexity]]
- [[04-RESOURCES/Integrations/Chats/Gemini/_README|Gemini]]
- [[04-RESOURCES/Integrations/Chats/Other/_README|Other]]

All new imported content will create a new notes under the respective folder based on the provider source of the chat, i.e. Perplexity's imports are located at [[04-RESOURCES/Integrations/Chats/Perplexity/_README|04-RESOURCES/Integrations/Chats/Perplexity/*]].

### Naming Conventions

- Format: `YYYY-MM-DD_{Provider}_{Title}.md`
- Example: `2025-12-31_Perplexity_Information theory computational encoding.md`

> [!NOTE] Note:
> Note that spaces are okay for the `{Title}` as by default, when exported from these services they will typically include spaces.

### Plugins & Tooling



## Processing Workflow

### 1. Import

Raw AI chat exports land here via:
- Manual paste/copy with `Template-AIChat.md`
- Plugin imports (Nexus AI Chat Importer)
- Exported markdown files

### 2. Triage

Review each chat and update `extraction_status`:

| Status | Meaning |
|--------|---------|
| `pending` | Needs initial review |
| `in_progress` | Actively extracting insights |
| `complete` | Fully processed |
| `archived` | Low value, kept for reference |

### 3. Extract

Create atomic notes for valuable insights:

| Content Type | Target Location |
|--------------|-----------------|
| Definitions | `04-RESOURCES/Definitions/` |
| Code Snippets | `04-RESOURCES/Code/` |
| Concepts/Ideas | `01-SLIPBOX/` |
| Guides/How-tos | `04-RESOURCES/Guides/` |
| Curated Links | `04-RESOURCES/Lists/` |

### 4. Archive

After extraction:
1. Set `extraction_status: complete`
2. Add extracted note links to frontmatter `extracted_notes` array
3. Optionally move to `99-ARCHIVES/AI-Chats/`

## Current Chats

> [!TIP] Chat Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').where(p => p.file.name != "_README").length`** chats in this integration folder.*

### Unprocessed Chats

```dataview
TABLE WITHOUT ID
  file.link AS "Chat",
  provider AS "Provider",
  chat_date AS "Date",
  file.ctime AS "Imported"
FROM "04-RESOURCES/Integrations/Chats"
WHERE file.name != "_README" AND (extraction_status = null OR extraction_status = "pending")
SORT file.ctime DESC
```

### In Progress

```dataview
TABLE WITHOUT ID
  file.link AS "Chat",
  provider AS "Provider",
  extraction_status AS "Status"
FROM "04-RESOURCES/Integrations/Chats"
WHERE extraction_status = "in_progress"
SORT file.mtime DESC
```

### Completed

```dataview
TABLE WITHOUT ID
  file.link AS "Chat",
  provider AS "Provider",
  length(extracted_notes) AS "Extractions"
FROM "04-RESOURCES/Integrations/Chats"
WHERE extraction_status = "complete"
SORT file.mtime DESC
LIMIT 10
```

## Supported Providers

| Provider | Export Format | Import Method |
|----------|--------------|---------------|
| Perplexity | Markdown with citations | Manual copy/paste |
| ChatGPT | JSON ZIP | Nexus AI Chat Importer |
| Claude | Markdown | Manual or plugin |
| Cursor | Session logs | Manual export |
| GitHub Copilot | Chat history | Manual export |

## Recommended Plugins

- **Nexus AI Chat Importer** - Bulk import ChatGPT/Claude ZIP exports
- **Atomizer** - AI-powered atomic note extraction (OpenAI API)
- **Smart Connections** - Find semantically related notes
- **Dataview** - Query and dashboard capabilities

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [[04-RESOURCES/Integrations/_README|Integrations Overview]]
- [[Guide - AI Chat Processing Workflow]]
- [[MOC - PKM]]
- [[05-SYSTEM/Meta/AGENTS]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"04-RESOURCES/Integrations/Chats/_README"
```

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
