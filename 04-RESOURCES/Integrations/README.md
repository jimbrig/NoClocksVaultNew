---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: External tool integrations and automated import landing zones
tags:
  - Type/Readme
  - Topic/Meta
  - Topic/PKM
  - Topic/Integration
  - Status/Ongoing
aliases:
  - Integrations
  - External Integrations
  - Import Landing Zones
publish: false
---

# Integrations
## Overview

> [!NOTE] About
> This folder contains **integration landing zones** for external tools and automated imports. Each subfolder serves as a stable entry point for a specific tool or service, where raw artifacts arrive before being processed into atomic notes.

## Architecture Philosophy

### Why Not INBOX?

The `00-INBOX/` folder is designed for **manual quick capture**—fleeting thoughts and one-off notes that you create. Integration folders serve a different purpose:

| Aspect | 00-INBOX | 04-RESOURCES/Integrations |
|--------|----------|---------------------------|
| **Entry** | Manual typing | Plugin/tool imports |
| **Path Stability** | Can reorganize | Must remain fixed for tools |
| **Content Type** | Your thoughts | External artifacts |
| **Processing** | Route by type | Extract then archive |

### The Integration Pattern

```
External Source → Plugin/Tool → Integration Folder → Processing → Atomic Notes
     ↓                              ↓                    ↓
 (Perplexity)        (04-RESOURCES/Integrations/Chats/)  (01-SLIPBOX/)
 (Readwise)          (04-RESOURCES/Integrations/Readwise/) (04-RESOURCES/Definitions/)
 (Web Clipper)       (04-RESOURCES/Integrations/Clippings/)
```

## Integration Folders

| Folder | Source | Plugin/Method | Template |
|--------|--------|---------------|----------|
| [Chats/](04-RESOURCES/Integrations/Chats/_README/.md) | AI LLMs (Perplexity, ChatGPT, Claude) | Nexus AI Chat Importer, manual | `Template-AIChat.md` |
| [Clippings/](04-RESOURCES/Integrations/Clippings/_README/.md) | Web pages | Obsidian Web Clipper | Browser extension |
| [Medium/](04-RESOURCES/Integrations/Medium/_README/.md) | Medium articles | Medium Importer | Plugin |
| [Raindrop/](04-RESOURCES/Integrations/Raindrop/_README/.md) | Raindrop.io bookmarks | Raindrop sync | Plugin |
| [Readwise/](04-RESOURCES/Integrations/Readwise/_README/.md) | Kindle, articles, tweets | Readwise Official | Plugin |
| [Zotero/](04-RESOURCES/Integrations/Zotero/_README/.md) | Academic papers | Zotero Integration | Plugin |
| [Embeds/](04-RESOURCES/Integrations/Embeds/_README/.md) | Embedded widgets | Manual | Various |

## Configuration Reference

### Plugin Target Paths

Configure your plugins to use these stable paths:

```yaml
# Nexus AI Chat Importer
target_folder: "04-RESOURCES/Integrations/Chats/"

# Obsidian Web Clipper
clippings_folder: "04-RESOURCES/Integrations/Clippings/"

# Readwise Official
base_folder: "04-RESOURCES/Integrations/Readwise/"

# Medium Importer
import_folder: "04-RESOURCES/Integrations/Medium/"

# Zotero Integration
literature_notes_folder: "04-RESOURCES/Integrations/Zotero/"
```

## Processing Workflow

All integration folders follow a similar processing pattern:

### 1. Arrival

Raw artifacts land in the integration folder via automated import or manual placement.

### 2. Review

Periodically review new items (daily/weekly):
- Scan for high-value content
- Mark items for extraction
- Archive low-value items

### 3. Extract

Create atomic notes from valuable content:
- Use appropriate templates (Definition, Code, Guide, etc.)
- Link back to source artifact via `source_*` frontmatter fields
- Place in permanent locations (`01-SLIPBOX/`, `04-RESOURCES/`)

### 4. Update Source

After extraction:
- Update extraction status in source artifact
- Add links to extracted notes
- Optionally move to `99-ARCHIVES/`

## Dashboard

### Recent Imports (All Integrations)
<!-- dynamic content -->
### By Integration
<!-- dynamic content -->
## Adding New Integrations

When adding a new external tool:

1. Create subfolder: `04-RESOURCES/Integrations/{ToolName}/`
2. Add `README.md` with:
   - Tool description
   - Plugin configuration
   - Processing workflow
   - Dataview queries
3. Create template if needed: `05-SYSTEM/Templates/Template-{Type}.md`
4. Configure plugin to use the stable path
5. Update this index

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [MOC - PKM](MOC - PKM.md)
- [Guide - AI Chat Processing Workflow](Guide - AI Chat Processing Workflow.md)
- [05-SYSTEM/Meta/AGENTS](05-SYSTEM/Meta/AGENTS.md)
- [Inbox](00-INBOX/README.md) (for manual quick capture)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
