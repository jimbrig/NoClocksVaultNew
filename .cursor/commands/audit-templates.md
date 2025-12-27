# Audit Templates

Review template consistency and usage across the vault.

## Template Inventory

Location: `05-SYSTEM/Templates/`

### Current Templates

| Template | Purpose | Location |
|----------|---------|----------|
| Template-Definition.md | Term definitions | Templates/ |
| Template-Frontmatter.md | Base frontmatter | Templates/ |
| Template-Code-Dynamic.md | Code snippets | Templates/Code/ |
| Template-Code-Readme.md | Code folder READMEs | Templates/Code/ |
| Template-Code-Readme-Root.md | Root code README | Templates/Code/ |
| Template-Daily.md | Daily notes | Templates/Temporal/ |
| Template-Weekly.md | Weekly reviews | Templates/Temporal/ |
| Template-Monthly.md | Monthly reviews | Templates/Temporal/ |
| Template-Quarterly.md | Quarterly reviews | Templates/Temporal/ |
| Template-Annual.md | Annual reviews | Templates/Temporal/ |

## Validation Checks

### 1. Template Syntax

Verify Templater syntax is valid:
- `<% %>` blocks properly closed
- `tp.file.*` references correct
- Conditional blocks `<%* if %>` matched
- Date format strings valid

### 2. Template Completeness

Each template should have:
- [ ] Complete frontmatter with Templater variables
- [ ] Appropriate tags for the note type
- [ ] Standard sections for the content type
- [ ] Backlinks Dataview query
- [ ] See Also section placeholder

### 3. Missing Templates

Templates that should exist:
- [ ] Template-MOC.md - Map of Content
- [ ] Template-Project.md - Project documentation
- [ ] Template-Article.md - Article summary
- [ ] Template-Book.md - Book notes
- [ ] Template-Meeting.md - Meeting notes
- [ ] Template-Person.md - Contact/person notes

### 4. Template Usage Consistency

Check if notes match their expected template:

**Definitions:**
<!-- dynamic content -->
**Daily Notes:**
<!-- dynamic content -->
### 5. Outdated Templates

Templates needing updates:
- Templates with old date formats
- Templates with deprecated frontmatter fields
- Templates with broken Dataview queries

## Template Fragment Check

Verify fragments in `Templates/Fragments/` are:
- Used by other templates
- Correctly included with Templater
- Up to date with current conventions

## Output

Provide:
1. List of templates with syntax errors
2. Templates missing required sections
3. Suggested new templates to create
4. Notes not following their expected template
5. Template update recommendations
