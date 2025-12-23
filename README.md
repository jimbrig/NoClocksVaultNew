<h1 align="center">No Clocks Knowledge Vault</h1>
<p align="center">
    <a href="https://docs.noclocks.dev/noclocksvault/">Website</a> |
    <a href="https://github.com/noclocks/noclocksvault">GitHub Repo</a>
</p>
<p align="center">Curated Knowledge for the Masses</p>

---

<p align="center">
  <img src="https://github.com/noclocks/brand/blob/main/src/logo/noclocks-logo-white.svg?raw=true" height="60%" width="60%">
  <br>
  <a href="mailto:support@noclocks.dev">support@noclocks.dev</a> | <a href="https://noclocks.dev">www.noclocks.dev</a>
</p>

---

## Welcome

Welcome to the Knowledge Vault for [No Clocks, LLC](https://github.com/noclocks).

Inside is a wealth of knowledge curated over our tenure as a business while pursuing and widening our knowledge across the technology sector.

The vault is structured loosely as a *[Zettelkasten](https://zettelkasten.de/overview/#the-introduction-to-the-zettelkasten-method)*, or a collection of interlinked *[Atomic Notes](https://zettelkasten.de/posts/create-zettel-from-reading-notes/)* about anything that has resonated with our work and was deemed worthy of including.

Consider this a *[Digital Garden]()*. It is a garden that needs to be maintained and cared for overtime to produce fruitful outcomes.

<!-- table of contents removed for github compatibility -->

## About

Check out the [`05-SYSTEM/Obsidian`](./05-SYSTEM/Obsidian/) Folder for details about this Obsidian Vault and its setup.

Some notes:

* *Obsidian - Setup*
* *Obsidian - Folders*
* *Obsidian - Scripts*
* *Obsidian - Themes*
* *Obsidian - CSS Snippets*
* *Obsidian - Community Plugins*

The [Changelog](CHANGELOG.md) is also a good *Meta* resource.

*Launch this vault directly via the **Obsidian URI Schema**: `obsidian://open?vault=NoClocksVault`.*

### Publishing Setup

This repository uses a three-branch workflow with [Quartz](https://quartz.jzhao.xyz/) for publishing:

|Branch|Purpose|Trigger|
|------|-------|-------|
|`develop`|Raw Obsidian content with wikilinks|Local Obsidian Git sync|
|`main`|GitHub-viewable content (converted links)|Auto from `develop` push|
|`gh-pages`|Deployed Quartz site|Auto from `main` push|

**How it works:**

1. **develop branch**: The actual Obsidian vault content with `[[wikilinks]]` and `_README.md` files. This is where Obsidian Git syncs to.

1. **main branch**: Automatically generated from `develop` via GitHub Actions:
   
   * `[[wikilinks]]` converted to standard markdown links using [obsidian-export](https://github.com/zoni/obsidian-export)
   * `_README.md` files renamed to `README.md` for GitHub navigation
   * Force pushed to maintain clean history
1. **gh-pages branch**: [Quartz](https://quartz.jzhao.xyz/) static site deployed automatically:
   
   * Triggered after `main` branch updates
   * Full-text search, graph view, backlinks, and more
   * Published to [docs.noclocks.dev/noclocksvault](https://docs.noclocks.dev/noclocksvault/)

*Check out the [GitHub Actions workflows](.github/workflows/) for implementation details.*

### Vault Philosophy

This vault is a **knowledge base**, not a task manager. The guiding principle:

 > 
 > **Your vault stores YOUR knowledge, not duplicated documentation.**

* **Link to official docs** rather than copying them
* **Capture your insights** - what you learned, your customizations, your opinions
* **Curate references** - organized lists with external links
* **Connect ideas** - liberal use of wikilinks and MOCs

Project documentation stays with projects (in repos, etc.). This vault is for cross-project, transferable knowledge.

### Maps of Content

MOCs serve as structural index notes that aggregate related content across the vault. They live in `03-AREAS/` and use Dataview queries to dynamically list related notes.

Current MOCs:

* [MOC - R](03-AREAS\MOC%20-%20R.md) - R programming ecosystem
* [MOC - GIS](03-AREAS\MOC%20-%20GIS.md) - Geographic Information Systems
* [MOC - PKM](03-AREAS\MOC%20-%20PKM.md) - Personal Knowledge Management

### Naming Conventions

Notes use type prefixes for organization, with aliases for clean wikilinks:

|Type|Pattern|Example|
|----|-------|-------|
|MOC|`MOC - {Topic}.md`|`MOC - R.md`|
|Code|`Code - {Lang} - {Desc}.md`|`Code - R - Shiny Helpers.md`|
|Definition|`Definition - {Term}.md`|`Definition - API.md`|
|List|`List - {Category}.md`|`List - DevOps Tools.md`|
|Guide|`Guide - {Topic}.md`|`Guide - Local Dev Setup.md`|
|Checklist|`Checklist - {Topic}.md`|`Checklist - Deployment.md`|

### Tag Taxonomy

Tags follow a flat, combinable structure:

* **Status/**: `Complete`, `WIP`, `Draft`, `Ongoing`
* **Type/**: `MOC`, `Code`, `Definition`, `List`, `Guide`, `Checklist`, `Daily`, etc.
* **Topic/**: `R`, `Python`, `GIS`, `DevOps`, `Cloud`, `Business`, etc.

See *Vault Philosophy* and *Tag Taxonomy* for complete documentation

## Structure

The vault follows a deliberate structure optimized for knowledge management rather than task management.

````
NoClocksVaultNew/
  00-INBOX/         # Quick capture entry point
  01-SLIPBOX/       # Atomic, polished permanent notes
  02-JOURNAL/       # Temporal notes (Daily, Weekly, Monthly)
  03-AREAS/         # MOCs - global knowledge indices
  04-RESOURCES/     # Typed reference knowledge
  05-SYSTEM/        # Vault configuration and meta
  99-ARCHIVES/      # Inactive content
  quartz/           # Quartz publishing configuration
````

|Folder|Purpose|
|------|-------|
|**00-INBOX**|Quick capture, unsorted incoming notes|
|**01-SLIPBOX**|Atomic permanent notes (pure ideas, non-typed)|
|**02-JOURNAL**|Temporal notes: Daily, Weekly, Monthly, Quarterly, Annual|
|**03-AREAS**|MOCs (Maps of Content) - global knowledge indices|
|**04-RESOURCES**|Typed knowledge: Code, Definitions, Lists, Guides, Checklists|
|**05-SYSTEM**|Vault meta: Templates, Assets, Configuration|
|**99-ARCHIVES**|Inactive/deprecated content|

### Knowledge Flow

````
CAPTURE → PROCESS → NAVIGATE → REFERENCE
````

1. **Capture**: Quick thoughts go to Inbox (or via Daily notes)
1. **Process**: Route to appropriate location based on type
1. **Navigate**: MOCs provide global indices across topics
1. **Reference**: Find what you need when you need it

For detailed philosophy and conventions, see *Vault Philosophy*.

## Content

The vault has a variety of content including, but not limited to:

* Code Snippets
* Lists of Resources
* Checklists
* Slipbox Atomic Notes
* Guides and How-To's
* Lessons Learned
* Daily Notes
* Templates
* Best Practices
* Documentation
* Tools by Category
* Mindsweeps
* Goals and Learning Notes
* Project Support Notes
* Notes about People and Agendas
* Definitions
* Embedded Websites
* Kanban Boards
* MindMaps
* Highlights from a variety of sources
* Clippings from the Web
* Podcast Notes

And More!

### Code Snippets

See the *Code* folder's README for details on all of the code snippets included inside this vault.

---
