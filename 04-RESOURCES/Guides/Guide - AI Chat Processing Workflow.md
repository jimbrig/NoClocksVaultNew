---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Complete workflow for processing AI LLM chat exports and extracting knowledge
tags:
  - Status/Complete
  - Type/Guide
  - Topic/PKM
  - Topic/AI
aliases:
  - AI Chat Processing Workflow Guide
  - How to AI Chat Processing Workflow
  - LLM Chat Processing
  - Chat Knowledge Extraction
publish: true
---

# Guide - AI Chat Processing Workflow
## Overview

This guide walks through **processing AI LLM chat exports** and extracting valuable knowledge into atomic notes for your Zettelkasten. It covers the complete workflow from capture to archival across multiple AI providers.

## Prerequisites

- Obsidian vault with Templater plugin configured
- Templates: `Template-AIChat.md`, `Template-Insight.md`
- Optional: Nexus AI Chat Importer plugin (for ChatGPT/Claude ZIP exports)
- Optional: Atomizer plugin (for AI-powered extraction)

## The CEPA Framework

The AI Chat processing workflow follows four phases:

| Phase | Action | Output |
|-------|--------|--------|
| **C**apture | Import/paste raw chat export | Raw chat note in Inbox |
| **E**valuate | Review for valuable insights | Prioritized extraction list |
| **P**rocess | Extract atomic notes | Definition/Code/Insight notes |
| **A**rchive | Link and file completed chat | Organized knowledge graph |

---

## Phase 1: Capture

### Manual Export (Perplexity, Claude, General)

1. Export conversation from the AI provider (usually as Markdown)
2. Create new note using `Template-AIChat.md`
3. Name using convention: `YYYY-MM-DD_Provider_Topic.md`
4. Place in `04-RESOURCES/Integrations/Chats/`
5. Paste raw content into the "Chat Content" section
6. Update frontmatter: `provider`, `chat_date`, `topics`

### Automated Import (ChatGPT)

For bulk ChatGPT imports, use the **Nexus AI Chat Importer** plugin:

1. Export data from ChatGPT (Settings → Data Controls → Export)
2. Open Command Palette → "Nexus AI: Import conversations"
3. Select the downloaded ZIP file
4. Configure target folder: `04-RESOURCES/Integrations/Chats/`
5. Enable date prefix for organization

### Perplexity-Specific Format

Perplexity exports include citations in footnote format. Preserve these:

```markdown
Some claim about information theory.[^1_1]

[^1_1]: https://example.com/source
```

The citations provide valuable sources for verification and further reading.

---

## Phase 2: Evaluate

### Triage Questions

For each chat, ask:

1. **Novelty**: Does this contain ideas I haven't captured before?
2. **Quality**: Is the information accurate and well-reasoned?
3. **Actionability**: Can I apply this knowledge or connect it to existing notes?
4. **Density**: How many distinct insights are worth extracting?

### Value Assessment Matrix

| Score | Criteria | Action |
|-------|----------|--------|
| **High** | Multiple novel insights, high confidence | Full extraction |
| **Medium** | Some useful content, mixed quality | Selective extraction |
| **Low** | Mostly review of known info | Quick scan, minimal extraction |
| **None** | Casual chat, troubleshooting only | Archive as-is |

### Marking Insights

As you read, update the "Key Insights" section:

```markdown
## Key Insights

> [!TIP] Insights to Extract
> - [x] Shannon's information theory as physics bridge → [Definition - Information Theory](Definition - Information Theory.md)
> - [x] Wheeler's "it from bit" concept → [Wheeler It From Bit](Wheeler It From Bit.md)
> - [ ] Bekenstein-Hawking entropy formula → [Definition - Bekenstein Bound](Definition - Bekenstein Bound.md)
> - [ ] Landauer's principle → [Definition - Landauer Principle](Definition - Landauer Principle.md)
```

---

## Phase 3: Process

### Extraction Strategy

Match content type to target note type:

| Content Type | Target Template | Target Folder |
|--------------|----------------|---------------|
| Term/Concept definition | `Template-Definition.md` | `04-RESOURCES/Definitions/` |
| Code snippet/example | `Template-Code.md` | `04-RESOURCES/Code/{Lang}/` |
| Novel insight/idea | `Template-Insight.md` | `01-SLIPBOX/` |
| How-to procedure | `Template-Guide.md` | `04-RESOURCES/Guides/` |
| Tool/resource list | `Template-List.md` | `04-RESOURCES/Lists/` |

### Creating Atomic Notes

For each insight:

1. Create new note with appropriate template
2. Use clear, searchable title (no chat reference in title)
3. Write the core concept in your own words
4. Add `source_chat` link in frontmatter
5. Tag with relevant `Topic/` tags
6. Link to related existing notes

### Example: Extracting a Definition

