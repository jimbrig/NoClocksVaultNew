# Audit Tags

Review and identify tag inconsistencies across the vault.

## Analysis Tasks

### 1. List All Unique Tags

```dataview
TABLE length(rows) as "Usage Count"
FROM ""
FLATTEN tags as tag
GROUP BY tag
SORT length(rows) DESC
```

### 2. Identify Tag Issues

**Missing Required Tags:**
- Notes without Status/ tag
- Notes without Type/ tag
- Notes in specific folders missing expected Topic/ tags

**Inconsistent Naming:**
- Duplicate tags with different casing (e.g., `Topic/api` vs `Topic/API`)
- Typos in common tags
- Tags not following conventions (e.g., missing prefix)

**Orphaned/Unused Tags:**
- Tags used only once
- Tags that don't match any convention

### 3. Check Tag Coverage

| Folder | Expected Tags |
|--------|---------------|
| `00-INBOX/` | `Status/Draft` or `Status/WIP` |
| `01-SLIPBOX/` | `Status/Complete`, `Type/Note` |
| `03-AREAS/Journal/` | `Type/Daily`, `Topic/Journal` |
| `03-AREAS/MOCs/` | `Type/MOC` |
| `04-RESOURCES/Definitions/` | `Type/Definition` |
| `04-RESOURCES/Code/` | `Type/Code` |

## Queries to Run

**Notes missing Status tag:**
```dataview
LIST FROM ""
WHERE !contains(join(tags, " "), "Status/")
AND file.name != "README" AND file.name != "_README"
```

**Notes missing Type tag:**
```dataview
LIST FROM ""
WHERE !contains(join(tags, " "), "Type/")
AND file.name != "README" AND file.name != "_README"
```

**Low-usage tags (potential typos):**
```dataview
TABLE length(rows) as Count
FLATTEN tags as tag
GROUP BY tag
WHERE length(rows) = 1
```

## Output

Provide:
1. Summary of tag usage statistics
2. List of tag naming inconsistencies
3. Notes missing required tags (by folder)
4. Recommendations for tag consolidation
5. Suggested fixes for each issue
