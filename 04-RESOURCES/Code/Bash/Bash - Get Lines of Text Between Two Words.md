---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Get Lines of Text Between Two Words
  - Extract Text Between Patterns
publish: true
permalink:
description: "Using sed and awk to extract lines between two patterns in Bash."
cssclasses:
  - code
---

# Get Lines of Text Between Two Words

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Print lines between 2 words | Today I Learned](https://til.bhupesh.me/shell/print-lines-between-two-words)*

Extract text between two patterns - useful for extracting changelog entries, log sections, or any delimited content.

## Code

### Using sed

```bash
# extract lines between two patterns (excluding the pattern lines)
sed -n -e '/PATTERN1/,/PATTERN2/ p' file.txt | sed -e '1d;$d'
```

### Using awk

```bash
# extract lines between two patterns (excluding the pattern lines)
awk '/PATTERN1/,/PATTERN2/' file.txt | awk 'NR>2 {print last} {last=$0}'
```

### Practical Example: Extract Latest Changelog

```bash
# extract content between latest version and previous version
sed -n -e '/## \[2.0.0\]/,/## \[1.0.0\]/ p' CHANGELOG.md | sed -e '1d;$d'

# or with awk
awk '/## \[2.0.0\]/,/## \[1.0.0\]/' CHANGELOG.md | awk 'NR>2 {print last} {last=$0}'
```

### Include Pattern Lines

```bash
# with sed (include both pattern lines)
sed -n '/PATTERN1/,/PATTERN2/p' file.txt

# with awk (include both pattern lines)
awk '/PATTERN1/,/PATTERN2/' file.txt
```

## Details

### sed Explanation

- `sed -n` - Suppress automatic printing
- `/PATTERN1/,/PATTERN2/ p` - Print lines from PATTERN1 to PATTERN2
- `sed -e '1d;$d'` - Delete first and last line (the pattern lines)

### awk Explanation

- `/PATTERN1/,/PATTERN2/` - Range pattern matching
- `NR` - Current line number being processed
- `NR>2 {print last}` - Print previous line (skips first line)
- `{last=$0}` - Store current line for next iteration

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Get Lines of Text Between Two Words]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025



