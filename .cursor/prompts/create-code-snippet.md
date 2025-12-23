# Create Code Snippet Note

Create a new code snippet documentation note for this Obsidian vault.

## Instructions

1. Ask for the language and purpose if not provided
2. Create the note in `04-RESOURCES/Code/{Language}/`
3. Use naming convention: `Code - {Language} - {Description}.md`
4. Include:
   - Proper frontmatter with Type/Code tag
   - Overview explaining what the code does
   - The code block with syntax highlighting
   - Usage examples
   - Dependencies or requirements
   - See Also and Backlinks sections

## Template Structure

Use this frontmatter:

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: {brief description}
tags:
  - Status/Complete
  - Type/Code
  - Topic/{Language}
aliases:
  - {descriptive name}
publish: true
---
```

## Code Block Format

Use proper syntax highlighting:

```{language}
// code here
```

## Output Format

Provide the complete note content ready to save as a markdown file.
