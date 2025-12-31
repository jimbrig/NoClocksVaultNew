# Import AI Chat

Import a raw AI chat export and prepare it for processing.

## Instructions

1. Accept the raw chat content (pasted or from file)
2. Determine the AI provider from content patterns:
   - Perplexity: Contains `perplexity.ai` references, citation footnotes
   - ChatGPT: Contains "ChatGPT" headers or OpenAI patterns
   - Claude: Contains "Claude" references or Anthropic patterns
   - Cursor: IDE-based conversation context
   - Copilot: GitHub Copilot context
3. Generate proper filename: `{YYYY-MM-DD}_{Provider}_{Topic Slug}.md`
4. Add required frontmatter
5. Structure the chat content with sections
6. Save to `04-RESOURCES/Integrations/Chats/`

## Frontmatter Template

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: {Brief description from chat content}
tags:
  - Type/Chat
  - Topic/{Identified topics}
  - Status/Draft
aliases:
  - {Short name}
publish: false
provider: {Detected provider}
chat_date: {current_date}
extraction_status: pending
extracted_notes: []
topics:
  - {topic1}
  - {topic2}
key_insights:
  - {insight1}
  - {insight2}
---
```

## Content Structure

```markdown
# {Chat Title}

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Summary

> [!ABSTRACT] Chat Summary
> {AI-generated summary of the conversation}

## Key Insights to Extract

> [!TIP] Insights to Extract
> - [ ] {Insight 1} → [[Target Note 1]]
> - [ ] {Insight 2} → [[Target Note 2]]

## Extracted Notes

> [!SUCCESS] Notes Created from This Chat
> *Links to atomic notes extracted from this conversation:*
> 
> - *(pending extraction)*

---

## Chat Content

{Original chat content, formatted with headers}
```

## Output

1. Generated filename
2. Complete frontmatter
3. Structured chat content
4. Identified topics and potential insights
5. File path for saving
