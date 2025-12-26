---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Bash Trap Command
  - Signal Handling in Bash
publish: true
permalink:
description: "Using the trap command for signal handling in Bash scripts."
cssclasses:
  - code
---

# Trap Command

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

The `trap` command catches signals and interruptions in your script to handle unexpected events gracefully.

**Syntax:** `trap <arg/function> <signal>`

## Code

### Basic Example

```bash
#!/bin/bash

# trap Ctrl+C (SIGINT) and SIGTERM
trap "echo Booh!" SIGINT SIGTERM

echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true; do
    sleep 60
done
```

### Using a Function

```bash
#!/bin/bash

cleanup() {
  echo "Cleaning up..."
  rm -f /tmp/mytempfile
  exit 0
}

trap cleanup SIGINT SIGTERM

# main script logic
while true; do
    sleep 60
done
```

### Common Use Cases

```bash
# cleanup temporary files on exit
trap "rm -f /tmp/tempfile; exit" 2 15

# cleanup on any exit (including normal)
trap "rm -rf $TMPDIR" EXIT

# ignore a signal
trap "" SIGINT

# reset trap to default behavior
trap - SIGINT
```

## Details

### Common Signals

| Number | Signal  | Description                              |
| ------ | ------- | ---------------------------------------- |
| 2      | SIGINT  | User sends interrupt (Ctrl+C)            |
| 3      | SIGQUIT | User sends quit (Ctrl+D)                 |
| 8      | SIGFPE  | Attempted illegal mathematical operation |
| 9      | SIGKILL | Kill (cannot be trapped)                 |
| 15     | SIGTERM | Termination signal                       |

List all available signals:

```bash
kill -l
```

You can use signal numbers instead of names:

```bash
# 2 = SIGINT, 15 = SIGTERM
trap cleanup 2 15
```

***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Trap Command]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025



