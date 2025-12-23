# Audit Frontmatter

Review frontmatter consistency and completeness across all notes.

## Required Fields

Every note should have:

| Field | Format | Required |
|-------|--------|----------|
| `creation_date` | YYYY-MM-DD | Yes |
| `modification_date` | YYYY-MM-DD | Yes |
| `author` | Name <email> | Yes |
| `tags` | Array | Yes |
| `aliases` | Array | Recommended |
| `publish` | Boolean | Yes |
| `description` | String | Recommended |

## Validation Checks

### 1. Missing Required Fields

```dataview
TABLE 
    choice(creation_date, "Yes", "MISSING") as "creation_date",
    choice(modification_date, "Yes", "MISSING") as "modification_date",
    choice(author, "Yes", "MISSING") as "author",
    choice(tags, "Yes", "MISSING") as "tags",
    choice(publish != null, "Yes", "MISSING") as "publish"
FROM ""
WHERE !creation_date OR !modification_date OR !author OR !tags OR publish = null
LIMIT 50
```

### 2. Invalid Date Formats

Check for dates not in YYYY-MM-DD format:
- Dates with slashes (MM/DD/YYYY)
- Dates with text (December 20, 2024)
- Invalid dates (2024-13-45)

### 3. Author Consistency

Expected format: `Jimmy Briggs <jimmy.briggs@noclocks.dev>`

Check for:
- Missing email
- Different email addresses
- Inconsistent name formatting

### 4. Publish Field Audit

| Folder | Expected publish |
|--------|------------------|
| `05-SYSTEM/Templates/` | `false` |
| `05-SYSTEM/Copilot/` | `false` |
| `99-ARCHIVES/` | `false` |
| `03-AREAS/Journal/` | `false` (personal) |
| Others | `true` (default) |

### 5. Description Field Coverage

Notes that would benefit from descriptions:
- All notes in `01-SLIPBOX/`
- All notes in `04-RESOURCES/Definitions/`
- All MOCs

## Output

Provide:
1. Count of notes with complete frontmatter
2. List of notes missing each required field
3. Notes with invalid date formats
4. Notes with incorrect publish values for their folder
5. Batch fix commands where applicable
