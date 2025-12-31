---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Comprehensive link health audit report
tags:
  - Type/Audit
  - Status/Complete
aliases:
  - Link Audit 2025-12-31
publish: false
---

# Link Audit Report - 2025-12-31

```table-of-contents
title: Contents
style: nestedList
minLevel: 1
maxLevel: 3
includeLinks: true
```

## Executive Summary

| Metric | Value |
|--------|-------|
| Total Markdown Files | 492 (excluding quartz) |
| Unique Wikilinks | ~1,800+ |
| Broken Links Identified | 200+ |
| Empty Link Targets | 1 |
| Embedded Images Status | All Valid |
| Link Format Issues | Minor (see below) |

## 1. Broken Wikilinks

### Critical - Missing MOC References

These MOCs are referenced but don't exist:

| Broken Link | Should Be | Source Files |
|-------------|-----------|--------------|
| `[[MOC - GIS]]` | `[[MOC - Geospatial]]` | Chat migration docs, MOC - Geospatial |
| `[[MOC - Security]]` | Create new or remove | Glossary - IAM, Guide - Web Auth |
| `[[MOC - RealEstate]]` | Create new or remove | MOC - Geospatial, List - Property Data |
| `[[MOC - DevOps]]` | Create new or remove | List - Cloud Platforms, Docker Best Practices |
| `[[MOC - DataEngineering]]` | `[[MOC - Data Engineering]]` | MOC - Geospatial |
| `[[MOC - Technology]]` | Create new or remove | Code _README |
| `[[03-AREAS/MOC - PowerShell]]` | `[[MOC - PowerShell]]` | PowerShell code notes |

### Critical - Missing Definition Notes

These definitions are referenced but don't exist:

| Missing Definition | Referenced In |
|--------------------|---------------|
| `[[Definition - JSON Web Token (JWT)]]` | Glossary - IAM, Guide - Web Auth |
| `[[Definition - OAuth]]` | Glossary - IAM, Guide - Web Auth |
| `[[Definition - OpenID Connect (OIDC)]]` | Glossary - IAM |
| `[[Definition - Multi-Factor Authentication (MFA)]]` | Glossary - IAM |
| `[[Definition - Shannon Entropy]]` | Definition - Information Theory |

### Critical - Missing Meta/Philosophy Notes

| Broken Link | Actual File | Source Files |
|-------------|-------------|--------------|
| `[[Vault Philosophy]]` | `[[05-SYSTEM/Meta/PHILOSOPHY]]` | Chat migration, PHILOSOPHY |
| `[[Tag Taxonomy]]` | `[[TAGS]]` or `[[05-SYSTEM/Meta/TAGS]]` | Chat migration, TAGS |
| `[[AI Setup]]` | `[[05-SYSTEM/Meta/AGENTS]]` or `[[AGENTS]]` | Chat migration, AGENTS |

### High - Missing Obsidian Setup Notes

These are referenced in README but don't exist:

- `[[Obsidian - Setup]]`
- `[[Obsidian - Folders]]`
- `[[Obsidian - Scripts]]`
- `[[Obsidian - Themes]]`
- `[[Obsidian - CSS Snippets]]`
- `[[Obsidian - Community Plugins]]`
- `[[./05-SYSTEM/Obsidian/]]`

### Medium - Missing Code Notes

| Missing Code Note | Referenced In |
|-------------------|---------------|
| `[[Code - R - httr2 API Client]]` | List - Property Data Platforms |
| `[[Code - R - GDAL Geospatial Operations]]` | List - R Geospatial Packages |
| `[[Code - R - New Function]]` | Chat migration (example text) |

### Medium - Missing Guide Notes

| Missing Guide | Referenced In |
|---------------|---------------|
| `[[Guide - Inbox Processing]]` | AGENTS.md references it |

### Low - Missing Tool/Technology Notes

These are mentioned in notes but don't have dedicated definition files (per vault philosophy, these should be in Lists, not individual notes):

<details>
<summary>Geospatial Tools (100+ references)</summary>

