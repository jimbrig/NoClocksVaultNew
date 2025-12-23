# Create Map of Content (MOC)

Create a new Map of Content note to organize and index related notes.

## Instructions

1. Ask for the topic/subject if not provided
2. Create the note in `03-AREAS/` (directly, not in a subfolder)
3. Name it `MOC - {Topic}.md`
4. Include:
   - Proper frontmatter with Type/MOC tag
   - Overview of the topic area
   - Organized sections grouping related notes
   - Dataview queries to surface related content
   - Links to key notes in this domain

## Template Structure

Use this frontmatter:

```yaml
---
creation_date: {current_date}
modification_date: {current_date}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Map of Content for {topic}
tags:
  - Status/Ongoing
  - Type/MOC
  - Topic/{Topic}
aliases:
  - {Topic} MOC
  - {Topic} Index
publish: true
---
```

## Content Structure

1. Overview - Brief intro to the topic area
2. Key Concepts - Core ideas and definitions
3. Resources - Articles, tools, references
4. Related Notes - Dataview query for topic

## Dataview Query Example

```dataview
TABLE file.ctime as Created, description
FROM "01-SLIPBOX" OR "04-RESOURCES"
WHERE contains(tags, "Topic/{Topic}")
SORT file.mtime DESC
```

## Output Format

Provide the complete MOC note content ready to save.
