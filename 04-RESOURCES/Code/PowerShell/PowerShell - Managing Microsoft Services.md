---
creation_date: 2024-06-29
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Status/Complete
aliases:
  - Managing Microsoft Services
  - Service Review Tool
description: PowerShell script for reviewing, managing, and optimizing Windows services
cssclasses:
  - code
---

# Managing Microsoft Services

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-Service`, `Set-Service`, `Stop-Service`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

A comprehensive PowerShell tool for reviewing Windows services, providing recommendations, and applying optimizations. Includes backup and restore functionality.

## Code

### Backup Current Service States

```powershell
$backupFile = "C:\ServiceBackup.csv"
Get-Service | Select-Object Name, DisplayName, Status, StartType | Export-Csv -Path $backupFile -NoTypeInformation
```

### Service Feedback Function

```powershell
function Get-ServiceFeedback {
    [CmdletBinding()]
    param (
        [String[]]$ServiceName,
        [String[]]$DisplayName,
        [String[]]$Status
    )
    
    process {
        switch ($ServiceName) {
            # critical services
            "DcomLaunch" { "Critical: Should always be running." }
            "RpcSs" { "Critical: Should always be running." }
            "Winmgmt" { "Critical: Should always be running." }
            "gpsvc" { "Critical: Should always be running." }
            "LSM" { "Critical: Should always be running." }
            "ProfSvc" { "Critical: Should always be running." }
            "EventLog" { "Critical: Should always be running." }
            "CryptSvc" { "Critical: Should always be running." }
            "WinDefend" { "Critical: Should always be running." }
            "SamSs" { "Critical: Should always be running." }
            # recommended services
            "BFE" { "Recommended: Should be running for firewall and security." }
            "BITS" { "Recommended: Should be running for background updates." }
            "Netman" { "Recommended: Should be running for network management." }
            "mpssvc" { "Recommended: Should be running for firewall protection." }
            "Dhcp" { "Recommended: Should be running for network configuration." }
            "Dnscache" { "Recommended: Should be running for DNS resolution." }
            "wuauserv" { "Recommended: Should be running for Windows updates." }
            # optional services
            "BluetoothUserService" { "Optional: Disable if Bluetooth is not used." }
            "Fax" { "Optional: Disable if fax service is not used." }
            "RemoteRegistry" { "Optional: Disable for security if not needed." }
            "XblAuthManager" { "Optional: Disable if Xbox features are not used." }
            "SysMain" { "Optional: Disable to reduce disk usage." }
            "Spooler" { "Optional: Disable if printer is not used." }
            "WSearch" { "Optional: Disable if Windows search is not used." }
            default { "No specific recommendation." }
        }
    }
}
```

### Apply Recommendations

```powershell
function Apply-ServiceRecommendations {
    $servicesToStop = @(
        "BluetoothUserService", "Fax", "RemoteRegistry", "XblAuthManager",
        "XblGameSave", "XboxGipSvc", "XboxNetApiSvc", "MapsBroker", "lfsvc"
    )

    foreach ($service in $servicesToStop) {
        Stop-Service -Name $service -ErrorAction SilentlyContinue
        Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
    }

    Write-Output "Recommended changes applied. Services stopped and disabled."
}
```

### Restore Services

```powershell
function Restore-Services {
    param([string]$BackupFile)
    
    $backup = Import-Csv -Path $BackupFile
    foreach ($service in $backup) {
        $currentService = Get-Service -Name $service.Name -ErrorAction SilentlyContinue
        if ($currentService) {
            if ($service.Status -eq "Running") {
                Start-Service -Name $service.Name -ErrorAction SilentlyContinue
            } else {
                Stop-Service -Name $service.Name -ErrorAction SilentlyContinue
            }
            Set-Service -Name $service.Name -StartupType $service.StartType -ErrorAction SilentlyContinue
        }
    }
    Write-Output "Services restored to original state from backup."
}
```

## Usage

```powershell
# backup current services
Get-Service | Select-Object Name, DisplayName, Status, StartType | Export-Csv -Path "C:\ServiceBackup.csv" -NoTypeInformation

# review services with feedback
$services = Get-Service | Select-Object Name, DisplayName, Status
$services | ForEach-Object {
    $feedback = Get-ServiceFeedback -ServiceName $_.Name
    [PSCustomObject]@{
        Name = $_.Name
        DisplayName = $_.DisplayName
        Status = $_.Status
        Feedback = $feedback
    }
} | Format-Table -AutoSize

# apply recommendations
Apply-ServiceRecommendations

# restore from backup
Restore-Services -BackupFile "C:\ServiceBackup.csv"
```

***

## Appendix

*Note created on [[2024-06-29]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Managing Microsoft Services]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
