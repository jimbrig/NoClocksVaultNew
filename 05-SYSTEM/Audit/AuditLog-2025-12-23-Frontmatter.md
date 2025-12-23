---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Frontmatter audit report for the No Clocks Knowledge Vault
tags:
  - Status/Complete
  - Type/Audit
  - Topic/Meta
aliases:
  - Frontmatter Audit 2025-12-23
publish: false
---

# Frontmatter Audit Report - 2025-12-23

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Executive Summary

| Metric | Count |
|--------|-------|
| Total vault notes (excl. quartz/) | ~268 |
| Notes with complete frontmatter | ~230 |
| Notes missing required fields | ~38 |
| Notes with author email inconsistency | ~81 |
| Templates with incorrect `publish` value | 7 |
| Copilot files missing `publish` field | 15 |
| Journal notes with incorrect `publish` value | 64 |

**Overall Compliance Rate:** ~86%

---

## 1. Missing Required Fields

### 1.1 Notes Missing Frontmatter Entirely

| File | Issue |
|------|-------|
| `00-INBOX/API Client Library Best Practices.md` | No frontmatter block at all |

### 1.2 Notes Using Non-Standard Date Field

| File | Issue | Fix |
|------|-------|-----|
| `00-INBOX/Google Programmable Search Engine.md` | Uses `date:` instead of `creation_date:` | Rename field, add `modification_date:` |

### 1.3 Template Missing `publish` Field

| File | Issue |
|------|-------|
| `05-SYSTEM/Templates/Template-Definition.md` | Missing `publish:` field (should be `false`) |

---

## 2. Invalid Date Formats

**Status:** No invalid date formats detected.

All dates follow the correct `YYYY-MM-DD` format. No instances of:
- Slash-delimited dates (MM/DD/YYYY)
- Text dates (December 20, 2024)
- Invalid dates (2024-13-45)

---

## 3. Author Consistency Issues

### Expected Format
```yaml
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
```

### Files Using Old Email (`jimbrig.com`)

**Total:** 81 files (in source vault, excluding quartz/)

| Folder | Count | Notes |
|--------|-------|-------|
| `02-JOURNAL/2024/` | 64 | All daily notes |
| `04-RESOURCES/Code/` | 10 | R code snippets, README files |
| `04-RESOURCES/Embeds/` | 2 | Embed notes |
| `05-SYSTEM/` | 5 | Templates, Assets |

#### Sample Files to Fix

```
02-JOURNAL/2024/04-April/2024-04-16.md
02-JOURNAL/2024/04-April/2024-04-17.md
... (all 64 daily notes from 2024)
04-RESOURCES/Code/R/R - Shiny UI Helpers.md
04-RESOURCES/Code/R/R - Shiny DT Table Helpers.md
04-RESOURCES/Code/Bash/_README.md
04-RESOURCES/Code/PowerShell/_README.md
05-SYSTEM/Templates/Code/Template-Code-Dynamic.md
05-SYSTEM/Templates/Code/Template-Code-Readme.md
05-SYSTEM/Assets/_README.md
```

---

## 4. Publish Field Audit

### 4.1 Templates with Incorrect `publish: true`

Per conventions, all templates should have `publish: false`.

| File | Current | Expected |
|------|---------|----------|
| `05-SYSTEM/Templates/Code/Template-Code-Dynamic.md` | `true` | `false` |
| `05-SYSTEM/Templates/Template-Checklist.md` | `true` | `false` |
| `05-SYSTEM/Templates/Template-List.md` | `true` | `false` |
| `05-SYSTEM/Templates/Template-Guide.md` | `true` | `false` |
| `05-SYSTEM/Templates/Template-MOC.md` | `true` | `false` |
| `05-SYSTEM/Templates/Template-README.md` | `true` | `false` |
| `05-SYSTEM/Templates/Code/Template-Code-Readme.md` | `true` | `false` |

**Correct:** `05-SYSTEM/Templates/Temporal/Template-Daily.md` has `publish: false`

### 4.2 Copilot Files Missing `publish` Field

All 15 files in `05-SYSTEM/Copilot/` lack a `publish:` field. These should have `publish: false`:

```
05-SYSTEM/Copilot/copilot-log.md
05-SYSTEM/Copilot/copilot-conversations/*.md (4 files)
05-SYSTEM/Copilot/copilot-custom-prompts/*.md (10 files)
```

### 4.3 Journal Notes - Review Needed

**64 daily notes** in `02-JOURNAL/2024/` have `publish: true`.

