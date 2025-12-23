# Audit Structure

Review note structure and formatting consistency.

## Structure Checks

### 1. Required Sections

Notes should include standard sections based on type:

| Note Type | Required Sections |
|-----------|-------------------|
| Definition | Overview, Key Concepts, See Also, Backlinks |
| Code Snippet | Overview, Code, Usage, See Also, Backlinks |
| MOC | Overview, categorized sections, Dataview queries |
| Daily Note | Morning, Tasks, Notes, Reflection |
| General Note | Overview, See Also, Backlinks |

### 2. Missing Table of Contents

Large notes (>50 lines) should have TOC:

```table-of-contents
title: Contents
style: nestedList
```

### 3. Missing Backlinks Section

All permanent notes should end with:

```markdown
### Backlinks

```dataview
LIST FROM [[Note Title]] AND -"CHANGELOG"
```
```

### 4. Heading Hierarchy Issues

Check for:
- Missing H1 (title heading)
- H1 not matching filename
- Skipped heading levels (H1 -> H3)
- Inconsistent heading formatting

### 5. Code Block Issues

Verify:
- All code blocks have language specifier
- Dataview blocks use correct syntax
- No unclosed code fences

### 6. Empty Sections

Find sections with just a heading and no content:
- Empty Overview sections
- Placeholder text like "TODO" or "..."
- Sections with only whitespace

## Folder-Specific Checks

### Definitions (04-RESOURCES/Definitions/)
- Has bolded term in overview
- Follows template structure

### Code Snippets (04-RESOURCES/Code/)
- Has language-specific syntax highlighting
- Includes usage examples
- Has dependencies listed if applicable

### MOCs (03-AREAS/MOCs/)
- Has Dataview queries
- Organizes content into logical sections
- Links to key notes in the domain

## Output

Provide:
1. Notes missing required sections for their type
2. Notes missing TOC that should have one
3. Notes missing backlinks section
4. Heading hierarchy issues
5. Empty or placeholder sections
6. Specific fixes for each issue
