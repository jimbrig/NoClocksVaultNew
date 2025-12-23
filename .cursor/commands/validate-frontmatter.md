# Validate Frontmatter

Check and fix frontmatter in notes to ensure consistency.

## Required Fields

All notes should have:
- creation_date (YYYY-MM-DD)
- modification_date (YYYY-MM-DD)
- author (Jimmy Briggs <jimmy.briggs@noclocks.dev>)
- tags (array with Status, Type, Topic)
- aliases (array)
- publish (boolean)

## Optional Fields

- description (string)
- cssclasses (array)
- image (string path)
- permalink (string)

## Validation Rules

1. Dates must be in YYYY-MM-DD format
2. Tags must follow conventions:
   - At least one Status/ tag
   - At least one Type/ tag
   - At least one Topic/ tag if applicable
3. publish should be true for public notes

## Output

Provide:
1. List of missing required fields
2. List of invalid field values
3. Corrected frontmatter block
