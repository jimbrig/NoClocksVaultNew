---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Topic/Security
  - Status/Complete
aliases:
  - Create Scheduled Tasks Inventory
  - Scheduled Tasks Audit Script
description: PowerShell script to audit scheduled tasks running under local/domain accounts across Windows servers
cssclasses:
  - code
---

# Create Scheduled Tasks Inventory

> [!info] Code Properties
> - **Language**: PowerShell
> - **Modules**: `ActiveDirectory`
> - **Cmdlets**: `Get-ADComputer`, `Get-ChildItem`
## Overview

> [!SOURCE] Sources:
> - *[Scheduled Tasks inventory.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Scheduled%20Tasks%20inventory%20running%20local%20and%20domain%20accounts/Scheduled%20Tasks%20inventory.ps1)*

This script retrieves and analyzes scheduled tasks from all Windows Server machines in an Active Directory environment. It filters out system tasks and identifies tasks running under local or domain accounts for security auditing purposes.

## Code

```powershell
$CSVlocation = 'C:/Temp/ScheduledTasks.csv'

$total = foreach ($server in Get-ADComputer -Filter 'OperatingSystem -like "Windows Server*"' | Sort-Object Name) {
    try {
        $scheduledtasks = Get-ChildItem "//$($Server.name)/c$/Windows/System32/Tasks" -Recurse -File -ErrorAction Stop
        Write-Host ("Retrieving Scheduled Tasks list for {0}" -f $server.Name) -ForegroundColor Green
    }
    catch {
        Write-Warning ("Unable to retrieve Scheduled Tasks list for {0}" -f $server.Name)
        $scheduledtasks = $null
    }
    
    foreach ($task in $scheduledtasks | Sort-Object Name) {
        try {
            $taskinfo = [xml](Get-Content -Path $task.FullName -ErrorAction stop)
            Write-Host ("Processing Task {0} on {1}" -f $task.Name, $server.name)
        }
        catch {
            Write-Warning ("Could not read {0}" -f $task.FullName)
            $taskinfo = $null
        }
        
        if ($taskinfo.Task.Settings.Enabled -eq 'true' `
                -and $taskinfo.Task.Principals.Principal.GroupId -ne 'NT AUTHORITY/SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.GroupId -ne 'S-1-5-32-544' `
                -and $taskinfo.Task.Principals.Principal.LogonType -ne 'InteractiveToken' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'Administrators' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'EVERYONE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'INTERACTIVE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'LOCAL SERVICE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'NETWORK SERVICE' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'NT AUTHORITY/SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'SYSTEM' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-18' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-19' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'S-1-5-20' `
                -and $taskinfo.Task.Principals.Principal.UserId -ne 'USERS' `
                -and $taskinfo.Task.Triggers.LogonTrigger.Enabled -ne 'True' 
        ) {
            [PSCustomObject]@{
                Server    = $Server.name
                TaskName  = $task.Name
                RunAsUser = $taskinfo.Task.Principals.Principal.UserId
            }    
        }
    }
}

if ($total.count -gt 0) {
    $Total | Sort-Object Server, TaskName | Export-CSV -NoTypeInformation -Delimiter ';' -Encoding UTF8 -Path $CSVlocation
    Write-Host ("Saved results to {0}" -f $CSVlocation) -ForegroundColor Green
}
else {
    Write-Warning ("No Scheduled Tasks were found running on local or Domain accounts")
}
```

## Usage

Run the script from a domain-joined machine with appropriate permissions:

```powershell
./Get-ScheduledTasksInventory.ps1
```

The script exports results to `C:/Temp/ScheduledTasks.csv` by default.

***

## Appendix

*Note created on [2024-05-08](2024-05-08.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
