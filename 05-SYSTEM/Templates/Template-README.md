<%*
// Generic README Template
// Self-contained template for folder README files
// Automatically detects folder context and adjusts content accordingly

const folderPath = tp.file.folder(true);
const folderName = tp.file.folder(false);
const creationDate = tp.date.now("YYYY-MM-DD");
const year = tp.date.now("YYYY");

// detect folder context for smart tagging
const isCodeFolder = folderPath.includes("04-RESOURCES/Code");
const isResourcesFolder = folderPath.startsWith("04-RESOURCES");
const isProjectsFolder = folderPath.startsWith("02-PROJECTS");
const isAreasFolder = folderPath.startsWith("03-AREAS");
const isSlipboxFolder = folderPath.startsWith("01-SLIPBOX");

// language detection for code folders
const languageInfo = {
  "R": { name: "R", tag: "Topic/Development/R" },
  "Python": { name: "Python", tag: "Topic/Development/Python" },
  "JavaScript": { name: "JavaScript", tag: "Topic/Development/JavaScript" },
  "TypeScript": { name: "TypeScript", tag: "Topic/Development/TypeScript" },
  "PowerShell": { name: "PowerShell", tag: "Topic/Development/PowerShell" },
  "Bash": { name: "Bash", tag: "Topic/Development/Bash" },
  "SQL": { name: "SQL", tag: "Topic/Development/SQL" },
  "HTML": { name: "HTML", tag: "Topic/Development/HTML" },
  "CSS": { name: "CSS", tag: "Topic/Development/CSS" },
  "React": { name: "React", tag: "Topic/Development/React" },
  "CMD": { name: "Command Line", tag: "Topic/Development/CMD" },
  "VBA": { name: "VBA", tag: "Topic/Development/VBA" },
  "Golang": { name: "Go", tag: "Topic/Development/Go" },
  "C++": { name: "C++", tag: "Topic/Development/CPP" },
  "CSharp": { name: "C#", tag: "Topic/Development/CSharp" },
  "Terraform": { name: "Terraform", tag: "Topic/Development/Terraform" },
  "Registry": { name: "Windows Registry", tag: "Topic/Development/Registry" },
  "PowerQuery": { name: "Power Query M", tag: "Topic/Development/PowerQuery" },
  "AppsScript": { name: "Google Apps Script", tag: "Topic/Development/AppsScript" },
  "AutoHotKey": { name: "AutoHotKey", tag: "Topic/Development/AutoHotKey" },
  "Git (Bash)": { name: "Git", tag: "Topic/Development/Git" },
  "Visual Basic": { name: "Visual Basic", tag: "Topic/Development/VB" }
};

// determine display name and language tag
const isLanguageFolder = isCodeFolder && languageInfo[folderName];
const lang = isLanguageFolder ? languageInfo[folderName] : null;
const displayName = lang ? `${lang.name} Code` : folderName;

// build context tags
let contextTags = [];
if (isCodeFolder) {
  contextTags.push("Type/Code");
  contextTags.push("Topic/Development");
  if (lang) contextTags.push(lang.tag);
} else if (isProjectsFolder) {
  contextTags.push("Type/Project");
} else if (isAreasFolder) {
  contextTags.push("Topic/Business");
}
-%>
---
creation_date: <% creationDate %>
modification_date: <% creationDate %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Readme
  - Topic/Meta
<% contextTags.map(t => `  - ${t}`).join("\n") %>
  - Status/Ongoing
aliases:
  - <% displayName %>
  - <% displayName %> Index
publish: true
permalink: 
description: Index of all notes under the <% folderName %> directory
cssclasses:
  - readme
---

# <% displayName %>

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `<% folderPath %>` directory.

## Index

> [!tip] Note Count
> *Currently, there are **`$= dv.pages('"' + dv.current().file.folder + '"').length - 1`** individual notes in this folder.*

```dataview
TABLE WITHOUT ID
  file.link AS "Note",
  file.mday AS "Modified"
FROM "<% folderPath %>"
WHERE file.name != this.file.name
SORT file.name ASC
```

***

## Appendix

*Note created on [[<% creationDate %>]] and last modified on [[<% creationDate %>]].*

### See Also

- [[<% folderPath.split("/").slice(0, -1).join("/") %>/_README|Parent Folder]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"<% folderPath %>/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% year %>
