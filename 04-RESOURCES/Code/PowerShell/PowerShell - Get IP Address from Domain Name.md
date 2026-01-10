---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Networking
  - Status/Complete
aliases:
  - Get IP Address from Domain Name
  - PowerShell DNS Lookup
description: PowerShell commands to resolve domain names to IP addresses and perform reverse lookups
cssclasses:
  - code
---

# Get IP Address from Domain Name

> [!info] Code Properties
> - **Language**: PowerShell
> - **Class**: `System.Net.Dns`
## Overview

Simple PowerShell commands using .NET DNS class to resolve domain names to IP addresses and perform reverse lookups.

## Code

Get IP address from domain name:

```powershell
[System.Net.Dns]::GetHostAddresses('noclocks.dev').IPAddressToString
```

Reverse lookup - get hostname from IP address:

```powershell
[System.Net.Dns]::GetHostByAddress('172.12.34.56')
```

## Usage

```powershell
# resolve domain to IP
$ip = [System.Net.Dns]::GetHostAddresses('google.com').IPAddressToString
Write-Host "IP Address: $ip"

# reverse lookup
$hostInfo = [System.Net.Dns]::GetHostByAddress('8.8.8.8')
Write-Host "Hostname: $($hostInfo.HostName)"
```

***

## Appendix

*Note created on [2024-05-08](2024-05-08.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)
- [PowerShell - Get Email DNS Records](PowerShell - Get Email DNS Records.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
