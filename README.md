---
creation_date: 2024-03-17
modification_date: 2024-12-20
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Knowledge vault for No Clocks, LLC - a curated collection of interlinked atomic notes
tags:
  - Type/Readme
  - Topic/Meta
  - Status/Ongoing
aliases:
  - No Clocks Vault
  - Vault Readme
---

<h1 align="center">No Clocks Knowledge Vault</h1>
<p align="center">
    <a href="https://docs.noclocks.dev/noclocksvault/">Website</a> |
    <a href="https://github.com/noclocks/noclocksvault">GitHub Repo</a>
</p>
<p align="center">Curated Knowledge for the Masses</p>

***

<p align="center">
  <img src="https://github.com/noclocks/brand/blob/main/src/logo/noclocks-logo-white.svg?raw=true" height="60%" width="60%">
  <br>
  <a href="mailto:support@noclocks.dev">support@noclocks.dev</a> | <a href="https://noclocks.dev">www.noclocks.dev</a>
</p>

<!-- BADGES:START -->
<p align="center">
  <a href="https://github.com/jimbrig/NoClocksVaultNew/actions/workflows/convert-links.yml">
    <img src="https://github.com/jimbrig/NoClocksVaultNew/actions/workflows/convert-links.yml/badge.svg?branch=develop" alt="Convert Obsidian Vault">
  </a>
  <a href="https://github.com/jimbrig/NoClocksVaultNew/actions/workflows/quartz-deploy.yml">
    <img src="https://github.com/jimbrig/NoClocksVaultNew/actions/workflows/quartz-deploy.yml/badge.svg?branch=main" alt="Deploy Quartz to GitHub Pages">
  </a>
</p>
<!-- BADGES:END -->

***

## Welcome

