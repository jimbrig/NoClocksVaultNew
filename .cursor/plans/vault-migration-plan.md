# Vault Migration Plan

Complete plan for migrating from NoClocksVault (old) to NoClocksVaultNew, organized in two distinct phases.

## Overview

**Phase 1**: Solidify the new vault's systems, structures, templates, and conventions
**Phase 2**: Incrementally migrate quality content from the old vault

---

# PHASE 1: Solidify New Vault Systems

Before migrating ANY content, ensure the new vault has all necessary infrastructure in place.

## 1.1 Folder Structure

### Current State

```
NoClocksVaultNew/
  00-INBOX/           ✓ exists
  01-SLIPBOX/         ✓ exists (empty)
  02-PROJECTS/        ✗ RENAME to 02-JOURNAL
  03-AREAS/           ✓ exists (has Journal subfolder + MOCs)
  04-RESOURCES/       ✓ exists (partial structure)
  05-SYSTEM/          ✓ exists
  99-ARCHIVES/        ✓ exists (empty)
  quartz/             ✓ exists
```

### Target State

```
NoClocksVaultNew/
  00-INBOX/
    README.md
  01-SLIPBOX/
    README.md
  02-JOURNAL/                    ← Move from 03-AREAS/Journal
    README.md
    Daily/
      YYYY/MM-Month/
    Weekly/
    Monthly/
    Quarterly/
    Annual/
  03-AREAS/                      ← MOCs only
    README.md
    MOC - R.md
    MOC - GIS.md
    MOC - PKM.md
    (future MOCs)
  04-RESOURCES/
    README.md
    Code/
      README.md
      R/
      PowerShell/
      SQL/
      Python/
      JavaScript/
      Docker/
      Git/
    Definitions/
      README.md
      Acronyms/
        README.md
      Dictionary/
        README.md
      Glossary/
        README.md
    Lists/                       ← NEW
      README.md
    Guides/                      ← NEW
      README.md
    Checklists/                  ← NEW
      README.md
    Quotes/                      ← NEW (optional)
      README.md
  05-SYSTEM/
    README.md
    Templates/
    Assets/
    Meta/
    Audit/
    Copilot/
  99-ARCHIVES/
    README.md
```

### Tasks

- [ ] Move `03-AREAS/Journal/` to `02-JOURNAL/`
- [ ] Remove `02-PROJECTS/` folder (or archive it)
- [ ] Move MOCs from `03-AREAS/MOCs/` to `03-AREAS/` directly
- [ ] Create `04-RESOURCES/Lists/` with `README.md`
- [ ] Create `04-RESOURCES/Guides/` with `README.md`
- [ ] Create `04-RESOURCES/Checklists/` with `README.md`
- [ ] Create `04-RESOURCES/Definitions/Acronyms/` with `README.md`
- [ ] Create `04-RESOURCES/Definitions/Dictionary/` with `README.md`
- [ ] Create `04-RESOURCES/Definitions/Glossary/` with `README.md`
- [ ] Move existing 96 Definitions into appropriate subfolders
- [ ] Ensure all folders have `README.md` files

## 1.2 Templates

### Current Templates

```
05-SYSTEM/Templates/
  Template-Definition.md     ✓
  Template-MOC.md            ✓
  Template-README.md         ✓
  Template-AuditLog.md       ✓
  Code/
    Template-Code-Dynamic.md ✓
    Template-Code-Readme.md  ✓
  Fragments/
    Template-Frontmatter.md  ✓
    Template-TOC.md          ✓
    Template-Creation-Modification-Dates.md ✓
  Temporal/
    Template-Daily.md        ✓
    Template-Weekly.md       ✓
    Template-Monthly.md      ✓
    Template-Quarterly.md    ✓
    Template-Annual.md       ✓
```

### Missing Templates

- [ ] `Template-List.md` - For curated lists with external links
- [ ] `Template-Guide.md` - For step-by-step how-to guides
- [ ] `Template-Checklist.md` - For actionable checklists
- [ ] `Template-Quote.md` - For quotations (optional)
- [ ] `Template-Code.md` - Simplified, self-contained code template

### Template Requirements

All templates must:
- Be self-contained (no fragment includes for main templates)
- Use correct author email: `jimmy.briggs@noclocks.dev`
- Include proper tag structure (Status, Type, Topic)
- Have aliases that exclude the prefix
- Include backlinks Dataview query

## 1.3 Meta Documentation

### Completed ✓

- [x] `05-SYSTEM/Meta/Vault Philosophy.md` - Core philosophy and decisions
- [x] `05-SYSTEM/Meta/Tag Taxonomy.md` - Complete tag hierarchy
- [x] `05-SYSTEM/Meta/AI Setup.md` - AI tooling configuration
- [x] `05-SYSTEM/Meta/PLUGINS.md` - Plugin list
- [x] `05-SYSTEM/Meta/README.md` - Meta folder index

### To Verify

- [ ] All Meta docs have correct frontmatter
- [ ] All Meta docs are internally consistent
- [ ] All Meta docs cross-link appropriately

## 1.4 Cursor/AI Configuration

### Rules (Updated ✓)

- [x] `.cursor/rules/obsidian-vault.mdc` - Updated with new structure

### To Update

- [ ] Review `.cursor/rules/quartz-publishing.mdc` for consistency
- [ ] Review `.cursor/rules/templater-syntax.mdc` for consistency

### Commands to Review

- [ ] `process-inbox.md` - Ensure routes match new folder structure
- [ ] `create-daily-note.md` - Ensure uses `02-JOURNAL/Daily/` path
- [ ] `audit-*.md` commands - Ensure paths are correct

### Prompts to Review

