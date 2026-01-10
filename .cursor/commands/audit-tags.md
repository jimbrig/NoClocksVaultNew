# Audit Tags

Review and identify tag inconsistencies across the vault.

## Analysis Tasks

### 1. List All Unique Tags
<!-- dynamic content -->
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
<!-- dynamic content -->
**Notes missing Type tag:**
<!-- dynamic content -->
**Low-usage tags (potential typos):**
<!-- dynamic content -->
## Output

Provide:
1. Summary of tag usage statistics
2. List of tag naming inconsistencies
3. Notes missing required tags (by folder)
4. Recommendations for tag consolidation
5. Suggested fixes for each issue