From the Perplexity chat about information theory:

**Source text:**
> "Wheeler's 'it from bit' directly addresses your observation: every item of the physical world has at bottom—at a very deep bottom, in most instances—an immaterial source and explanation."

**Extracted note:** `Definition - It From Bit.md`

```markdown
---
creation_date: 2024-12-31
tags:
  - Type/Definition
  - Topic/Physics
  - Topic/InformationTheory
source_chat: "[2025-12-31_Perplexity_Information theory computational encoding and quantum physics](2025-12-31_Perplexity_Information theory computational encoding and quantum physics.md)"
---

# Definition - It From Bit

## Overview

**It from Bit** is a phrase coined by physicist John Archibald Wheeler proposing that information is fundamental to physics—that physical entities derive their existence from binary choices and information rather than the reverse.

## Key Concepts

- Physical reality emerges from informational acts (observation, measurement)
- Particles, fields, and spacetime are manifestations of underlying information
- Binary yes/no questions form the substrate of physical existence

## See Also

- [Definition - Information Theory](Definition - Information Theory.md)
- [Definition - Bekenstein Bound](Definition - Bekenstein Bound.md)
```

### Batch Processing with AI

For dense chats, consider the **Atomizer** plugin:

1. Open Command Palette → "Atomize Selected Note"
2. Configure OpenAI API key in settings
3. Review generated atomic notes
4. Merge, edit, or discard as appropriate
5. Add proper frontmatter and links

---

## Phase 4: Archive

### Update Source Chat

After extraction, update the original chat note:

1. Change `extraction_status` to `complete`
2. Add extracted note links to frontmatter array:

```yaml
extracted_notes:
  - "[Definition - It From Bit](Definition - It From Bit.md)"
  - "[Definition - Bekenstein Bound](Definition - Bekenstein Bound.md)"
  - "[Landauer Principle and Computation](Landauer Principle and Computation.md)"
```

3. Check off items in "Key Insights" section
4. Add completion date to "Processing Notes"

### Filing Decisions

| Chat Value | Destination | Rationale |
|------------|-------------|-----------|
| High-reference | Keep in `00-INBOX/Chats/` | May need to revisit |
| Fully extracted | Move to `99-ARCHIVES/AI-Chats/` | Knowledge captured elsewhere |
| Low value | Delete or `99-ARCHIVES/` | Minimal ongoing value |

### Creating Archive Folder

If it doesn't exist:

```
99-ARCHIVES/
└── AI-Chats/
    ├── 2024/
    │   ├── 12/
    │   └── ...
    └── 2025/
        └── ...
```

---

## Automation Ideas

### Dataview Dashboard

Add to your daily note or PKM dashboard:
<!-- dynamic content -->
### QuickAdd Macro

Create a QuickAdd macro for rapid insight capture:

1. Prompt for insight title
2. Prompt for source chat (suggester from Chats folder)
3. Create note from `Template-Insight.md`
4. Open in edit mode

### Weekly Review Checklist

- [ ] Process any new chat exports in Inbox
- [ ] Review `extraction_status: in_progress` chats
- [ ] Archive fully-processed chats
- [ ] Run Smart Connections to find new links

---

## Provider-Specific Tips

### Perplexity

- Preserves citations with footnote syntax
- Often includes multiple "turns" separated by `---`
- Sources are valuable—consider extracting to a References list

### ChatGPT

- Use Nexus AI Chat Importer for bulk processing
- Conversation titles may need renaming
- Watch for markdown formatting inconsistencies

### Claude

- Clean markdown export
- Artifacts (code blocks) are well-preserved
- Consider extracting artifact code separately

### Cursor/Copilot

- Context is often code-specific
- Extract working solutions to Code notes
- Document the problem-solution pattern

---

## Troubleshooting

### Markdown Formatting Issues

**Problem**: Code blocks or LaTeX not rendering correctly.

**Solution**: 
- Ensure proper fence syntax (triple backticks with language)
- For LaTeX, use `$...$` for inline, `$$...$$` for block
- Some exports use `/(.../)` which may need conversion

### Duplicate Imports

**Problem**: Same conversation imported multiple times.

**Solution**: 
- Nexus AI tracks processed ZIPs; don't re-process
- Check for existing notes before creating duplicates
- Use file dates in names to distinguish versions

### Missing Context

**Problem**: Extracted note loses important context from conversation flow.

**Solution**: 
- Include more surrounding context in extraction
- Add explicit `source_chat` link for reference
- Quote key passages directly in the atomic note

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [AI Chat Inbox](04-RESOURCES/Integrations/Chats/README.md)
- [MOC - PKM](MOC - PKM.md)
- [Guide - PKM Organization](Guide - PKM Organization.md)
- [05-SYSTEM/Meta/AGENTS](05-SYSTEM/Meta/AGENTS.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
