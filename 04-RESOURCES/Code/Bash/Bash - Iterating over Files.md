---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Iterating over Files
  - Loop Through Files in Bash
publish: true
permalink:
description: "Different methods for iterating over files in a directory using Bash."
cssclasses:
  - code
---

# Iterating over Files

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

Common techniques for looping through files in a directory using Bash.

## Code

### Using For Loop with Wildcard

```bash
for file in /path/to/directory/*; do
    echo "$file"
done
```

### Using For Loop with Find

```bash
for file in $(find /path/to/directory -type f); do
    echo "$file"
done
```

> [!WARNING]
> This method will not handle filenames with spaces correctly.

### Using While Loop with Find (Safe)

```bash
find /path/to/directory -type f | while read -r file; do
    echo "$file"
done
```

### Using Find with Null Delimiter (Safest)

```bash
find /path/to/directory -type f -print0 | while IFS= read -r -d '' file; do
    echo "$file"
done
```

This handles filenames with spaces, newlines, and special characters.

### Using Glob with Nullglob

```bash
shopt -s nullglob
for file in /path/to/directory/*.txt; do
    echo "$file"
done
shopt -u nullglob
```

The `nullglob` option prevents the loop from running if no files match.

### Recursive Iteration

```bash
# using globstar (bash 4+)
shopt -s globstar
for file in /path/to/directory/**/*; do
    [ -f "$file" ] && echo "$file"
done
shopt -u globstar

# using find
find /path/to/directory -type f -name "*.txt" | while read -r file; do
    echo "$file"
done
```

## Details

| Method           | Handles Spaces | Recursive | Notes                      |
| ---------------- | -------------- | --------- | -------------------------- |
| For + wildcard   | Yes            | No        | Simple, most common        |
| For + find       | No             | Yes       | Avoid for filenames spaces |
| While + find     | Yes            | Yes       | Recommended                |
| Find + print0    | Yes            | Yes       | Safest for special chars   |

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[Bash - Control Flow]]
- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Iterating over Files]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025




