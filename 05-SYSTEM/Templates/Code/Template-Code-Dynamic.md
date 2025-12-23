<%*
// dynamic code template - detects language from filename or prompts user

let fileName = tp.file.title;
let language = "";

// extract language from filename if present (e.g., "R - My Script" or "My-Code-python")
const fileNameLower = fileName.toLowerCase();
if (fileName.startsWith("R -") || fileName.startsWith("R-")) {
  language = "r";
} else if (fileName.includes("-")) {
  const parts = fileName.split("-");
  const lastPart = parts[parts.length - 1].trim().toLowerCase();
  const validLanguages = [
    "javascript", "js", "python", "py", "r", "powershell", "ps", "ps1",
    "bash", "sh", "sql", "html", "css", "react", "batch", "vba",
    "registry", "typescript", "ts", "go", "rust", "ruby", "php",
    "java", "csharp", "cs", "cpp", "c", "yaml", "json", "xml", "markdown", "md"
  ];
  if (validLanguages.includes(lastPart)) {
    language = lastPart;
  }
}

// prompt user if not detected
if (!language) {
  const languageChoices = [
    "JavaScript", "TypeScript", "Python", "R", "PowerShell",
    "Bash", "SQL", "HTML", "CSS", "React",
    "Go", "Rust", "Ruby", "PHP", "Java",
    "C#", "C++", "C", "YAML", "JSON", "Markdown"
  ];

  language = await tp.system.suggester(
    languageChoices,
    languageChoices.map(l => l.toLowerCase().replace("#", "sharp").replace("++", "pp"))
  );

  if (!language) language = "javascript";
}

// normalize language names
const languageMap = {
  "js": "javascript",
  "ts": "typescript",
  "py": "python",
  "ps": "powershell",
  "ps1": "powershell",
  "sh": "bash",
  "cs": "csharp",
  "c#": "csharp",
  "c++": "cpp",
  "md": "markdown"
};

language = languageMap[language] || language;

// language display names and tags
const langInfo = {
  "javascript": { name: "JavaScript", tag: "Topic/JavaScript" },
  "typescript": { name: "TypeScript", tag: "Topic/TypeScript" },
  "python": { name: "Python", tag: "Topic/Python" },
  "r": { name: "R", tag: "Topic/R" },
  "powershell": { name: "PowerShell", tag: "Topic/PowerShell" },
  "bash": { name: "Bash", tag: "Topic/Bash" },
  "sql": { name: "SQL", tag: "Topic/SQL" },
  "html": { name: "HTML", tag: "Topic/HTML" },
  "css": { name: "CSS", tag: "Topic/CSS" },
  "react": { name: "React", tag: "Topic/React" },
  "go": { name: "Go", tag: "Topic/Go" },
  "rust": { name: "Rust", tag: "Topic/Rust" },
  "ruby": { name: "Ruby", tag: "Topic/Ruby" },
  "php": { name: "PHP", tag: "Topic/PHP" },
  "java": { name: "Java", tag: "Topic/Java" },
  "csharp": { name: "C#", tag: "Topic/CSharp" },
  "cpp": { name: "C++", tag: "Topic/CPP" },
  "c": { name: "C", tag: "Topic/C" },
  "yaml": { name: "YAML", tag: "Topic/YAML" },
  "json": { name: "JSON", tag: "Topic/JSON" },
  "markdown": { name: "Markdown", tag: "Topic/Markdown" }
};

const defaultInfo = {
  name: language.charAt(0).toUpperCase() + language.slice(1),
  tag: `Topic/${language.charAt(0).toUpperCase() + language.slice(1)}`
};

const info = langInfo[language] || defaultInfo;
const codeBlockLang = language === "react" ? "jsx" : language;
const creationDate = tp.date.now("YYYY-MM-DD");
const year = tp.date.now("YYYY");

tR += `---
creation_date: ${creationDate}
modification_date: ${creationDate}
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Code
  - ${info.tag}
  - Status/WIP
aliases:
  - ${tp.file.title}
publish: true
permalink:
description:
cssclasses:
  - code
---

# ${tp.file.title}

\`\`\`table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
\`\`\`

## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

\`\`\`${codeBlockLang}

\`\`\`

## Usage

How to use this code:

1.
2.
3.

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [[${creationDate}]] and last modified on [[${creationDate}]].*

### See Also

- [[03-AREAS/MOC - ${info.name}|${info.name} Map of Content]]

### Backlinks

\`\`\`dataview
LIST FROM [[${tp.file.title}]] AND -"CHANGELOG"
\`\`\`

***

(c) [No Clocks, LLC](https://github.com/noclocks) | ${year}
`;
%>
