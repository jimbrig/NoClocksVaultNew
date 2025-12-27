# Audit Links

Review link health, identify broken links, and find orphaned notes.

## Analysis Tasks

### 1. Broken Wikilinks

Find links pointing to non-existent notes:
<!-- dynamic content -->
### 2. Orphaned Notes

Notes with no incoming links (not referenced anywhere):
<!-- dynamic content -->
### 3. Notes Without Outgoing Links

Notes that don't link to anything (potential isolation):
<!-- dynamic content -->
### 4. Link Format Issues

Check for:
- Standard markdown links used instead of wikilinks for internal notes
- Broken external URLs
- Links with incorrect aliases
- Empty link targets `[[]]`

### 5. Embed Issues

Check for broken embeds:
- `![Non-existent Note](Non-existent Note.md)`
- `![Missing Image.png](Missing Image.png.md)`

## Link Quality Metrics

| Metric | Description |
|--------|-------------|
| Connectivity | Average links per note |
| Orphan Rate | % of notes with no inlinks |
| Broken Link Rate | % of links pointing to missing notes |

## Output

Provide:
1. List of all broken wikilinks with source note
2. List of orphaned notes that should be linked
3. Notes that are too isolated (no outlinks)
4. Suggested links based on content similarity
5. External URLs that should be verified