Welcome to the Knowledge Vault for [No Clocks, LLC](https://github.com/noclocks).

Inside is a wealth of knowledge curated over our tenure as a business while pursuing and widening our knowledge across the technology sector.

The vault is structured loosely as a *[Zettelkasten](https://zettelkasten.de/overview/#the-introduction-to-the-zettelkasten-method)*, or a collection of interlinked *[Atomic Notes](https://zettelkasten.de/posts/create-zettel-from-reading-notes/)* about anything that has resonated with our work and was deemed worthy of including.

Consider this a *[Digital Garden]()*. It is a garden that needs to be maintained and cared for overtime to produce fruitful outcomes.

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## About

Check out the [`05-SYSTEM/Meta`](./05-SYSTEM/Meta/) Folder for details about this Obsidian Vault and its setup:

- [[PHILOSOPHY]]: Vault's over-arching philosophy.
- [[TAGS]]: Tag System
- [[PLUGINS]]: Plugin Usage
- [[THEMES]]: Custom Vault Themes
- [[AGENTS]]: LLM Usage Details

The [Changelog](CHANGELOG.md) is also a good *Meta* resource.

*Launch this vault directly via the **Obsidian URI Schema**: `obsidian://open?vault=NoClocksVault`.*

### Publishing Setup

This repository uses a three-branch workflow with [Quartz](https://quartz.jzhao.xyz/) for publishing:

| Branch | Purpose | Trigger |
|--------|---------|---------|
| `develop` | Raw Obsidian content with wikilinks | Local Obsidian Git sync |
| `main` | GitHub-viewable content (converted links) | Auto from `develop` push |
| `gh-pages` | Deployed Quartz site | Auto from `main` push |

**How it works:**

1. **develop branch**: The actual Obsidian vault content with `[[wikilinks]]` and `_README.md` files. This is where Obsidian Git syncs to.

2. **main branch**: Automatically generated from `develop` via GitHub Actions:
   - `[[wikilinks]]` converted to standard markdown links using [obsidian-export](https://github.com/zoni/obsidian-export)
   - `_README.md` files renamed to `README.md` for GitHub navigation
   - Force pushed to maintain clean history

3. **gh-pages branch**: [Quartz](https://quartz.jzhao.xyz/) static site deployed automatically:
   - Triggered after `main` branch updates
   - Full-text search, graph view, backlinks, and more
   - Published to [docs.noclocks.dev/noclocksvault](https://docs.noclocks.dev/noclocksvault/)

*Check out the [GitHub Actions workflows](.github/workflows/) for implementation details.*

### Vault Philosophy

This vault is a **knowledge base**, not a task manager. The guiding principle:

> **Your vault stores YOUR knowledge, not duplicated documentation.**

- **Link to official docs** rather than copying them
- **Capture your insights** - what you learned, your customizations, your opinions
- **Curate references** - organized lists with external links
- **Connect ideas** - liberal use of wikilinks and MOCs

Project documentation stays with projects (in repos, etc.). This vault is for cross-project, transferable knowledge.

### Maps of Content

MOCs serve as structural index notes that aggregate related content across the vault. They live in `03-AREAS/` and use Dataview queries to dynamically list related notes.

Current MOCs:

- [[MOC - Development]] - General Development
- [[MOC - R]] - R programming ecosystem
- [[MOC - GIS]] - Geographic Information Systems
- [[MOC - PKM]] - Personal Knowledge Management

### Naming Conventions

Notes use type prefixes for organization, with aliases for clean wikilinks:

| Type | Pattern | Example |
|------|---------|---------|
| MOC | `MOC - {Topic}.md` | `MOC - R.md` |
| Code | `Code - {Lang} - {Desc}.md` | `Code - R - Shiny Helpers.md` |
| Definition | `Definition - {Term}.md` | `Definition - API.md` |
| List | `List - {Category}.md` | `List - DevOps Tools.md` |
| Guide | `Guide - {Topic}.md` | `Guide - Local Dev Setup.md` |
| Checklist | `Checklist - {Topic}.md` | `Checklist - Deployment.md` |

### Tag Taxonomy

Tags follow a flat, combinable structure:

- **Status/**: `Complete`, `WIP`, `Draft`, `Ongoing`
- **Type/**: `MOC`, `Code`, `Definition`, `List`, `Guide`, `Checklist`, `Daily`, etc.
- **Topic/**: `R`, `Python`, `GIS`, `DevOps`, `Cloud`, `Business`, etc.

See [[PHILOSOPHY]] and [[TAGS]] for complete documentation 

## Structure

The vault follows a deliberate structure optimized for knowledge management rather than task management.

```
NoClocksVaultNew/
  00-INBOX/         # Quick capture entry point
  01-SLIPBOX/       # Atomic, polished permanent notes
  02-JOURNAL/       # Temporal notes (Daily, Weekly, Monthly)
  03-AREAS/         # MOCs - global knowledge indices
  04-RESOURCES/     # Typed reference knowledge
  05-SYSTEM/        # Vault configuration and meta
  99-ARCHIVES/      # Inactive content
  quartz/           # Quartz publishing configuration
```

| Folder | Purpose |
|--------|---------|
| **00-INBOX** | Quick capture, unsorted incoming notes |
| **01-SLIPBOX** | Atomic permanent notes (pure ideas, non-typed) |
| **02-JOURNAL** | Temporal notes: Daily, Weekly, Monthly, Quarterly, Annual |
| **03-AREAS** | MOCs (Maps of Content) - global knowledge indices |
| **04-RESOURCES** | Typed knowledge: Code, Definitions, Lists, Guides, Checklists |
| **05-SYSTEM** | Vault meta: Templates, Assets, Configuration |
| **99-ARCHIVES** | Inactive/deprecated content |

### Knowledge Flow

```
CAPTURE → PROCESS → NAVIGATE → REFERENCE
```

1. **Capture**: Quick thoughts go to Inbox (or via Daily notes)
2. **Process**: Route to appropriate location based on type
3. **Navigate**: MOCs provide global indices across topics
4. **Reference**: Find what you need when you need it

For detailed philosophy and conventions, see [[PHILOSOPHY]].

## Content

The vault has a variety of content including, but not limited to:

- [[00-INBOX/_README|Inbox]]
- [[01-SLIPBOX/_README|Slipbox]]
- [[02-JOURNAL/_README|Journal]]
  - [[02-JOURNAL/2024/_README|2024]]
  - [[02-JOURNAL/2025/_README|2025]]
- [[03-AREAS/_README|Areas]]
  - [[03-AREAS/MOC - Development|Development Map of Content]]
  - [[03-AREAS/MOC - GIS|GIS Map of Content]]
  - [[03-AREAS/MOC - PKM|PKM Map of Content]]
  - [[03-AREAS/MOC - R|R Map of Content]]
- [[04-RESOURCES/_README|Resources]]
  - [[04-RESOURCES/Checklists/_README|Checklists]]
  - [[04-RESOURCES/Code/_README|Code Snippets]]
  - [[04-RESOURCES/Definitions/_README|Definitions]]
  - [[04-RESOURCES/Embeds/_README|Embedded Websites]]
  - [[04-RESOURCES/Guides/_README|Guides]]
  - [[04-RESOURCES/Lists/_README|Lists]]
 
### Code Snippets

See the [[04-RESOURCES/Code/_README|Code]] folder's README for details on all of the code snippets included inside this vault.

---

[changelog]: ./CHANGELOG.md
[license]: ./LICENSE.md
[about]: ./ABOUT.md
[home]: ./HOME.md
[noclocks_website]: https://noclocks.dev
[noclocks_email]: mailto:dev@noclocks.dev
[noclocks_blog]: https://blog.noclocks.dev
[noclocks_linkedin]: https://linkedin.com/company/noclocks
[noclocks_twitter]: https://twitter.com/noclocksdev
[noclocks_sponsor]: https://pay.noclocks.dev/
[noclocks_github]: https://github.com/noclocks
[gh_jimbrig]: https://github.com/jimbrig
[gh_phoward]: https://github.com/phoward38
[gh_org]: https://github.com/noclocks
[gh_repo]: https://github.com/noclocks/NoClocksVault
[gh_repo_main]: https://github.com/noclocks/NoClocksVault/tree/main
[gh_repo_develop]: https://github.com/noclocks/NoClocksVault/tree/develop
[gh_pages]: https://docs.noclocks.dev/noclocksvault/
[gh_workflows]: https://github.com/noclocks/NoClocksVault/tree/main/.github/workflows
[obs_export_gh_repo]: https://github.com/zoni/obsidian-export
[zettelkasten_site]: https://zettelkasten.de
