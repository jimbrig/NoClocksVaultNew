---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Status/Complete
aliases:
  - Bash Logging Functions
  - Shell Logging Utilities
publish: true
permalink:
description: "Reusable logging functions for Bash scripts with priority levels."
cssclasses:
  - code
---

# Logging Functions
## Overview

Reusable logging functions for Bash scripts with support for log levels and formatted output.

## Code

### Log Message Prefixes

```bash
#!/bin/sh
set -e

# prints the script name
log_prefix() {
  echo "$0"
}

# prints script name and line number
log_prefix_line() {
  echo "$0:$1"
}

# prints script name, line number, and function name
log_prefix_line_func() {
  echo "$0:$1:$2"
}

# prints timestamp, script name, line number, and function name
log_prefix_line_func_date() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') $0:$1:$2"
}
```

### Priority-Based Logging

```bash
#!/bin/sh
set -e

# default priority is 6 (INFO)
DEFAULT_PRIORITY=6

log_set_priority() {
  DEFAULT_PRIORITY="$1"
}

log_priority() {
  if test -z "$1"; then
    echo "$DEFAULT_PRIORITY"
    return
  fi
  [ "$1" -le "$DEFAULT_PRIORITY" ]
}

log_tag() {
  case "$1" in
    0) echo "EMERG" ;;
    1) echo "ALERT" ;;
    2) echo "CRIT" ;;
    3) echo "ERR" ;;
    4) echo "WARNING" ;;
    5) echo "NOTICE" ;;
    6) echo "INFO" ;;
    7) echo "DEBUG" ;;
    *) echo "UNKNOWN" ;;
  esac
}

echoerr() {
  echo "$@" >&2
}

log_debug() {
  log_priority 7 || return 0
  echoerr "$(log_prefix)" "$(log_tag 7)" "$@"
}

log_info() {
  log_priority 6 || return 0
  echoerr "$(log_prefix)" "$(log_tag 6)" "$@"
}

log_err() {
  log_priority 3 || return 0
  echoerr "$(log_prefix)" "$(log_tag 3)" "$@"
}

log_crit() {
  log_priority 2 || return 0
  echoerr "$(log_prefix)" "$(log_tag 2)" "$@"
}
```

### Usage Example

```bash
#!/bin/sh
. ./logging.sh

# set log level to DEBUG (7) to see all messages
log_set_priority 7

log_debug "Starting script..."
log_info "Processing files..."
log_err "Something went wrong!"
log_crit "Critical failure!"
```

## Details

### Log Levels (Syslog Standard)

| Level | Tag     | Description                  |
| ----- | ------- | ---------------------------- |
| 0     | EMERG   | System is unusable           |
| 1     | ALERT   | Action must be taken         |
| 2     | CRIT    | Critical conditions          |
| 3     | ERR     | Error conditions             |
| 4     | WARNING | Warning conditions           |
| 5     | NOTICE  | Normal but significant       |
| 6     | INFO    | Informational messages       |
| 7     | DEBUG   | Debug-level messages         |

Messages are only printed if their priority level is less than or equal to the configured `DEFAULT_PRIORITY`.

***

## Appendix

*Note created on [2025-12-23](2025-12-23.md) and last modified on [2025-12-23](2025-12-23.md).*

### See Also

- [Bash Code](04-RESOURCES/Code/Bash/README.md)
- [Linux](Linux.md)
- [Windows Subsystem for Linux (WSL)](Windows Subsystem for Linux (WSL).md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025




