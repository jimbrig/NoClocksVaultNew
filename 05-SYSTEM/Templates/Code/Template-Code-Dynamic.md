<%*
// Template-Code-Dynamic.md
// Unified code template that auto-detects language from folder or filename
// and scaffolds a complete code note matching vault conventions

const fileName = tp.file.title;
const folderPath = tp.file.folder(true);
const folderName = tp.file.folder(false);

// language configuration: name, tag, codeBlockLang, mocName
const languageConfig = {
  "r": { name: "R", tag: "Topic/R", codeBlock: "r", moc: "MOC - R" },
  "python": { name: "Python", tag: "Topic/Python", codeBlock: "python", moc: "MOC - Python" },
  "powershell": { name: "PowerShell", tag: "Topic/PowerShell", codeBlock: "powershell", moc: "MOC - PowerShell" },
  "bash": { name: "Bash", tag: "Topic/Bash", codeBlock: "bash", moc: "MOC - Bash" },
  "javascript": { name: "JavaScript", tag: "Topic/JavaScript", codeBlock: "javascript", moc: "MOC - JavaScript" },
  "typescript": { name: "TypeScript", tag: "Topic/TypeScript", codeBlock: "typescript", moc: "MOC - TypeScript" },
  "sql": { name: "SQL", tag: "Topic/SQL", codeBlock: "sql", moc: "MOC - SQL" },
  "html": { name: "HTML", tag: "Topic/HTML", codeBlock: "html", moc: "MOC - HTML" },
  "css": { name: "CSS", tag: "Topic/CSS", codeBlock: "css", moc: "MOC - CSS" },
  "react": { name: "React", tag: "Topic/React", codeBlock: "jsx", moc: "MOC - React" },
  "go": { name: "Go", tag: "Topic/Go", codeBlock: "go", moc: "MOC - Go" },
  "golang": { name: "Go", tag: "Topic/Go", codeBlock: "go", moc: "MOC - Go" },
  "rust": { name: "Rust", tag: "Topic/Rust", codeBlock: "rust", moc: "MOC - Rust" },
  "ruby": { name: "Ruby", tag: "Topic/Ruby", codeBlock: "ruby", moc: "MOC - Ruby" },
  "php": { name: "PHP", tag: "Topic/PHP", codeBlock: "php", moc: "MOC - PHP" },
  "java": { name: "Java", tag: "Topic/Java", codeBlock: "java", moc: "MOC - Java" },
  "csharp": { name: "C#", tag: "Topic/CSharp", codeBlock: "csharp", moc: "MOC - CSharp" },
  "cpp": { name: "C++", tag: "Topic/CPP", codeBlock: "cpp", moc: "MOC - CPP" },
  "c": { name: "C", tag: "Topic/C", codeBlock: "c", moc: "MOC - C" },
  "yaml": { name: "YAML", tag: "Topic/YAML", codeBlock: "yaml", moc: "MOC - YAML" },
  "json": { name: "JSON", tag: "Topic/JSON", codeBlock: "json", moc: "MOC - JSON" },
  "markdown": { name: "Markdown", tag: "Topic/Markdown", codeBlock: "markdown", moc: "MOC - Markdown" },
  "cmd": { name: "Command Line", tag: "Topic/CMD", codeBlock: "batch", moc: "MOC - CMD" },
  "batch": { name: "Batch", tag: "Topic/Batch", codeBlock: "batch", moc: "MOC - CMD" },
  "vba": { name: "VBA", tag: "Topic/VBA", codeBlock: "vba", moc: "MOC - VBA" },
  "terraform": { name: "Terraform", tag: "Topic/Terraform", codeBlock: "hcl", moc: "MOC - Terraform" },
  "registry": { name: "Windows Registry", tag: "Topic/Registry", codeBlock: "registry", moc: "MOC - Windows" },
  "powerquery": { name: "Power Query M", tag: "Topic/PowerQuery", codeBlock: "powerquery", moc: "MOC - PowerQuery" },
  "appsscript": { name: "Google Apps Script", tag: "Topic/AppsScript", codeBlock: "javascript", moc: "MOC - AppsScript" },
  "autohotkey": { name: "AutoHotKey", tag: "Topic/AutoHotKey", codeBlock: "autohotkey", moc: "MOC - AutoHotKey" },
  "lua": { name: "Lua", tag: "Topic/Lua", codeBlock: "lua", moc: "MOC - Lua" },
  "perl": { name: "Perl", tag: "Topic/Perl", codeBlock: "perl", moc: "MOC - Perl" },
  "swift": { name: "Swift", tag: "Topic/Swift", codeBlock: "swift", moc: "MOC - Swift" },
  "kotlin": { name: "Kotlin", tag: "Topic/Kotlin", codeBlock: "kotlin", moc: "MOC - Kotlin" },
  "scala": { name: "Scala", tag: "Topic/Scala", codeBlock: "scala", moc: "MOC - Scala" },
  "docker": { name: "Docker", tag: "Topic/Docker", codeBlock: "dockerfile", moc: "MOC - Docker" },
  "dockerfile": { name: "Docker", tag: "Topic/Docker", codeBlock: "dockerfile", moc: "MOC - Docker" }
};

