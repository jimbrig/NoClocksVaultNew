# Create Guide Note

Create a new step-by-step guide or how-to note for this Obsidian vault.

## Instructions

1. Ask for the topic/procedure if not provided
2. Create the note in `04-RESOURCES/Guides/`
3. Use naming convention: `Guide - {Topic}.md`
4. Include:
   - Proper frontmatter with Type/Guide tag
   - Overview of what the guide covers
   - Prerequisites/requirements section
   - Numbered step-by-step instructions
   - Code blocks where applicable
   - Troubleshooting section if relevant
   - References to related tools (via List notes) and code snippets

## Template Structure

Use this frontmatter:

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Step-by-step guide for {topic}
tags:
  - Status/Complete
  - Type/Guide
  - Topic/{relevant_topic}
aliases:
  - {Topic} Guide
  - How to {Topic}
publish: true
---
```

## Content Structure

```markdown
# Guide - {Topic}

## Overview

This guide walks through {what you'll accomplish}.

## Prerequisites

- Requirement 1
- Requirement 2
- See [List - {Related Tools}](List - {Related Tools}.md) for tool options

## Steps

### Step 1: {First Step}

Description of what to do.

{code block if applicable}

### Step 2: {Second Step}

...

## Verification

How to confirm it worked.

## Troubleshooting

### Common Issue 1

Solution...

## Appendix

### See Also

- [Related Guide](Related Guide.md)
- [Related Code Note](Related Code Note.md)
- [List - Related Tools](List - Related Tools.md)

### Backlinks

{dataview query}
```

## Key Principles

1. **Be specific** - Document YOUR process, not generic docs
2. **Include code** - Show actual commands and configs
3. **Link to tools** - Reference List notes for tool options
4. **Test the steps** - Only document what you've verified works

## Output Format

Provide the complete note content ready to save as a markdown file.
File should be named: `Guide - {Topic}.md`
