# Audit Naming

Review file naming consistency across the vault.

## Naming Conventions

| Type | Convention | Example |
|------|------------|---------|
| Regular notes | Title Case | `API Design Patterns.md` |
| Definitions | Title Case (term name) | `Application Programming Interface (API).md` |
| Daily notes | YYYY-MM-DD | `2024-12-20.md` |
| MOCs | `MOC - {Topic}` | `MOC - GIS.md` |
| Templates | `Template-{Type}.md` | `Template-Definition.md` |
| READMEs | `_README.md` or `README.md` | `_README.md` |
| Code snippets | Language - Description | `R - Database Connection.md` |

## Validation Checks

### 1. Case Inconsistencies

Find files not using Title Case:
- All lowercase names
- ALL CAPS names
- camelCase or snake_case

### 2. Special Character Issues

Check for problematic characters:
- Colons `:` (invalid on Windows)
- Forward slashes `/`
- Pipes `|`
- Angle brackets `<>`
- Question marks `?`

### 3. Prefix Consistency

**MOCs:**
```dataview
LIST FROM "03-AREAS/MOCs"
WHERE !startswith(file.name, "MOC - ")
```

**Templates:**
```dataview
LIST FROM "05-SYSTEM/Templates"
WHERE file.name != "_README" AND !startswith(file.name, "Template-")
```

### 4. Date Format in Temporal Notes

Journal notes should use YYYY-MM-DD:
- Check for MM-DD-YYYY
- Check for written dates
- Check for inconsistent separators

### 5. README Naming

Folder READMEs should be:
- `_README.md` on develop branch (for Obsidian)
- Converted to `README.md` on main branch (for GitHub)

### 6. Acronym Handling

For definitions with acronyms:
- Format: `Full Name (ACRONYM).md`
- Aliases should include both forms
- Consistent capitalization

### 7. Language Prefix for Code

Code snippets should follow:
- `{Language} - {Description}.md`
- Example: `R - httr2 API Request.md`

## Output

Provide:
1. List of files with naming issues
2. Suggested renames for each file
3. Files with special character problems
4. Inconsistent prefix usage
5. Batch rename commands if applicable
