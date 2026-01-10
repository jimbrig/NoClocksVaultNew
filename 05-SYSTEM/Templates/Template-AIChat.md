---
creation_date: <% tp.date.now("YYYY-MM-DD") %>
modification_date: <% tp.date.now("YYYY-MM-DD") %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: AI LLM chat export
tags:
  - Type/Chat
  - Topic/AI
  - Status/Draft
aliases:
  - <% tp.file.title %>
publish: false
provider: <%* const provider = await tp.system.suggester(["Perplexity", "ChatGPT", "Claude", "Cursor", "Copilot", "Other"], ["Perplexity", "ChatGPT", "Claude", "Cursor", "Copilot", "Other"], false, "Select AI Provider"); tR += provider %>
chat_date: <% tp.date.now("YYYY-MM-DD") %>
extraction_status: pending
extracted_notes: []
topics: []
key_insights: []
---

# <% tp.file.title %>
## Metadata

| Field | Value |
|-------|-------|
| **Provider** | `= this.provider` |
| **Date** | `= this.chat_date` |
| **Status** | `= this.extraction_status` |
| **Topics** | `= this.topics` |

## Summary

> [!ABSTRACT] Chat Summary
> *Brief summary of the conversation and key takeaways...*

## Key Insights

> [!TIP] Insights to Extract
> - [ ] Insight 1 → [Target Note](Target Note.md)
> - [ ] Insight 2 → [Target Note](Target Note.md)
> - [ ] Insight 3 → [Target Note](Target Note.md)

## Extracted Notes

> [!SUCCESS] Notes Created from This Chat
> *Links to atomic notes extracted from this conversation:*
> 
> - 

---

## Chat Content

<!-- Paste or import the raw chat content below this line -->



---

## Processing Notes

> [!NOTE] Processing Log
> - **Imported**: <% tp.date.now("YYYY-MM-DD HH:mm") %>
> - **Reviewed**: 
> - **Extracted**: 
> - **Archived**: 

---

## Appendix

*Created: <% tp.date.now("YYYY-MM-DD") %> | Modified: <% tp.date.now("YYYY-MM-DD") %>*

### See Also

- [AI Chat Integration](04-RESOURCES/Integrations/Chats/README.md)
- [Guide - AI Chat Processing Workflow](Guide - AI Chat Processing Workflow.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | <% tp.date.now("YYYY") %>
