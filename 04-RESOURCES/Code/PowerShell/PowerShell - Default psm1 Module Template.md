---
creation_date: 2024-05-03
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Status/Complete
aliases:
  - Default psm1 Module Template
  - PowerShell Module Template
description: Template for creating PowerShell module files with Public/Private function structure
cssclasses:
  - code
---

# Default psm1 Module Template

> [!info] Code Properties
> - **Language**: PowerShell
> - **Type**: Module Template (.psm1)

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

A standard template for PowerShell module files (.psm1) that automatically imports functions from Public and Private directories and exports only the public functions.

## Code

```powershell
# MyModule.psm1

$PublicDir = Join-Path $PSScriptRoot "Public"
$PrivateDir = Join-Path $PSScriptRoot "Private"
$Public = Get-ChildItem -Path "$PublicDir\*.ps1"
$Private = Get-ChildItem -Path "$PrivateDir\*.ps1"

@($Public + $Private) | ForEach-Object {
    try {
        . $_.FullName
    } catch {
        Write-Error -Message "Failed to import function $($_.FullName): $_"
    }
}

Export-ModuleMember -Function $Public.BaseName
```

## Usage

Create a module folder structure:

```
MyModule/
├── MyModule.psd1    # Module manifest
├── MyModule.psm1    # Module script (use template above)
├── Public/          # Exported functions
│   ├── Get-Something.ps1
│   └── Set-Something.ps1
└── Private/         # Internal functions
    └── Helper-Function.ps1
```

***

## Appendix

*Note created on [[2024-05-03]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Default psm1 Module Template]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
