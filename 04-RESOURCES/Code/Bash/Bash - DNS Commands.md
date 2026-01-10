---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Topic/Networking
  - Status/Complete
aliases:
  - DNS Commands
  - nslookup Examples
publish: true
permalink:
description: "Common DNS lookup commands using nslookup and related utilities."
cssclasses:
  - code
---

# DNS Commands
## Overview

Common DNS lookup and troubleshooting commands for network diagnostics.

## Code

### nslookup

```bash
# query nameserver for domain IP (bypasses cache)
nslookup [domain.com] [ns server]

# check local IP cache
nslookup [domain.com]

# see debug information (TTL, etc.)
nslookup -debug [domain.com]
```

### Clear DNS Cache

```bash
# linux (ubuntu/debian)
sudo apt-get install nscd
sudo /etc/init.d/nscd restart

# alternative using systemd-resolved
sudo systemd-resolve --flush-caches

# windows
ipconfig /flushdns
```

### dig Commands

```bash
# basic lookup
dig example.com

# query specific record type
dig example.com MX
dig example.com TXT
dig example.com A
dig example.com AAAA

# short output
dig +short example.com

# query specific nameserver
dig @8.8.8.8 example.com

# trace DNS resolution path
dig +trace example.com
```

***

## Appendix

*Note created on [2025-12-23](2025-12-23.md) and last modified on [2025-12-23](2025-12-23.md).*

### See Also

- [Bash - Using dig for Email DNS Analysis](Bash - Using dig for Email DNS Analysis.md)
- [Bash Code](04-RESOURCES/Code/Bash/README.md)
- [Linux](Linux.md)
- [Windows Subsystem for Linux (WSL)](Windows Subsystem for Linux (WSL).md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025




