---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Check if Directory Exists with Bash
publish: true
permalink:
description: "Example Bash Code for checking if a directory exists."
cssclasses:
  - code
---

# Check if Directory Exists

```table-of-contents
title: ## Contents 
style: nestedList
minLevel: 1
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[How do I check if a directory exists or not in a Bash shell script? - Stack Overflow](https://stackoverflow.com/questions/59838/how-do-i-check-if-a-directory-exists-or-not-in-a-bash-shell-script)*

## Code

```bash
#!/usr/bin/env bash

# Check if a directory exists
if [ -d "$DIRECTORY" ]; then
  echo "$DIRECTORY does exist."
else
  echo "$DIRECTORY does not exist."
fi

# Taking into account symbolic links
if [ -d "$LINK_OR_DIR" ]; then
  if [ -L "$LINK_OR_DIR" ]; then
    # It is a symlink!
    # Symbolic link specific commands go here.
    rm "$LINK_OR_DIR"
  else
    # It's a directory!
    # Directory command goes here.
    rmdir "$LINK_OR_DIR"
  fi
fi
```

## Details

This script is written in Bash, a popular shell scripting language used in Unix-based systems. The script checks if a directory or a symbolic link exists and performs actions based on the result.

The first line `#!/usr/bin/env bash` is called a shebang. It tells the system that this script should be run using Bash.

The script first checks if a directory exists. The `-d` flag in the `if` statement checks if the `$DIRECTORY` exists and is a directory. If it does, it prints a message saying that the directory exists. If it doesn't, it prints a message saying that the directory does not exist.

The script then checks if a directory or a symbolic link exists. The `-d` flag checks if the `$LINK_OR_DIR` exists and is a directory. If it does, it then checks if it's a symbolic link using the `-L` flag. If it is a symbolic link, it removes the symbolic link using the `rm` command. If it's not a symbolic link (meaning it's a regular directory), it removes the directory using the `rmdir` command.

Note that the `rm` command is used to remove files and symbolic links, while the `rmdir` command is used to remove empty directories. If the directory is not empty, you would need to use `rm -r` to remove it and all of its contents. Be careful when using these commands, as they permanently delete files and directories.


***

## Appendix

*Note created on [[2025-12-23]] and last modified on [[2025-12-23]].*

### See Also

- [[04-RESOURCES/Code/Bash/_README|Bash Code]]
- [[Linux]]
- [[Windows Subsystem for Linux (WSL)]]

### Backlinks

```dataview
LIST FROM [[Bash - Check if Directory Exists]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025

