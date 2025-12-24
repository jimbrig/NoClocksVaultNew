---
title: "Highlight web pages"
source: "https://help.obsidian.md/web-clipper/highlight"
author: "Obsidian Help"
published:
creation_date: "2025-12-24"
description: "Introduction to Obsidian Web Clipper - Obsidian Help"
tags:
  - "Type/WebClip"
modification_date: "2025-12-24"
aliases: "Highlight web pages"
---
# Highlight web pages

> [!SOURCE] Source:
> <https://help.obsidian.md/web-clipper/highlight>

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Content

[Obsidian Help](https://help.obsidian.md/Home)

[Obsidian Help](https://help.obsidian.md/Home)

[Web Clipper](https://help.obsidian.md/web-clipper) lets you highlight text on web pages, and select the elements you want to save to Obsidian. Your highlights are saved, so you can revisit them when you return to a page.

Highlights can be [captured](https://help.obsidian.md/web-clipper/capture) and saved to Obsidian when you open the extension.

## Turn on highlighter

You can turn on highlighting in several ways, depending on your browser:

Once highlighting is on, you can select text, images, and elements you want to highlight.

## Highlighter settings

You can change the highlighter behavior by going to Web Clipper settings. Here you can also export your highlights to a `.json` file.

There are three options for highlights to be inserted into your clipped note via the `{{content}}` [variable](https://help.obsidian.md/web-clipper/variables):

- **Highlight the page content** — adds highlights directly to the text with the [syntax](https://help.obsidian.md/obsidian-flavored-markdown) `==highlight==`.
- **Replace the page content** — returns a list of highlights, without any of the page content.
- **Do nothing** — returns the original content without highlights.

You can add highlights directly to your template using the `{{highlights}}` variable, for example:

```
{{highlights|map: item => item.text|join:"\n\n"}}
```

Highlight web pages

Interactive graph

Turn on highlighter

Highlighter settings

***

## Appendix

*Note created via the [Obsidian Web Clipper Browser Extension]() on [[2025-12-24]].*

### See Also

- [[00-INBOX/Clippings/_README|Web Clips]]

### Backlinks

```dataview
LIST FROM [[Highlight web pages]] 
WHERE file.name != "_README" AND file.name != this.file.name AND file.name != "CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025