- [ ] `create-definition.md` - Update paths and conventions
- [ ] `create-code-snippet.md` - Update paths and conventions
- [ ] `create-moc.md` - Update to place in `03-AREAS/` directly

## 1.5 AGENTS.md

### Status: Updated ✓

- [x] Directory structure reflects new layout
- [x] Key philosophy documented
- [x] Type tags expanded
- [x] File naming table complete
- [x] Common tasks updated
- [x] "What NOT to Create" section added
- [x] Links to Meta documentation

## 1.6 Existing Content Reorganization

Before migration, reorganize existing new vault content:

### Definitions (96 notes)

Current: Flat in `04-RESOURCES/Definitions/`
Target: Organized into `Acronyms/`, `Dictionary/`, `Glossary/`

- [ ] Review each definition
- [ ] Move acronym definitions to `Acronyms/`
- [ ] Move general terms to `Dictionary/`
- [ ] Keep domain glossaries in `Glossary/`
- [ ] Ensure all follow naming convention: `Definition - {Term}.md`

### Code Notes (12 R notes)

- [ ] Verify naming convention: `Code - R - {Description}.md`
- [ ] Ensure proper frontmatter with aliases
- [ ] Verify tags include `Type/Code` and `Topic/R`

### MOCs (4 notes)

- [ ] Move from `03-AREAS/MOCs/` to `03-AREAS/` directly
- [ ] Ensure naming: `MOC - {Topic}.md`
- [ ] Update any internal links

### Journal Entries

- [ ] Move entire `03-AREAS/Journal/` to `02-JOURNAL/`
- [ ] Verify daily note structure
- [ ] Update Template-Daily.md path if needed

## 1.7 Obsidian Settings

### Templater Plugin

- [ ] Verify template folder path is `05-SYSTEM/Templates`
- [ ] Verify folder templates are configured correctly

### Daily Notes Plugin

- [ ] Update daily note folder to `02-JOURNAL/Daily`
- [ ] Verify date format matches convention

### Other Plugins

- [ ] Review Calendar plugin settings
- [ ] Review Dataview settings
- [ ] Verify Local REST API is configured for MCP

---

# PHASE 2: Incremental Content Migration

Only begin after Phase 1 is complete and validated.

## 2.1 Migration Principles

1. **One focus area at a time** - Don't context switch
2. **Quality over quantity** - Skip stubs and low-value notes
3. **Transform, don't copy** - Update to match new conventions
4. **Validate as you go** - Check links and queries work

## 2.2 Migration Order

1. **R Code Snippets** (you work with these daily)
2. **PowerShell Code Snippets**
3. **SQL Code Snippets**
4. **Other Code Languages** (as needed)
5. **Definitions/Acronyms** (expand existing)
6. **Lists** (decompose old Tool notes)
7. **Checklists**
8. **Guides**
9. **MOCs** (create/expand as content grows)

## 2.3 Per-Note Migration Workflow

```
1. Open old vault note
2. Assess quality (skip if stub/outdated)
3. Create new note in new vault with correct:
   - File name (with type prefix)
   - Location (correct folder)
   - Frontmatter (updated author, tags, aliases)
   - Content (cleaned up, links updated)
4. Add to relevant MOC
5. Verify in Obsidian
6. Mark as migrated in tracking doc
```

## 2.4 Migration Tracking

Create `05-SYSTEM/Audit/Migration-Log.md` to track:

```markdown
## Migration Progress

### Phase 1: Foundation
- [x] Folder structure created
- [x] Templates complete
- [x] Meta docs complete
- [x] Cursor rules updated
- [ ] Existing content reorganized

### Phase 2: Code
- [ ] R (0/59 remaining)
- [ ] PowerShell (0/33)
- [ ] SQL (0/34)
- [ ] Python (0/35)
- [ ] JavaScript (0/29)

### Phase 2: Definitions
- [ ] Acronyms (0/160 from old vault)
- [ ] Dictionary (0/41 from old vault)

### Phase 2: Lists
- [ ] List - Cloud Platforms
- [ ] List - DevOps Tools
- [ ] List - R Packages
- [ ] (etc.)

### Skipped Notes
| Note | Reason | Date |
|------|--------|------|
| Tool - X.md | Stub only | 2024-12-20 |
```

## 2.5 Quality Criteria

### Migrate if:

- Has substantive content (3+ paragraphs or meaningful code)
- Contains your own notes/discoveries
- Actively referenced or useful
- Part of connected knowledge graph

### Skip if:

- Only template skeleton
- Outdated information
- Duplicate of another note
- Single sentence of content
- Copied from official docs (link instead)

### Consolidate if:

- Multiple notes covering same topic
- Related notes that make more sense as one
- Stub notes that fit better in a List

---

# Validation Checklist

Before considering migration complete:

## Phase 1 Validation

- [ ] All folders exist with `README.md` files
- [ ] All templates are self-contained and correct
- [ ] Meta documentation is complete and consistent
- [ ] Cursor rules/prompts/commands are updated
- [ ] AGENTS.md reflects current structure
- [ ] Existing content is reorganized
- [ ] Obsidian settings are correct
- [ ] Quartz builds without errors

## Phase 2 Validation

- [ ] MOCs provide navigation to all migrated content
- [ ] All notes follow naming conventions
- [ ] All notes have proper frontmatter
- [ ] No broken wikilinks
- [ ] Dataview queries render correctly
- [ ] Quartz publishes without broken links

---

# Success Criteria

The migration is successful when:

1. New vault is the primary working vault
2. All active knowledge lives in new vault
3. Old vault is reference-only
4. Content is discoverable via MOCs and search
5. Inbox → Process → Destination flow works smoothly
6. Quartz publishes cleanly
