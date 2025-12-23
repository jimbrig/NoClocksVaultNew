---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Find Most Used Commands from History
  - Shell History Statistics
publish: true
permalink:
description: "Bash one-liners to find the most frequently used commands from shell history."
cssclasses:
  - code
---

# Find Most Used Commands from History

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Find Most Used Terminal Commands - adamsdesk](https://www.adamsdesk.com/posts/find-most-used-terminal-commands/)*

One-liners to analyze your shell history and find your most frequently used commands.

## Code

### Basic Approaches

```bash
# method 1: handles piped commands
history | awk 'BEGIN {FS="[ \t]+|\\|"} {print $3}' | sort | uniq -c | sort -nr | head -n25

# method 2: simple approach
history | awk '{print $2}' | sort | uniq -c | sort -nr | head -n25

# method 3: using associative array
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -nr | head -n25
```

### Command Statistics with Percentages

This function outputs line number, usage count, percentage, and command name:

```bash
shstats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n25
}
```

Example output:

```
     1  469  12.4967%    cd
     2  232  6.18172%    ls
     3  197  5.24913%    docker
     4  175  4.66294%    poetry
     5  165  4.39648%    git
     6  124  3.30402%    dnscontrol
     7  112  2.98428%    gh
     8  109  2.90434%    pip
     9  95   2.53131%    brew
    10  87   2.31815%    mkdir
```

## Details

- The `fc` command is a built-in in Bash and Zsh that lists command history
- `fc -l 1` lists all commands from history entry 1 to the current
- Results are sorted by frequency in descending order
- `head -n25` limits output to top 25 commands

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Find Most Used Commands from History]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025

