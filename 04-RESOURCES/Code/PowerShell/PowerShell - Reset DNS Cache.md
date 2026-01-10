---
creation_date: 2024-09-27
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Topic/Networking
  - Status/Complete
aliases:
  - Reset DNS Cache
  - Flush DNS Cache
description: PowerShell commands to reset DNS cache and network settings on Windows
cssclasses:
  - code
---

# Reset DNS Cache

> [!info] Code Properties
> - **Language**: PowerShell/CMD
> - **Tools**: `ipconfig`, `nbtstat`, `netsh`
## Overview

Commands to flush DNS cache and reset network settings on Windows. Useful for resolving DNS-related connectivity issues.

## Code

```powershell
ipconfig /flushdns
nbtstat -R
nbtstat -RR
netsh int reset all
netsh int ip reset
netsh winsock reset
```

## Usage

Run commands as Administrator:

```powershell
# flush DNS resolver cache
ipconfig /flushdns

# purge NetBIOS name cache
nbtstat -R

# release and refresh NetBIOS names
nbtstat -RR

# reset all network interfaces
netsh int reset all

# reset TCP/IP stack
netsh int ip reset

# reset Winsock catalog
netsh winsock reset

# restart computer to complete reset
Restart-Computer -Force
```

***

## Appendix

*Note created on [2024-09-27](2024-09-27.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