// alias map for common variations
const languageAliases = {
  "js": "javascript",
  "ts": "typescript",
  "py": "python",
  "ps": "powershell",
  "ps1": "powershell",
  "sh": "bash",
  "shell": "bash",
  "cs": "csharp",
  "c#": "csharp",
  "c++": "cpp",
  "md": "markdown",
  "hcl": "terraform",
  "m": "powerquery"
};

let language = "";
let languageKey = "";

// step 1: try to detect from folder path (most reliable when in 04-RESOURCES/Code/{Language}/)
const codePathMatch = folderPath.match(/04-RESOURCES\/Code\/([^\/]+)/i);
if (codePathMatch) {
  const folderLang = codePathMatch[1].toLowerCase();
  languageKey = languageAliases[folderLang] || folderLang;
  if (languageConfig[languageKey]) {
    language = languageKey;
  }
}

// step 2: try to detect from filename prefix (e.g., "R - Script Name" or "PowerShell - Script")
if (!language) {
  const prefixMatch = fileName.match(/^([A-Za-z#\+]+)\s*-\s*/);
  if (prefixMatch) {
    const prefix = prefixMatch[1].toLowerCase().replace("#", "sharp").replace(/\+/g, "p");
    languageKey = languageAliases[prefix] || prefix;
    if (languageConfig[languageKey]) {
      language = languageKey;
    }
  }
}

// step 3: prompt user if not detected
if (!language) {
  const languageChoices = [
    "R", "Python", "PowerShell", "Bash", "JavaScript", "TypeScript",
    "SQL", "HTML", "CSS", "React", "Go", "Rust", "Ruby", "PHP",
    "Java", "C#", "C++", "C", "YAML", "JSON", "Markdown",
    "Docker", "Terraform", "Lua", "VBA", "AutoHotKey"
  ];
  const languageValues = [
    "r", "python", "powershell", "bash", "javascript", "typescript",
    "sql", "html", "css", "react", "go", "rust", "ruby", "php",
    "java", "csharp", "cpp", "c", "yaml", "json", "markdown",
    "docker", "terraform", "lua", "vba", "autohotkey"
  ];

  language = await tp.system.suggester(languageChoices, languageValues);
  if (!language) language = "javascript";
}

// get language config
const config = languageConfig[language] || {
  name: language.charAt(0).toUpperCase() + language.slice(1),
  tag: `Topic/${language.charAt(0).toUpperCase() + language.slice(1)}`,
  codeBlock: language,
  moc: `MOC - ${language.charAt(0).toUpperCase() + language.slice(1)}`
};

// extract description from filename (remove language prefix if present)
let description = fileName;
const descMatch = fileName.match(/^[A-Za-z#\+]+\s*-\s*(.+)$/);
if (descMatch) {
  description = descMatch[1].trim();
}

// generate aliases
const aliases = [fileName];
if (description !== fileName) {
  aliases.push(description);
}

// dates
const creationDate = tp.date.now("YYYY-MM-DD");
const year = tp.date.now("YYYY");

// build the template output
tR += `---
creation_date: ${creationDate}
modification_date: ${creationDate}
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - ${config.tag}
  - Status/WIP
aliases:
  - ${aliases.join("\n  - ")}
publish: true
permalink:
description: 
cssclasses:
  - code
---

# ${fileName}

> [!info] Code Properties
> - **Language**: ${config.name}
> - **Packages**: *List dependencies here*

\`\`\`table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
\`\`\`

## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

\`\`\`${config.codeBlock}

\`\`\`

## Usage

How to use this code:

\`\`\`${config.codeBlock}

\`\`\`

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [[${creationDate}]] and last modified on [[${creationDate}]].*

### See Also

- [[04-RESOURCES/Code/${config.name}/_README|${config.name} Code Index]]
- [[03-AREAS/${config.moc}|${config.name} Map of Content]]

### Backlinks

\`\`\`dataview
LIST FROM [[${fileName}]] AND -"CHANGELOG"
\`\`\`

***

(c) [No Clocks, LLC](https://github.com/noclocks) | ${year}
`;
%>
