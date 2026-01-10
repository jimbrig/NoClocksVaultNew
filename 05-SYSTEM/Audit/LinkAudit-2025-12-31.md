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
| `[MOC - GIS](MOC - GIS.md)` | `[MOC - Geospatial](MOC - Geospatial.md)` | Chat migration docs, MOC - Geospatial |
| `[MOC - Security](MOC - Security.md)` | Create new or remove | Glossary - IAM, Guide - Web Auth |
| `[MOC - RealEstate](MOC - RealEstate.md)` | Create new or remove | MOC - Geospatial, List - Property Data |
| `[MOC - DevOps](MOC - DevOps.md)` | Create new or remove | List - Cloud Platforms, Docker Best Practices |
| `[MOC - DataEngineering](MOC - DataEngineering.md)` | `[MOC - Data Engineering](MOC - Data Engineering.md)` | MOC - Geospatial |
| `[MOC - Technology](MOC - Technology.md)` | Create new or remove | Code _README |
| `[03-AREAS/MOC - PowerShell](03-AREAS/MOC - PowerShell.md)` | `[MOC - PowerShell](MOC - PowerShell.md)` | PowerShell code notes |

### Critical - Missing Definition Notes

These definitions are referenced but don't exist:

| Missing Definition | Referenced In |
|--------------------|---------------|
| `[Definition - JSON Web Token (JWT)](Definition - JSON Web Token (JWT).md)` | Glossary - IAM, Guide - Web Auth |
| `[Definition - OAuth](Definition - OAuth.md)` | Glossary - IAM, Guide - Web Auth |
| `[Definition - OpenID Connect (OIDC)](Definition - OpenID Connect (OIDC).md)` | Glossary - IAM |
| `[Definition - Multi-Factor Authentication (MFA)](Definition - Multi-Factor Authentication (MFA).md)` | Glossary - IAM |
| `[Definition - Shannon Entropy](Definition - Shannon Entropy.md)` | Definition - Information Theory |

### Critical - Missing Meta/Philosophy Notes

| Broken Link | Actual File | Source Files |
|-------------|-------------|--------------|
| `[Vault Philosophy](Vault Philosophy.md)` | `[05-SYSTEM/Meta/PHILOSOPHY](05-SYSTEM/Meta/PHILOSOPHY.md)` | Chat migration, PHILOSOPHY |
| `[Tag Taxonomy](Tag Taxonomy.md)` | `[TAGS](TAGS.md)` or `[05-SYSTEM/Meta/TAGS](05-SYSTEM/Meta/TAGS.md)` | Chat migration, TAGS |
| `[AI Setup](AI Setup.md)` | `[05-SYSTEM/Meta/AGENTS](05-SYSTEM/Meta/AGENTS.md)` or `[AGENTS](AGENTS.md)` | Chat migration, AGENTS |

### High - Missing Obsidian Setup Notes

These are referenced in README but don't exist:

- `[Obsidian - Setup](Obsidian - Setup.md)`
- `[Obsidian - Folders](Obsidian - Folders.md)`
- `[Obsidian - Scripts](Obsidian - Scripts.md)`
- `[Obsidian - Themes](Obsidian - Themes.md)`
- `[Obsidian - CSS Snippets](Obsidian - CSS Snippets.md)`
- `[Obsidian - Community Plugins](Obsidian - Community Plugins.md)`
- `[./05-SYSTEM/Obsidian/](./05-SYSTEM/Obsidian/.md)`

### Medium - Missing Code Notes

| Missing Code Note | Referenced In |
|-------------------|---------------|
| `[Code - R - httr2 API Client](Code - R - httr2 API Client.md)` | List - Property Data Platforms |
| `[Code - R - GDAL Geospatial Operations](Code - R - GDAL Geospatial Operations.md)` | List - R Geospatial Packages |
| `[Code - R - New Function](Code - R - New Function.md)` | Chat migration (example text) |

