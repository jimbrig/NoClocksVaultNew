# AI Chat Processing Workflow

Instructions for AI assistants processing LLM chat exports in this Obsidian vault.

## Overview

This vault uses a structured system for extracting knowledge from AI conversations. The CEPA framework guides the process: Capture, Evaluate, Process, Archive.

## File Locations

| Purpose | Path |
|---------|------|
| Raw chat imports | `04-RESOURCES/Integrations/Chats/` |
| Extracted definitions | `04-RESOURCES/Definitions/Dictionary/` |
| Extracted code | `04-RESOURCES/Code/{Language}/` |
| Extracted guides | `04-RESOURCES/Guides/` |
| Pure insights | `01-SLIPBOX/` |
| Archived chats | `99-ARCHIVES/AI-Chats/` |

## Chat Frontmatter Schema

```yaml
---
creation_date: YYYY-MM-DD
modification_date: YYYY-MM-DD
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Brief chat description
tags:
  - Type/Chat
  - Topic/{Topics}
  - Status/{Draft|Complete}
aliases:
  - Short name
publish: false
provider: Perplexity|ChatGPT|Claude|Cursor|Copilot|Other
chat_date: YYYY-MM-DD
extraction_status: pending|in_progress|complete
extracted_notes: []
topics: []
key_insights: []
---
```

## Extraction Process

### Step 1: Identify Insights

Look for:
- Term definitions and explanations
- Novel connections between concepts
- Code examples and patterns
- Step-by-step procedures
- Resource recommendations

### Step 2: Create Atomic Notes

For each insight:
1. Choose appropriate note type (Definition, Code, Guide, Slipbox)
2. Use correct naming convention
3. Include required frontmatter with `source_chat` link
4. Add proper Topic tags matching MOCs
5. Include Backlinks Dataview query

### Step 3: Update Source Chat

After extracting:
1. Set `extraction_status: complete`
2. Populate `extracted_notes` array with wikilinks
3. Check off items in the insights checklist

## Extracted Note Template

```yaml
---
creation_date: YYYY-MM-DD
modification_date: YYYY-MM-DD
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Extracted insight description
tags:
  - Status/Complete
  - Type/{Definition|Note|Code|Guide}
  - Topic/{Matching MOC topics}
aliases:
  - Clean term name
publish: true
source_chat: "[[04-RESOURCES/Integrations/Chats/{chat-file}]]"
source_provider: Perplexity|ChatGPT|Claude|Cursor|Copilot
confidence: high|medium|low
---
```

## Confidence Levels

- `high`: Well-established facts, multiple sources confirm
- `medium`: Generally accepted, minor verification may help
- `low`: Speculative or requires further research

## Topic Tag Guidelines

Use spaced tags that match MOC queries:
- `Topic/Information Theory`
- `Topic/Computer Science`
- `Topic/Data Science`
- `Topic/Quantum Mechanics`

Check `03-AREAS/` for existing MOCs before creating tags.

## Quality Checklist

For each extracted note:
- [ ] Atomic (one concept per note)
- [ ] Proper file naming convention
- [ ] Complete frontmatter with source_chat
- [ ] Topic tags match relevant MOCs
- [ ] Backlinks Dataview query included
- [ ] Cross-links to related notes
