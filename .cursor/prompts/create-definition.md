# Create Definition Note

Create a new definition note for a term or concept in this Obsidian vault.

## Instructions

1. Ask for the term name if not provided
2. Determine if it's an acronym or general term
3. Create the note in the appropriate subfolder:
   - `04-RESOURCES/Definitions/Acronyms/` for acronyms
   - `04-RESOURCES/Definitions/Dictionary/` for general terms
   - `04-RESOURCES/Definitions/Glossary/` for domain-specific glossaries
4. Use naming convention: `Definition - {Term}.md` or `Definition - {Full Name (ACRONYM)}.md`
5. Include proper frontmatter, content, and backlinks

## Template Structure

Use this frontmatter:

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Definition of {term}
tags:
  - Status/Complete
  - Type/Definition
  - Type/Acronym  # Include if it's an acronym
  - Topic/{relevant_topic}
aliases:
  - {term}
  - {acronym if applicable}
  - {full name if acronym}
publish: true
---
```

## Content Structure

1. `# {Term}` - Title matching file name
2. Table of contents code block
3. `## Overview` - Clear definition with bold term
4. `## Key Concepts` - Related concepts if applicable
5. `## Appendix` - With See Also and Backlinks sections

## Output Format

Provide the complete note content ready to save as a markdown file.
File should be named: `Definition - {Term}.md`