### Medium - Missing Guide Notes

| Missing Guide | Referenced In |
|---------------|---------------|
| `[Guide - Inbox Processing](Guide - Inbox Processing.md)` | AGENTS.md references it |

### Low - Missing Tool/Technology Notes

These are mentioned in notes but don't have dedicated definition files (per vault philosophy, these should be in Lists, not individual notes):

<details>
<summary>Geospatial Tools (100+ references)</summary>

- `[GDAL](GDAL.md)`, `[OGR](OGR.md)`, `[GEOS](GEOS.md)`, `[PROJ](PROJ.md)`
- `[PostgreSQL](PostgreSQL.md)`, `[PostGIS](PostGIS.md)` (PostGIS exists, PostgreSQL doesn't)
- `[Leaflet.js](Leaflet.js.md)`, `[Mapbox](Mapbox.md)`, `[OpenLayers](OpenLayers.md)`, `[kepler.gl](kepler.gl.md)`
- `[pg_featureserv](pg_featureserv.md)`, `[pg_tileserv](pg_tileserv.md)`, `[pg_eventserv](pg_eventserv.md)`, `[pgSVG](pgSVG.md)`
- `[PostgREST](PostgREST.md)`, `[pgAdmin](pgAdmin.md)`, `[dbeaver](dbeaver.md)`, `[dbmate](dbmate.md)`
- `[Apache Airflow](Apache Airflow.md)`, `[Luigi](Luigi.md)`, `[DAG](DAG.md)`
- `[Data Build Tool (dbt)](Data Build Tool (dbt).md)`, `[Data Load Tool (dlt)](Data Load Tool (dlt).md)`
- Many R packages: `[sf](sf.md)`, `[terra](terra.md)`, `[leaflet](leaflet.md)`, etc.

</details>

<details>
<summary>Cloud/DevOps Tools</summary>

- `[Docker](Docker.md)`, `[Docker Compose](Docker Compose.md)`
- `[Azure](Azure.md)`, `[Azure Storage](Azure Storage.md)`, `[azcli](azcli.md)`, `[azcopy](azcopy.md)`
- `[Taskfile](Taskfile.md)`, `[Justfile](Justfile.md)`, `[GNU Make](GNU Make.md)`

</details>

### Template Placeholders (Expected)

These are template syntax and are working as intended:

- `[${creationDate}](${creationDate}.md)`, `[${tp.file.title}](${tp.file.title}.md)`
- `[2025-12-31](2025-12-31.md)` variants
- `[Related Checklist](Related Checklist.md)`, `[Related Guide](Related Guide.md)`, `[Related MOC](Related MOC.md)`, etc.

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
05-SYSTEM/Templates/Template-Insight.md:14
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

- `![Images.base](Images.base.md)` in Assets/Images/_README - verify this works

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
- `[Vault Philosophy](Vault Philosophy.md)` → `[PHILOSOPHY](PHILOSOPHY.md)` or add alias
- `[Tag Taxonomy](Tag Taxonomy.md)` → `[TAGS](TAGS.md)` or add alias
- `[AI Setup](AI Setup.md)` → `[AGENTS](AGENTS.md)` or add alias

### Priority 4: Clean Up README References

Either create Obsidian setup notes or remove references:
- `[Obsidian - Setup](Obsidian - Setup.md)`
- `[Obsidian - Folders](Obsidian - Folders.md)`
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

- [05-SYSTEM/Audit/Broken Links Output 2025-12-23](05-SYSTEM/Audit/Broken Links Output 2025-12-23.md)
- [05-SYSTEM/Audit/AuditLog-2025-12-31](05-SYSTEM/Audit/AuditLog-2025-12-31.md)
- [05-SYSTEM/Audit/StructuralAnalysis-2025-12-31](05-SYSTEM/Audit/StructuralAnalysis-2025-12-31.md)

## Backlinks
<!-- dynamic content -->
