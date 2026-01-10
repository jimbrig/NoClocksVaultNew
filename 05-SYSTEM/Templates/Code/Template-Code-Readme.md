<%*
// Template-Code-Readme.md
// For language-specific code folder READMEs
// Automatically detects language from folder name

const folderPath = tp.file.folder(true);
const folderName = tp.file.folder(false);

// language configuration: name, tag
const languageConfig = {
  "R": { name: "R", tag: "Topic/R" },
  "Python": { name: "Python", tag: "Topic/Python" },
  "PowerShell": { name: "PowerShell", tag: "Topic/PowerShell" },
  "Bash": { name: "Bash", tag: "Topic/Bash" },
  "JavaScript": { name: "JavaScript", tag: "Topic/JavaScript" },
  "TypeScript": { name: "TypeScript", tag: "Topic/TypeScript" },
  "SQL": { name: "SQL", tag: "Topic/SQL" },
  "HTML": { name: "HTML", tag: "Topic/HTML" },
  "CSS": { name: "CSS", tag: "Topic/CSS" },
  "React": { name: "React", tag: "Topic/React" },
  "Go": { name: "Go", tag: "Topic/Go" },
  "Golang": { name: "Go", tag: "Topic/Go" },
  "Rust": { name: "Rust", tag: "Topic/Rust" },
  "Ruby": { name: "Ruby", tag: "Topic/Ruby" },
  "PHP": { name: "PHP", tag: "Topic/PHP" },
  "Java": { name: "Java", tag: "Topic/Java" },
  "CSharp": { name: "C#", tag: "Topic/CSharp" },
  "Cmd": { name: "Command Line", tag: "Topic/CMD" },
  "CMD": { name: "Command Line", tag: "Topic/CMD" },
  "VBA": { name: "VBA", tag: "Topic/VBA" },
  "Terraform": { name: "Terraform", tag: "Topic/Terraform" },
  "Registry": { name: "Windows Registry", tag: "Topic/Registry" },
  "PowerQuery": { name: "Power Query M", tag: "Topic/PowerQuery" },
  "AppsScript": { name: "Google Apps Script", tag: "Topic/AppsScript" },
  "AutoHotKey": { name: "AutoHotKey", tag: "Topic/AutoHotKey" },
  "Docker": { name: "Docker", tag: "Topic/Docker" },
  "Lua": { name: "Lua", tag: "Topic/Lua" },
  "Perl": { name: "Perl", tag: "Topic/Perl" },
  "Swift": { name: "Swift", tag: "Topic/Swift" },
  "Kotlin": { name: "Kotlin", tag: "Topic/Kotlin" }
};

// get language info or default from folder name
const lang = languageConfig[folderName] || {
  name: folderName,
  tag: `Topic/${folderName}`
};

const creationDate = tp.date.now("YYYY-MM-DD");
const year = tp.date.now("YYYY");
-%>
---
creation_date: <% creationDate %>
modification_date: <% creationDate %>
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Readme
  - Type/Code
  - Topic/Meta
  - <% lang.tag %>
  - Status/Ongoing
aliases:
  - <% lang.name %> Code
  - <% lang.name %> Code Snippets
  - <% lang.name %> Code Index
publish: true
permalink:
description: Index of all <% lang.name %> code snippets and resources
cssclasses:
  - readme
  - code
---

# <% lang.name %> Code
## Overview

> [!NOTE] About
> This note serves as an index for all notes under the `<% folderPath %>` directory.

## Index

> [!tip] Note Count
> *Currently, there are  individual notes in this folder.*
<!-- dynamic content -->
***

## Appendix

*Note created on [<% creationDate %>](<% creationDate %>.md) and last modified on [<% creationDate %>](<% creationDate %>.md).*

### See Also

- [Code Index](04-RESOURCES/Code/README.md)
- [<% lang.name %> Map of Content](03-AREAS/MOC - <% lang.name %>.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | <% year %>
