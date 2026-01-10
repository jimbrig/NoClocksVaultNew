---
creation_date: 2024-05-03
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Networking
  - Status/Complete
aliases:
  - Set Proxy
  - PowerShell Web Proxy
description: PowerShell command to set default web proxy for .NET web requests
cssclasses:
  - code
---

# Set Proxy

> [!info] Code Properties
> - **Language**: PowerShell
> - **Class**: `System.Net.WebRequest`
## Overview

PowerShell command to set the default web proxy for .NET web requests, useful when behind a proxy server.

## Code

```powershell
[Net.WebRequest]::DefaultWebProxy = New-Object Net.WebProxy "http://127.0.0.1:7890"
```

## Usage

```powershell
# set proxy
[Net.WebRequest]::DefaultWebProxy = New-Object Net.WebProxy "http://proxy.example.com:8080"

# set proxy with credentials
$proxy = New-Object Net.WebProxy "http://proxy.example.com:8080"
$proxy.Credentials = [Net.CredentialCache]::DefaultCredentials
[Net.WebRequest]::DefaultWebProxy = $proxy

# clear proxy
[Net.WebRequest]::DefaultWebProxy = $null
```

***

## Appendix

*Note created on [2024-05-03](2024-05-03.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