- `[[GDAL]]`, `[[OGR]]`, `[[GEOS]]`, `[[PROJ]]`
- `[[PostgreSQL]]`, `[[PostGIS]]` (PostGIS exists, PostgreSQL doesn't)
- `[[Leaflet.js]]`, `[[Mapbox]]`, `[[OpenLayers]]`, `[[kepler.gl]]`
- `[[pg_featureserv]]`, `[[pg_tileserv]]`, `[[pg_eventserv]]`, `[[pgSVG]]`
- `[[PostgREST]]`, `[[pgAdmin]]`, `[[dbeaver]]`, `[[dbmate]]`
- `[[Apache Airflow]]`, `[[Luigi]]`, `[[DAG]]`
- `[[Data Build Tool (dbt)]]`, `[[Data Load Tool (dlt)]]`
- Many R packages: `[[sf]]`, `[[terra]]`, `[[leaflet]]`, etc.

</details>

<details>
<summary>Cloud/DevOps Tools</summary>

- `[[Docker]]`, `[[Docker Compose]]`
- `[[Azure]]`, `[[Azure Storage]]`, `[[azcli]]`, `[[azcopy]]`
- `[[Taskfile]]`, `[[Justfile]]`, `[[GNU Make]]`

</details>

### Template Placeholders (Expected)

These are template syntax and are working as intended:

- `[[${creationDate}]]`, `[[${tp.file.title}]]`
- `[[2025-12-31]]` variants
- `[[Related Checklist]]`, `[[Related Guide]]`, `[[Related MOC]]`, etc.

### Journal Date Links (Expected)

Many daily notes link to adjacent dates that may not exist yet - this is normal behavior for daily journal navigation.

## 2. Orphaned Notes

Notes with minimal or no incoming links (excluding Templates, Journal, Archives):

### Potentially Orphaned MOCs

These MOCs only reference themselves or have very few incoming links:

| MOC | Inlinks Count | Status |
|-----|---------------|--------|
| MOC - Actuarial Science | 3 (self, Finance, Statistics) | Normal - niche topic |
| MOC - History | 2 (self, Science) | Consider adding links |
| MOC - Design | 2 (self, Web Dev) | Consider adding links |

### Code Notes - Check Connectivity

Several code notes may only be linked from their folder README:

- C language code notes (8 files) - verify MOC links
- Go, Rust, C++, CSharp notes - likely orphaned
- Some Bash scripts may need MOC links

### Definition Notes - Verify Backlinks

The newer Information Theory definitions are well-connected:
- `Definition - Information Theory` - well linked
- `Definition - It From Bit` - well linked
- `Definition - Bekenstein Bound` - well linked
- `Definition - Landauer Principle` - well linked
- `Definition - Margolus-Levitin Theorem` - well linked
- `Definition - Mathematical Universe Hypothesis` - well linked

## 3. Notes Without Outgoing Links

Notes that don't link to anything else (potential isolation):

### Likely Issues
- Some definition notes may be missing "See Also" sections
- Some code notes may be missing MOC or related note links
- Check `04-RESOURCES/Lists/` notes have proper cross-links

### Expected (No Action Needed)
- Template fragment files
- Some README files that are purely navigational
- Temporal/Journal notes without content

## 4. Link Format Issues

### Empty Link Target

```
05-SYSTEM\Templates\Template-Insight.md:14
source_chat: "[[]]"
```

**Action:** Update template to use proper placeholder or remove empty brackets.

### Standard Markdown Links (Internal)

Found a few `.md` links in:
- `README.md` - `[Changelog](CHANGELOG.md)` - acceptable for root README
- External GitHub references - acceptable

No significant issues with internal link format.

## 5. Embed Issues

### Embedded Images - All Valid

All embedded images were verified to exist:

| Image | Location | Status |
|-------|----------|--------|
| `Pasted image 20251228132245.png` | 05-SYSTEM/Assets/Images | OK |
| `Pasted image 20251228132306.png` | 05-SYSTEM/Assets/Images | OK |
| `Pasted image 20251227174414.png` | 05-SYSTEM/Assets/Images | OK |
| `Pasted image 20251227174621.png` | 05-SYSTEM/Assets/Images | OK |
| `2025-12-26_obsidian_keychain_settings_screenshot.png` | 05-SYSTEM/Assets/Images | OK |
| `demo-analyze-r-package-functions.png` | 05-SYSTEM/Assets/Images | OK |

### Embedded Base Files

- `![[Images.base]]` in Assets/Images/_README - verify this works

## 6. Link Quality Metrics

| Metric | Value | Assessment |
|--------|-------|------------|
| Avg links per note | ~3.7 | Good |
| Orphan rate | ~5% | Acceptable |
| Broken link rate | ~10% | Needs attention |
| External link usage | Low | Good (per philosophy) |

## 7. Recommendations

### Priority 1: Create Missing Definition Notes

Create these definitions to fix broken links:

1. `Definition - JSON Web Token (JWT).md`
2. `Definition - OAuth.md`
3. `Definition - OpenID Connect (OIDC).md`
4. `Definition - Multi-Factor Authentication (MFA).md`
5. `Definition - Shannon Entropy.md`

### Priority 2: Fix MOC Naming - COMPLETED

1. ~~Add alias `GIS` to `MOC - Geospatial.md`~~ DONE - Added `MOC - GIS` alias
2. ~~Add alias `DataEngineering` to `MOC - Data Engineering.md`~~ DONE - Added `DataEngineering`, `MOC - DataEngineering` aliases
3. ~~Create `MOC - Security.md` or update references~~ - Deferred (low usage)
4. ~~Create `MOC - DevOps.md`~~ DONE - Added as alias to `MOC - Development.md`
5. ~~Add `RealEstate` alias~~ DONE - Added to `MOC - Business.md`

### Priority 3: Fix Meta/Philosophy References

Update links in AGENTS.md and README.md:
- `[[Vault Philosophy]]` → `[[PHILOSOPHY]]` or add alias
- `[[Tag Taxonomy]]` → `[[TAGS]]` or add alias
- `[[AI Setup]]` → `[[AGENTS]]` or add alias

### Priority 4: Clean Up README References

Either create Obsidian setup notes or remove references:
- `[[Obsidian - Setup]]`
- `[[Obsidian - Folders]]`
- etc.

### Priority 5: Fix Empty Link

Update `Template-Insight.md` to remove empty `[[]]` target.

### Priority 6: Increase Note Connectivity

- Add backlinks queries to notes missing them
- Cross-link related List and Code notes
- Ensure MOCs include dataview queries for their topics

## 8. Comparison with Previous Audit

Comparing with `Broken Links Output 2025-12-23.md`:

| Category | Dec 23 | Dec 31 | Change |
|----------|--------|--------|--------|
| Total broken links | 631 | ~200 | Improved (many were node_modules) |
| Critical missing | ~50 | ~25 | Improved |
| Template placeholders | N/A | Identified | Clarified |

Many "broken links" from the Dec 23 audit were in `quartz/node_modules/` README files - these are external package documentation and not actual vault issues.

---

*Report generated on 2025-12-31*

## See Also

- [[05-SYSTEM/Audit/Broken Links Output 2025-12-23]]
- [[05-SYSTEM/Audit/AuditLog-2025-12-31]]
- [[05-SYSTEM/Audit/StructuralAnalysis-2025-12-31]]

## Backlinks

```dataview
LIST FROM [[LinkAudit-2025-12-31]] AND -"CHANGELOG"
```
