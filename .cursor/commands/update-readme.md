# Update README.md

Update the vault's README.md with current structure, MOCs, and content information.

## Sections to Update

### 1. Maps of Content Section

Query the vault for all MOC files and list them:
<!-- dynamic content -->
Update the MOCs section with links to all available Maps of Content.

### 2. Structure Section

Generate a folder structure overview based on actual vault contents:

| Folder | Purpose | Note Count |
|--------|---------|------------|
| 00-INBOX/ | Unsorted incoming notes | {count} |
| 01-SLIPBOX/ | Permanent atomic notes | {count} |
| 02-PROJECTS/ | Active project documentation | {count} |
| 03-AREAS/ | Ongoing areas (Business, Journal, MOCs) | {count} |
| 04-RESOURCES/ | Reference materials | {count} |
| 05-SYSTEM/ | Vault configuration | {count} |
| 99-ARCHIVES/ | Archived content | {count} |

### 3. Content Section

Update content types based on actual tag usage:
<!-- dynamic content -->
## Update Process

1. **Analyze current vault state**
   - Count notes per folder
   - List all MOCs from 03-AREAS/MOCs/
   - Identify content types by tags

2. **Update Maps of Content section**
   - Add links to all MOC files
   - Format: `- [MOC - Topic](MOC - Topic.md)`

3. **Update Structure section**
   - Add folder table with counts
   - Include brief purpose descriptions

4. **Update Content section**
   - List content types with counts
   - Highlight key resources

## Example Updated Sections

### Maps of Content (Example)

```markdown
Some Maps of Content to consider are:

- [MOC - GIS](MOC - GIS.md)
- [MOC - R Development](MOC - R Development.md)
- [MOC - Cloud Platforms](MOC - Cloud Platforms.md)
- [MOC - DevOps](MOC - DevOps.md)
```

### Structure (Example)

```markdown
## Structure

| Folder | Purpose | Notes |
|--------|---------|-------|
| `00-INBOX/` | Unsorted incoming notes and ideas | 14 |
| `01-SLIPBOX/` | Permanent atomic notes (Zettelkasten) | 0 |
| `02-PROJECTS/` | Active project documentation | 0 |
| `03-AREAS/` | Business, Journal, MOCs | 74 |
| `04-RESOURCES/` | Articles, Code, Definitions | 109 |
| `05-SYSTEM/` | Templates, Copilot, Meta | 28 |
| `99-ARCHIVES/` | Archived/deprecated content | 0 |
```

### Content (Example)

```markdown
## Content

The vault contains:

| Type | Count | Location |
|------|-------|----------|
| Definitions | 96 | `04-RESOURCES/Definitions/` |
| Code Snippets | 10 | `04-RESOURCES/Code/` |
| Daily Notes | 72 | `03-AREAS/Journal/` |
| MOCs | 2 | `03-AREAS/MOCs/` |
| Articles | 0 | `04-RESOURCES/Articles/` |
```

## Output

Provide the updated README.md sections ready to replace existing content.
