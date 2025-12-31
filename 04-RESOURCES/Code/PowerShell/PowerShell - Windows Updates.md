---
creation_date: 2024-05-03
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Windows Updates
  - PowerShell Windows Update
description: PowerShell script to install Windows updates using PSWindowsUpdate module
cssclasses:
  - code
---

# Windows Updates

> [!info] Code Properties
> - **Language**: PowerShell
> - **Modules**: `PSWindowsUpdate`
> - **Requires**: Administrator privileges

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

PowerShell script that uses the PSWindowsUpdate module to install all available Windows updates.

## Code

```powershell
#Requires -RunAsAdministrator

# transcript logging
$TranscriptFile = "$((Get-Date).ToString('yyyy-MM-dd-HHmmss'))-WindowsUpdate.log"
$TranscriptPath = Join-Path "$Env:TEMP\WindowsUpdate" $TranscriptFile
Start-Transcript -Path $TranscriptPath -ErrorAction Ignore | Out-Null

# execution policy
Set-ExecutionPolicy Unrestricted -Scope CurrentUser

# install PSWindowsUpdate if needed
if (!(Get-Module -ListAvailable -Name PSWindowsUpdate)) {
    Write-Verbose "Installing Module: PSWindowsUpdate..."
    Install-Module -Name PSWindowsUpdate -Scope CurrentUser -Force
}
Import-Module PSWindowsUpdate

# install updates
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -IgnoreReboot -ForceInstall

# restart
Write-Host "Restarting Machine in 20 seconds..."
Start-Sleep -Seconds 20
Restart-Computer -Force
```

## Usage

```powershell
# run as administrator
.\Install-WindowsUpdates.ps1

# or run commands individually
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -IgnoreReboot

# check for updates without installing
Get-WindowsUpdate

# list update history
Get-WUHistory
```

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Windows Updates]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