Per vault conventions, journal notes are typically personal and should have `publish: false`. However, this may be intentional if publishing daily notes is desired.

**Decision Required:** Confirm whether daily journal notes should be published.

### 4.4 Archives - Compliant

All 12 files in `99-ARCHIVES/` correctly have `publish: false`.

---

## 5. Description Field Coverage

### Target Areas Requiring Descriptions

| Folder | Total Files | With Description | Coverage |
|--------|-------------|------------------|----------|
| `01-SLIPBOX/` | 8 | 8 | 100% |
| `03-AREAS/` (MOCs) | 4 | 4 | 100% |
| `04-RESOURCES/Definitions/` | 112 | 112 | 100% |

**Status:** All priority content areas have complete description coverage.

---

## 6. Batch Fix Commands

### 6.1 Fix Author Email (PowerShell)

```powershell
# fix author email from jimbrig.com to noclocks.dev
$files = Get-ChildItem -Path "N:\obsidian\NoClocksVaultNew" -Recurse -Filter "*.md" | 
    Where-Object { $_.FullName -notlike "*\quartz\*" }

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match "jimmy\.briggs@jimbrig\.com") {
        $newContent = $content -replace "jimmy\.briggs@jimbrig\.com", "jimmy.briggs@noclocks.dev"
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
        Write-Host "Updated: $($file.FullName)"
    }
}
```

### 6.2 Fix Template Publish Values (PowerShell)

```powershell
# fix template publish values
$templates = @(
    "05-SYSTEM\Templates\Code\Template-Code-Dynamic.md",
    "05-SYSTEM\Templates\Template-Checklist.md",
    "05-SYSTEM\Templates\Template-List.md",
    "05-SYSTEM\Templates\Template-Guide.md",
    "05-SYSTEM\Templates\Template-MOC.md",
    "05-SYSTEM\Templates\Template-README.md",
    "05-SYSTEM\Templates\Code\Template-Code-Readme.md"
)

$basePath = "N:\obsidian\NoClocksVaultNew"

foreach ($template in $templates) {
    $path = Join-Path $basePath $template
    $content = Get-Content $path -Raw
    $newContent = $content -replace "publish: true", "publish: false"
    Set-Content -Path $path -Value $newContent -NoNewline
    Write-Host "Fixed: $template"
}
```

### 6.3 Fix Journal Publish Values (if desired)

```powershell
# set all 2024 journal notes to publish: false
$journalFiles = Get-ChildItem -Path "N:\obsidian\NoClocksVaultNew\02-JOURNAL\2024" -Recurse -Filter "*.md"

foreach ($file in $journalFiles) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match "publish: true") {
        $newContent = $content -replace "publish: true", "publish: false"
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
        Write-Host "Updated: $($file.FullName)"
    }
}
```

### 6.4 Add Frontmatter to Missing File

For `00-INBOX/API Client Library Best Practices.md`, add:

```yaml
---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Best practices for building API client libraries with incomplete documentation
tags:
  - Status/WIP
  - Type/Note
  - Topic/Development
  - Topic/API
aliases:
  - API Client Best Practices
publish: true
---
```

### 6.5 Fix Date Field Name

For `00-INBOX/Google Programmable Search Engine.md`, change:

```yaml
# FROM
date: 2025-04-04

# TO
creation_date: 2025-04-04
modification_date: 2025-04-04
```

---

## 7. Recommendations

1. **Immediate:** Run batch fix for author email consistency (81 files)
2. **Immediate:** Fix 7 template files with incorrect `publish: true`
3. **Immediate:** Add frontmatter to `API Client Library Best Practices.md`
4. **Immediate:** Fix date field in `Google Programmable Search Engine.md`
5. **Decision:** Determine publish policy for journal notes
6. **Optional:** Add `publish: false` to Copilot files
7. **Ongoing:** Ensure new notes use Template with correct author email

---

## Appendix: Validation Dataview Queries

### Find Notes Missing Creation Date

```dataview
TABLE 
    file.ctime as "File Created"
FROM ""
WHERE !creation_date
AND !contains(file.path, "quartz/")
AND !contains(file.path, "node_modules/")
LIMIT 50
```

### Find Notes with Wrong Email

```dataview
LIST
FROM ""
WHERE contains(author, "jimbrig.com")
AND !contains(file.path, "quartz/")
LIMIT 50
```

### Find Templates with Publish True

```dataview
LIST
FROM "05-SYSTEM/Templates"
WHERE publish = true
```

---

## See Also

- [[Vault Philosophy]]
- [[Tag Taxonomy]]
- [[AuditLog-2025-12-20]]

