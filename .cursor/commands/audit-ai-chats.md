# Audit AI Chats

Audit all AI chat exports for processing status and quality.

## Instructions

1. Scan `04-RESOURCES/Integrations/Chats/` for all chat files
2. Check each file for:
   - Valid frontmatter
   - Extraction status
   - Completeness of extracted notes
3. Generate audit report

## Audit Checks

### Frontmatter Validation

Required fields:
- `provider` - Must be valid provider name
- `chat_date` - Must be valid date
- `extraction_status` - Must be pending|in_progress|complete
- `extracted_notes` - Must be array (can be empty)
- `topics` - Should have at least one topic
- `tags` - Must include `Type/Chat`

### Processing Status

| Status | Meaning | Action |
|--------|---------|--------|
| `pending` | Not yet processed | Needs processing |
| `in_progress` | Partially processed | Complete processing |
| `complete` | Fully processed | Verify extracted notes exist |

### Quality Checks

For `complete` chats:
- Verify all `extracted_notes` links resolve
- Check extracted notes have `source_chat` backlink
- Ensure topics match extracted note topics

## Output Report

```markdown
## AI Chat Audit Report

### Summary
- Total chats: X
- Pending: X
- In Progress: X
- Complete: X

### Issues Found

#### Missing Frontmatter
- [ ] {file1}: Missing `provider`
- [ ] {file2}: Missing `topics`

#### Broken Links
- [ ] {file3}: Extracted note [[Note]] not found

#### Pending Processing
- [ ] {file4}: Ready for processing (X insights identified)
- [ ] {file5}: Ready for processing (X insights identified)

### Recommendations
1. Process X pending chats
2. Fix X broken links
3. Complete X in-progress chats
```

## Dataview Query for Dashboard

```dataview
TABLE
  provider AS "Provider",
  extraction_status AS "Status",
  length(extracted_notes) AS "Extracted"
FROM "04-RESOURCES/Integrations/Chats"
WHERE file.name != "_README"
SORT extraction_status ASC
```
