# Audit Content Gaps

Identify areas that need content, polish, or expansion.

## Gap Analysis

### 1. Empty/Stub Folders

Folders with few or no notes:

| Folder | Expected Content |
|--------|------------------|
| `01-SLIPBOX/` | Atomic permanent notes |
| `02-PROJECTS/` | Active project documentation |
| `04-RESOURCES/Articles/` | Article summaries/notes |
| `04-RESOURCES/Books/` | Book notes and summaries |
| `04-RESOURCES/Cheatsheets/` | Quick reference guides |
| `04-RESOURCES/Lists/` | Curated resource lists |

### 2. Incomplete Notes

Find notes that are drafts or need work:

```dataview
LIST
FROM ""
WHERE contains(tags, "Status/Draft") OR contains(tags, "Status/WIP")
SORT file.mtime DESC
```

### 3. Stale Content

Notes not modified in a long time that may need review:

```dataview
TABLE file.mtime as "Last Modified"
FROM ""
WHERE file.mtime < date(today) - dur(180 days)
AND !contains(file.path, "Archives")
AND !contains(file.path, "Templates")
SORT file.mtime ASC
LIMIT 20
```

### 4. Topic Coverage Gaps

Analyze Topic/ tag distribution to find underrepresented areas:

```dataview
TABLE length(rows) as Count
FLATTEN tags as tag
WHERE startswith(tag, "Topic/")
GROUP BY tag
SORT length(rows) DESC
```

### 5. Missing Definitions

Find terms used but not defined:
- Technical terms in notes without matching Definition
- Acronyms without expansions
- Concepts referenced but not explained

### 6. Inbox Backlog

Notes stuck in inbox too long:

```dataview
TABLE file.ctime as "Created"
FROM "00-INBOX"
WHERE file.ctime < date(today) - dur(7 days)
SORT file.ctime ASC
```

## Priority Content Areas

### High Priority
- [ ] Definitions for commonly referenced terms
- [ ] MOCs for major topic areas
- [ ] Code snippets for frequent patterns

### Medium Priority
- [ ] Article summaries for key references
- [ ] How-to guides for common tasks
- [ ] Tool documentation

### Low Priority
- [ ] Book notes
- [ ] Historical/archived content organization

## Output

Provide:
1. List of empty or near-empty folders
2. Draft/WIP notes needing completion
3. Stale notes needing review
4. Underrepresented topic areas
5. Suggested new notes to create
6. Priority order for content creation
