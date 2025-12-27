# Create Curated List Note

Create a new curated list note for tools, resources, or references in this Obsidian vault.

## Instructions

1. Ask for the list category if not provided
2. Create the note in `04-RESOURCES/Lists/`
3. Use naming convention: `List - {Category}.md`
4. Include:
   - Proper frontmatter with Type/List tag
   - Overview of what the list covers
   - Organized sections by subcategory
   - Tables with Name, Description, and Links columns
   - External URLs to official sources
   - Cross-references to related Code/Guide notes

## Template Structure

Use this frontmatter:

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Curated list of {category} tools and resources
tags:
  - Status/Ongoing
  - Type/List
  - Topic/{relevant_topic}
aliases:
  - {Category}
  - {Category} Tools
publish: true
---
```

## Content Structure

```markdown
# List - {Category}

## Overview

Curated collection of {category} tools, organized by {subcategory}.

## {Subcategory 1}

| Tool | Description | Links |
|------|-------------|-------|
| Name | Brief desc | [Site](url) - [Docs](url) |

## {Subcategory 2}

...

## Notes

- For {tool} configurations, see [Code - {Tool} - Config](Code - {Tool} - Config.md)
- For setup guide, see [Guide - {Topic}](Guide - {Topic}.md)

## Appendix

### See Also

- [Related List](Related List.md)
- [Related MOC](Related MOC.md)

### Backlinks

{dataview query}
```

## Key Principles

1. **Link to official sources** - Don't duplicate documentation
2. **Brief descriptions** - One sentence per tool
3. **Organize by purpose** - Group related tools together
4. **Cross-reference** - Link to your Code/Guide notes for implementations

## Output Format

Provide the complete note content ready to save as a markdown file.
File should be named: `List - {Category}.md`
