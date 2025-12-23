# Obsidian Configuration (`.obsidian`)

> [!NOTE]
> *This folder houses the vault's Obsidian configuration files, including settings, installed plugins, and themes. Modifying these files directly can affect how Obsidian behaves within this vault.*

## Contents

- [Settings](#settings)
- [Plugins](#plugins)
- [Themes](#themes)
- [Snippets](#snippets)

## Settings

The vault's Obsidian settings are stored in JSON files within this folder. These settings control various aspects of the vault's behavior and appearance.

<!-- BEGIN:SETTINGS -->

- [`app.json`](app.json)
- [`appearance.json`](appearance.json)
- [`backlink.json`](backlink.json)
- [`community-plugins.json`](community-plugins.json)
- [`core-plugins.json`](core-plugins.json)
- [`daily-notes.json`](daily-notes.json)
- [`hotkeys.json`](hotkeys.json)
- [`switcher.json`](switcher.json)
- [`templates.json`](templates.json)
- [`types.json`](types.json)
- [`webviewer.json`](webviewer.json)

<!-- END:SETTINGS -->

## Plugins

The vault utilizes the following community plugins to enhance functionality:

<!-- BEGIN:PLUGINS -->

| Name | Version | Description |
|:----:|:-------:|:-----------:|
| [Automatic Table Of Contents](plugins/automatic-table-of-contents) | 1.7.3 | Create a table of contents in a note, that updates itself when the note changes |
| [Better Word Count](plugins/better-word-count) | 0.10.1 | Counts the words of selected text in the editor. |
| [Calendar](plugins/calendar) | 1.5.10 | Calendar view of your daily notes |
| [Code Styler](plugins/code-styler) | 1.1.7 | Style and customize codeblocks and inline code in both editing mode and reading mode. |
| [Convert url to preview (iframe)](plugins/convert-url-to-iframe) | 0.5.0 | Convert an url (ex, youtube) into an iframe (preview) |
| [Dataview](plugins/dataview) | 0.5.68 | Complex data views for the data-obsessed. |
| [DB Folder](plugins/dbfolder) | 3.5.1 | Folder with the capability to store and retrieve data from a folder like database |
| [Editing Toolbar](plugins/editing-toolbar) | 3.1.18 | The Obsidian Editing Toolbar is modified from cmenu, which provides more powerful customization settings and has many built-in editing commands to be a MS Word-like toolbar editing experience. |
| [GitHub Copilot](plugins/github-copilot) | 1.1.8 | Implement GitHub Copilot services (suggestion and chat) in Obsidian |
| [Google Drive Sync](plugins/google-drive-sync) | 2.2.2 | Syncs a vault into Google Drive for cross-platform use (works for iOS). |
| [Homepage](plugins/homepage) | 4.2.2 | Open a specified note, canvas, base, or workspace on startup, or set it for quick access later. |
| [Lazy Plugin Loader](plugins/lazy-plugins) | 1.0.21 | Load plugins with a delay on startup, so that you can get your app startup down into the sub-second loading time. |
| [Mermaid Tools](plugins/mermaid-tools) | 1.3.0 | Improved Mermaid.js experience for Obsidian: visual toolbar with common elements & more |
| [Metadata Menu](plugins/metadata-menu) | 0.8.10 | For data quality enthusiasts (and dataview users): manage the metadata of your notes. |
| [Natural Language Dates](plugins/nldates-obsidian) | 0.6.2 | Create date-links based on natural language |
| [Advanced URI](plugins/obsidian-advanced-uri) | 1.46.0 | Advanced modes for Obsidian URI |
| [Clipper](plugins/obsidian-clipper) | 0.2.9 | This plugin helps you capture highlights from the web. |
| [Dictionary](plugins/obsidian-dictionary-plugin) | 2.22.0 | This is a simple dictionary for the Obsidian Note-Taking Tool. |
| [Full Calendar](plugins/obsidian-full-calendar) | 0.10.7 | Obsidian integration with Full Calendar (fullcalendar.io) |
| [Git](plugins/obsidian-git) | 2.35.2 | Integrate Git version control with automatic backup and other advanced features. |
| [Google Calendar and Contacts Lookup](plugins/obsidian-google-lookup) | 1.6.0 | Import contact and calendar event information from your Google account |
| [Imgur](plugins/obsidian-imgur-plugin) | 2.6.3 | This plugin uploads images from your clipboard to imgur.com and embeds uploaded image to your note |
| [Local REST API](plugins/obsidian-local-rest-api) | 3.2.0 | Get, change or otherwise interact with your notes in Obsidian via a REST API. |
| [Mind Map](plugins/obsidian-mind-map) | 1.1.0 | A plugin to preview notes as Markmap mind maps |
| [Pandoc Plugin](plugins/obsidian-pandoc) | 0.4.1 | This is a Pandoc export plugin for Obsidian. It provides commands to export to formats like DOCX, ePub and PDF. |
| [Plugin Groups](plugins/obsidian-plugin-groups) | 2.1.0 | Manage your Plugins through groups: Enable and disable multiple plugins through a single command, or delay the startup of plugins to speed up your Obsidian start up time. |
| [Plugin Update Tracker](plugins/obsidian-plugin-update-tracker) | 1.7.0 | Know when installed plugins have updates and evaluate the risk of upgrading |
| [Raindrop Highlights](plugins/obsidian-raindrop-highlights) | 0.0.24 | Sync your Raindrop.io highlights. |
| [Style Settings](plugins/obsidian-style-settings) | 1.0.9 | Offers controls for adjusting theme, plugin, and snippet CSS variables. |
| [Vault Changelog](plugins/obsidian-vault-changelog) | 1.2.0 | Maintain a changelog of recently edited notes |
| [Wikipedia](plugins/obsidian-wikipedia) | 1.0.3 | Grabs information from Wikipedia for a topic and brings it into Obsidian notes |
| [Zotero Integration](plugins/obsidian-zotero-desktop-connector) | 3.2.1 | Insert and import citations, bibliographies, notes, and PDF annotations from Zotero. |
| [BRAT](plugins/obsidian42-brat) | 1.3.2 | Easily install a beta version of a plugin for testing. |
| [Open vault in VSCode](plugins/open-vscode) | 1.4.1 | Ribbon button, command and file explorer context menu to open the vault as a Visual Studio Code (VSCode) workspace |
| [QuickAdd](plugins/quickadd) | 2.8.0 | Quickly add new pages or content to your vault. |
| [Readwise Official](plugins/readwise-official) | 3.0.1 | Official Readwise <-> Obsidian integration |
| [Recent Files](plugins/recent-files-obsidian) | 1.7.4 | List files by most recently opened |
| [Settings Search](plugins/settings-search) | 1.3.10 | Globally search settings in Obsidian.md |
| [Smart Connections](plugins/smart-connections) | 3.0.80 | Chat with your notes & see links to related content with Local or Remote models. |
| [Advanced Tables](plugins/table-editor-obsidian) | 0.22.1 | Improved table navigation, formatting, manipulation, and formulas |
| [Tag Wrangler](plugins/tag-wrangler) | 0.6.4 | Rename, merge, toggle, and search tags from the tags view |
| [Templater](plugins/templater-obsidian) | 2.16.2 | Create and use templates |
| [Terminal](plugins/terminal) | 3.20.0 | Integrate consoles, shells, and terminals. |
| [Todoist Sync](plugins/todoist-sync-plugin) | 2.2.1 | Materialize Todoist tasks within Obsidian notes. |
| [Paste URL into selection](plugins/url-into-selection) | 1.11.4 | Paste URL "into" selected text to create markdown links. |

<!-- END:PLUGINS -->

## Themes

The vault uses the following themes to customize its appearance:

<!-- BEGIN:THEMES -->

| Name | Version | Author |
|:----:|:-------:|:------:|
| [Atom](themes/Atom) | 0.0.0 | kognise |
| [Big Sur Aesthetic](themes/Big%20Sur%20Aesthetic) | 0.0.0 | David Golding |
| [Blackbird](themes/Blackbird) | 0.0.0 | Ivan Chernov |
| [Catppuccin](themes/Catppuccin) | 0.4.44 | Marshall Beckrich |
| [Dark Moss](themes/Dark%20Moss) | 1.0.0 | sergey |
| [GitHub Theme](themes/GitHub%20Theme) | 1.1.6 | @krios2146 |
| [Minimal](themes/Minimal) | 8.0.4 | @kepano |
| [Obsidianite](themes/Obsidianite) | 2.0.2 | @bennyxguo |
| [Prism](themes/Prism) | 3.7.0 | Damian Korcz |
| [Sanctum](themes/Sanctum) | 1.2.0 | @jdanielmourao |
| [Shimmering Focus](themes/Shimmering%20Focus) | 5.60 | pseudometa aka Chris Grieser |
| [Terminal](themes/Terminal) | 1.0.5 | @Atlas |
| [Things](themes/Things) | 2.1.20 | @colineckert |
| [VSCoder](themes/VSCoder) | 0.2.0 | kylemit |

<!-- END:THEMES -->

## Snippets

Custom CSS snippets that modify the vault's appearance and behavior:

<!-- BEGIN:SNIPPETS -->

- [`animation.css`](snippets/animation.css)
- [`buttons.css`](snippets/buttons.css)
- [`callouts.css`](snippets/callouts.css)
- [`center-table.css`](snippets/center-table.css)
- [`clean-embeds.css`](snippets/clean-embeds.css)
- [`code.css`](snippets/code.css)
- [`collapsing-sidebar.css`](snippets/collapsing-sidebar.css)
- [`command-palette.css`](snippets/command-palette.css)
- [`daily.css`](snippets/daily.css)
- [`dashboard.css`](snippets/dashboard.css)
- [`declutter.css`](snippets/declutter.css)
- [`folder-icons.css`](snippets/folder-icons.css)
- [`frontmatter.css`](snippets/frontmatter.css)
- [`github-gists.css`](snippets/github-gists.css)
- [`home.css`](snippets/home.css)
- [`lined-headings.css`](snippets/lined-headings.css)
- [`mermaid.css`](snippets/mermaid.css)
- [`moc.css`](snippets/moc.css)
- [`outliner.css`](snippets/outliner.css)
- [`readme.css`](snippets/readme.css)
- [`tables.css`](snippets/tables.css)
- [`todoist.css`](snippets/todoist.css)
- [`tool.css`](snippets/tool.css)
- [`width.css`](snippets/width.css)

<!-- END:SNIPPETS -->
