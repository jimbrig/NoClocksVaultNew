---
creation_date: 2024-09-18
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Check CPU Battery Status
  - PowerShell Battery Status
description: PowerShell script to check CPU battery status including charge level and time to full charge
cssclasses:
  - code
---

# Check CPU Battery Status

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-CimInstance`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

PowerShell script that retrieves battery status information using WMI/CIM, including current charge percentage, charging status, and estimated time to full charge.

## Code

```powershell
$b = Get-CimInstance Win32_Battery

$batteryStatus = (@{
    1 = 'Discharging'
    2 = 'Connected to AC'
    3 = 'Fully charged'
    4 = 'Low'
    5 = 'Critical'
    6 = 'Charging'
    7 = 'Charging/High'
    8 = 'Charging/Low'
    9 = 'Charging/Critical'
   10 = 'Undefined'
   11 = 'Partially Charged'
})[$b.batteryStatus -as [int]]

"$($b.caption) $($b.name): $($b.status)"
"  Status:              $batteryStatus ($($b.batteryStatus))"
"  Charged:             $($b.estimatedChargeRemaining) %"

if ($b.timeToFullCharge) {
    "  Time to full charge: $($b.timeToFullCharge) Minutes"
}
```

## Usage

Run the script directly in a PowerShell session to get current battery information:

```powershell
.\Get-BatteryStatus.ps1
```

***

## Appendix

*Note created on [[2024-09-18]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Check CPU Battery Status]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
