# Create Daily Note

Create a new daily journal note for the current date.

## Instructions

1. Generate filename: YYYY-MM-DD.md
2. Place in: 03-AREAS/Journal/{Year}/
3. Use daily note template structure

## Frontmatter

```yaml
---
creation_date: {today}
modification_date: {today}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Daily note for {formatted_date}
tags:
  - Status/Ongoing
  - Type/Daily
  - Topic/Journal
aliases:
  - {formatted_date}
publish: false
---
```

## Content Structure

```markdown
# {formatted_date}

## Morning

- [ ] Review calendar
- [ ] Check priorities

## Tasks

- [ ] 

## Notes



## Evening Reflection



## Links

- Previous: [{yesterday}]({yesterday}.md)
- Next: [{tomorrow}]({tomorrow}.md)
```

## Output

Provide the complete daily note content with proper dates filled in.
