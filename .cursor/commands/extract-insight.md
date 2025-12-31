# Extract Insight from Chat

Extract a single insight from an AI chat and create an atomic note.

## Instructions

1. Accept the insight description and source chat reference
2. Determine the appropriate note type:
   - Definition: Concept explanations, terms
   - Code: Code examples, snippets
   - Guide: Step-by-step procedures
   - Slipbox: Pure ideas, connections, insights
3. Create the note with proper structure
4. Add `source_chat` and `source_provider` fields
5. Apply appropriate topic tags
6. Update the source chat's `extracted_notes` array

## Note Type Templates

### Definition Note

```yaml
---
creation_date: {date}
modification_date: {date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: {Brief definition}
tags:
  - Status/Complete
  - Type/Definition
  - Topic/{Topics}
aliases:
  - {Term}
publish: true
source_chat: "[[{path/to/chat}]]"
source_provider: {Provider}
confidence: high|medium|low
---
```

### Slipbox Note (Insight)

```yaml
---
creation_date: {date}
modification_date: {date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: {Insight description}
tags:
  - Status/Complete
  - Type/Note
  - Type/Insight
  - Topic/{Topics}
aliases:
  - {Concept name}
publish: true
source_chat: "[[{path/to/chat}]]"
source_provider: {Provider}
confidence: high|medium|low
---
```

## Content Structure

1. `# {Note Title}` - Descriptive title
2. Table of contents
3. `## Overview` - Core concept/insight
4. `## Key Concept` - Main point
5. `## Details` - Supporting information
6. `## Implications` - Why it matters
7. `## Appendix` - See Also, Backlinks

## Topic Tag Matching

Ensure tags match existing MOCs:
- Check `03-AREAS/` for existing MOCs
- Use spaced tags: `Topic/Information Theory`
- Add multiple relevant topics

## Output

1. Note content ready to save
2. Suggested file path
3. Update command for source chat
