---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Status/Complete
aliases:
  - Find and Update PSModules
  - PowerShell Module Updates
description: PowerShell script to check for updates to installed PowerShell modules from PSGallery
cssclasses:
  - code
---

# Find and Update PSModules

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-InstalledModule`, `Find-Module`
## Overview

> [!SOURCE] Sources:
> - *[Find-ModuleUpdates.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20PowerShell%20modules%20updates/Find-ModuleUpdates.ps1)*

Script to check all installed PowerShell modules against PSGallery for available updates. Handles the PSGallery 63-module limit by batching requests.

## Code

```powershell
param (
    [Parameter(Mandatory = $false)][string]$NameFilter = '*'
)

# retrieve all installed modules
Write-Host ("Retrieving installed PowerShell modules") -ForegroundColor Green
[array]$InstalledModules = Get-InstalledModule -Name $NameFilter -ErrorAction SilentlyContinue

# retrieve current versions (63 at a time due to PSGallery limit)
if ($InstalledModules.Count -eq 1) {
    $onlineversions = $null
    Write-Host ("Checking online versions for installed module {0}" -f $name) -ForegroundColor Green
    $currentversions = Find-Module -Name $CurrentModules.name
    $onlineversions = $onlineversions + $currentversions
}

if ($InstalledModules.Count -gt 1) {
    $startnumber = 0
    $endnumber = 62
    $onlineversions = $null
    while ($InstalledModules.Count -gt $onlineversions.Count) {
        Write-Host ("Checking online versions for installed modules [{0}..{1}/{2}]" -f $startnumber, $endnumber, $InstalledModules.Count) -ForegroundColor Green
        $currentversions = Find-Module -Name $InstalledModules.name[$startnumber..$endnumber]
        $startnumber = $startnumber + 63
        $endnumber = $endnumber + 63
        $onlineversions = $onlineversions + $currentversions
    }
}

if (-not $onlineversions) {
    Write-Warning ("No modules were found to check for updates, please check your NameFilter. Exiting...")
    return
}

# loop through modules and check for newer versions
$number = 1
Write-Host ("Checking for updated versions") -ForegroundColor Green
$total = foreach ($module in $InstalledModules) {
    Write-Progress ("[{0}/{1}] Checking module {2}" -f $number, $InstalledModules.count, $module.name)
    try {
        $PsgalleryModule = $onlineversions | Where-Object name -eq $module.Name
        if ([version]$module.version -lt [version]$PsgalleryModule.version) {
            [PSCustomObject]@{
                Repository          = $module.Repository
                'Module name'       = $module.Name
                'Installed version' = $module.Version
                'Latest version'    = $PsgalleryModule.version
                'Published on'      = $PsgalleryModule.PublishedDate
            }
        }
    }
    catch {
        Write-Warning ("Could not find module {0}" -f $module.Name)
    }
    $number++
}

# output results
if ($total.Count -gt 0) {
    Write-Host ("Found {0} updated modules" -f $total.Count) -ForegroundColor Green
    $total | Format-Table -AutoSize
}
else {
    Write-Host ("No updated modules were found")
}
```

## Usage

```powershell
# check all installed modules
./Find-ModuleUpdates.ps1

# check specific modules (e.g., Graph modules)
./Find-ModuleUpdates.ps1 -NameFilter "*Graph*"
```

***

## Appendix

*Note created on [2024-05-08](2024-05-08.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Status/WIP
aliases:
  - PowerShell - Find and Update PSModules
publish: true
permalink:
description:
cssclasses:
  - code
---

# PowerShell - Find and Update PSModules

> [!info] Code Properties
> - **Language**: 
> - **Packages**: 
## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

```
# code goes here
```

## Usage

How to use this code:

```
# usage example
```

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [2025-12-31](2025-12-31.md) and last modified on [2025-12-31](2025-12-31.md).*

### See Also

- [Code Index](04-RESOURCES/Code/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
