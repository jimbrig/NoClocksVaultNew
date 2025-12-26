---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Bash Control Flow
  - Control Flow in Bash
publish: true
permalink:
description: "Reference for control flow statements in Bash scripting."
cssclasses:
  - code
---

# Control Flow

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

Control flow statements in Bash scripting allow you to control the execution of your script based on conditions and loops.

## Code

### If Statement

The `if` statement tests a condition and executes a block of code if the condition is true.

```bash
if [ condition ]; then
    # code to execute if condition is true
fi
```

### If-Else Statement

The `if-else` statement executes different code blocks based on whether the condition is true or false.

```bash
if [ condition ]; then
    # code to execute if condition is true
else
    # code to execute if condition is false
fi
```

### Elif Statement

The `elif` (else if) statement allows you to test multiple conditions.

```bash
if [ condition1 ]; then
    # code to execute if condition1 is true
elif [ condition2 ]; then
    # code to execute if condition2 is true
else
    # code to execute if both conditions are false
fi
```

### For Loop

The `for` loop repeats a block of code for each item in a list.

```bash
for variable in list; do
    # code to execute for each item in the list
done
```

### While Loop

The `while` loop repeats a block of code as long as a condition is true.

```bash
while [ condition ]; do
    # code to execute while condition is true
done
```

### Case Statement

The `case` statement matches a variable against patterns and executes different code for each match.

```bash
case variable in
pattern1)
    # code to execute if variable matches pattern1
    ;;
pattern2)
    # code to execute if variable matches pattern2
    ;;
*)
    # default case
    ;;
esac
```

## Details

The conditions in these control flow statements are tested using test constructs:

- `[ condition ]` - Traditional test syntax (POSIX compliant)
- `[[ condition ]]` - Modern Bash syntax with more features (regex, pattern matching)

The double bracket `[[ ]]` construct is preferred in Bash as it supports more complex conditions and regular expressions.

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[Bash - Check if Directory Exists]]
- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Control Flow]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025



