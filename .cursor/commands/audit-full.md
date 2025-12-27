# Full Vault Audit

Comprehensive audit combining all consistency checks with automated output.

## Overview

This command runs a complete vault health check by combining:
- Tag audit
- Frontmatter audit
- Link audit
- Structure audit
- Content gap analysis
- Template audit
- Naming audit

## MCP Tools Integration

This audit leverages the following MCP tools for efficiency:

### Repomix (Primary Analysis)
Use `mcp_repomix_pack_codebase` to generate a comprehensive vault analysis:

```json
{
  "directory": "N://obsidian//NoClocksVaultNew",
  "includePatterns": "**/*.md",
  "ignorePatterns": "node_modules/**,quartz/quartz/**,.obsidian/**",
  "topFilesLength": 20
}
```

This provides:
- Complete file tree structure
- File metrics and sizes
- Content for pattern analysis

### Obsidian MCP Tools
Use these tools for vault-specific operations:

1. **`mcp_obsidian_obsidian_list_files_in_vault`** - Get complete vault structure
2. **`mcp_obsidian_obsidian_complex_search`** - Find notes by tag patterns
3. **`mcp_obsidian_obsidian_simple_search`** - Search for missing elements
4. **`mcp_obsidian_obsidian_get_recent_changes`** - Identify recently modified notes
5. **`mcp_obsidian_obsidian_append_content`** - Write audit results

### Grep/Search Tools
Use for pattern matching:
- Find notes missing frontmatter: `grep` for `^---` pattern
- Find missing tags: `grep` for `Status/` and `Type/` patterns
- Find broken wikilinks: `grep` for `/[/[.*/]/]` patterns

## Audit Process

### Step 1: Pack Vault with Repomix
```
Use mcp_repomix_pack_codebase with:
- directory: vault root path
- includePatterns: "**/*.md" 
- ignorePatterns: "node_modules/**,quartz/quartz/**,.obsidian/**,.git/**"
```

### Step 2: Analyze Structure
From repomix output, extract:
- Total file count
- Folder distribution
- Empty folders
- Large files needing TOC

### Step 3: Check Frontmatter
Use grep patterns:
- `^---` - Has frontmatter
- `tags:` - Has tags section
- `description:` - Has description
- `author:` - Has author field

### Step 4: Validate Tags
Search for required tag patterns:
- `Status/(Complete|WIP|Draft|Ongoing)`
- `Type/(Note|Definition|Code|Project|MOC|Readme)`
- `Topic/` prefix for categorization

### Step 5: Audit Links
- Extract all wikilinks with `/[/[([^/]|]+)`
- Compare against existing file list
- Identify orphaned notes (no inlinks)

### Step 6: Generate Report
Create timestamped audit log in `05-SYSTEM/Audit/`

## Output Configuration

### Audit Log Location
All audit results are saved to:
```
05-SYSTEM/Audit/AuditLog-YYYY-MM-DD.md
```

### Output Template
The audit log follows this structure:

```markdown
---
creation_date: {{date}}
modification_date: {{date}}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/AuditLog
  - Status/Complete
  - Topic/Meta
aliases:
  - Vault Audit {{date}}
description: Full vault audit results for {{date}}
---

# Vault Audit - {{date}}

## Executive Summary
- Health Score: X/10
- Total Issues: X
- Critical: X | High: X | Medium: X | Low: X

## Statistics
| Metric | Count |
|--------|-------|
| Total Notes | X |
| With Frontmatter | X |
| With Tags | X |
| Orphaned | X |

## Issues by Severity

### Critical
- [ ] Issue description

### High  
- [ ] Issue description

### Medium
- [ ] Issue description

### Low
- [ ] Issue description

## Action Items
### Quick Wins (5 min)
- [ ] Action

### Medium Effort (30 min)
- [ ] Action

### Large Tasks (1+ hour)
- [ ] Action

## Appendix

### Backlinks
/`/`/`dataview
LIST FROM [AuditLog-{{date}}](AuditLog-{{date}}.md) AND -"CHANGELOG"
/`/`/`
```

## Audit Checklist

### Critical Issues (Fix Immediately)
- [ ] Broken wikilinks
- [ ] Missing required frontmatter fields
- [ ] Notes in wrong folders
- [ ] Template syntax errors
- [ ] Empty files

### High Priority
- [ ] Notes missing Status/Type tags
- [ ] Orphaned notes (no inlinks)
- [ ] Incomplete definitions
- [ ] Stale inbox items (>7 days)

### Medium Priority
- [ ] Missing backlinks sections
- [ ] Empty sections in notes
- [ ] Inconsistent naming
- [ ] Missing descriptions

### Low Priority
- [ ] TOC missing on large notes
- [ ] Low-usage tags to consolidate
- [ ] Template improvements
- [ ] Content gap filling

## Dataview Queries for Manual Verification

### Notes Missing Tags
<!-- dynamic content -->
### Stale Inbox Items
<!-- dynamic content -->
### Orphaned Notes
<!-- dynamic content -->
### Recent Changes
<!-- dynamic content -->
## Issue Severity Classification

| Severity | Description | Action |
|----------|-------------|--------|
| Critical | Broken functionality | Fix today |
| High | Missing required elements | Fix this week |
| Medium | Inconsistencies | Fix this month |
| Low | Nice-to-have improvements | Backlog |

## Instructions for AI Agent

When running this audit:

1. **Use Repomix first** to get vault structure:
   ```
   mcp_repomix_pack_codebase with vault directory
   ```

2. **Use Obsidian MCP** for vault-specific queries:
   ```
   mcp_obsidian_obsidian_list_files_in_vault
   mcp_obsidian_obsidian_get_recent_changes
   ```

3. **Use grep** for pattern matching across files

4. **Generate the AuditLog note** with today's date:
   - Filename: `AuditLog-YYYY-MM-DD.md`
   - Location: `05-SYSTEM/Audit/`
   - Use `mcp_obsidian_obsidian_append_content` or file write tools

5. **Include actionable items** with checkboxes for tracking

6. **Link to specific files** using wikilinks for easy navigation

## Related Commands

Run individual audits for detailed analysis:
- `audit-tags` - Tag consistency
- `audit-frontmatter` - Frontmatter completeness
- `audit-links` - Link health
- `audit-structure` - Note structure
- `audit-content-gaps` - Missing content
- `audit-templates` - Template validation
- `audit-naming` - File naming
