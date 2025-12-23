<%*
// Code README Template
// Simplified, self-contained template for language-specific code folder READMEs
// Automatically detects language from folder name

// Get folder info
const folderPath = tp.file.folder(true);
const folderName = tp.file.folder(false);

// Detect language from folder name
const languageInfo = {
  "R": { name: "R", tag: "Topic/Development/R", icon: "chart-line" },
  "Python": { name: "Python", tag: "Topic/Development/Python", icon: "snake" },
  "JavaScript": { name: "JavaScript", tag: "Topic/Development/JavaScript", icon: "file-code" },
  "TypeScript": { name: "TypeScript", tag: "Topic/Development/TypeScript", icon: "file-code" },
  "PowerShell": { name: "PowerShell", tag: "Topic/Development/PowerShell", icon: "terminal" },
  "Bash": { name: "Bash", tag: "Topic/Development/Bash", icon: "terminal" },
  "SQL": { name: "SQL", tag: "Topic/Development/SQL", icon: "database" },
  "HTML": { name: "HTML", tag: "Topic/Development/HTML", icon: "code" },
  "CSS": { name: "CSS", tag: "Topic/Development/CSS", icon: "palette" },
  "React": { name: "React", tag: "Topic/Development/React", icon: "atom" },
  "CMD": { name: "Command Line", tag: "Topic/Development/CMD", icon: "terminal" },
  "VBA": { name: "VBA", tag: "Topic/Development/VBA", icon: "file-spreadsheet" },
  "Golang": { name: "Go", tag: "Topic/Development/Go", icon: "code" },
  "C++": { name: "C++", tag: "Topic/Development/CPP", icon: "code" },
  "CSharp": { name: "C#", tag: "Topic/Development/CSharp", icon: "code" },
  "Terraform": { name: "Terraform", tag: "Topic/Development/Terraform", icon: "cloud" },
  "Registry": { name: "Windows Registry", tag: "Topic/Development/Registry", icon: "settings" },
  "PowerQuery": { name: "Power Query M", tag: "Topic/Development/PowerQuery", icon: "table" },
  "AppsScript": { name: "Google Apps Script", tag: "Topic/Development/AppsScript", icon: "file-code" },
  "AutoHotKey": { name: "AutoHotKey", tag: "Topic/Development/AutoHotKey", icon: "keyboard" },
  "Git (Bash)": { name: "Git", tag: "Topic/Development/Git", icon: "git-branch" },
  "Visual Basic": { name: "Visual Basic", tag: "Topic/Development/VB", icon: "code" }
};

// Get language info or default
const lang = languageInfo[folderName] || { 
  name: folderName, 
  tag: `Topic/Development/${folderName}`, 
  icon: "code" 
};

// Date values
const creationDate = tp.date.now("YYYY-MM-DD");
const year = tp.date.now("YYYY");
-%>
---
creation_date: <% creationDate %>
modification_date: <% creationDate %>
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Readme
  - Type/Code
  - Topic/Meta
  - Topic/Development
  - <% lang.tag %>
  - Status/Ongoing
aliases:
  - <% lang.name %> Code
  - <% lang.name %> Code Snippets
  - <% lang.name %> Code Readme
  - <% lang.name %> Code Index
publish: true
permalink:
description: Index of all <% lang.name %> code snippets and resources
cssclasses:
  - readme
  - code
---

# <% lang.name %> Code

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

- [[04-RESOURCES/Code/_README|Code Index]]

### Backlinks

```dataview
LIST FROM [[_README]] AND -"CHANGELOG" AND -"<% folderPath %>/_README"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% year %>

