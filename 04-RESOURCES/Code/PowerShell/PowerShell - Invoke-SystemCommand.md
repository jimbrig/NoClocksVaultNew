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
  - Invoke-SystemCommand
  - Run as SYSTEM
description: PowerShell function to execute commands as SYSTEM using temporary scheduled tasks
cssclasses:
  - code
---

# Invoke-SystemCommand

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Register-ScheduledTask`, `Start-ScheduledTask`
## Overview

Function to execute a scriptblock as SYSTEM by setting up a temporary scheduled task. Supports both instant execution and execution at next boot.

## Code

```powershell
function Invoke-SystemCommand {
    <#
    .SYNOPSIS
        Execute a scriptblock as SYSTEM by setting up a temporary scheduled task.
    
    .PARAMETER Name
        The name of the task
    
    .PARAMETER Scriptblock
        The code to run
    
    .PARAMETER Mode
        Whether to run it right away (Instant) or after the next reboot (OnBoot).
        Default: Instant

    .PARAMETER Wait
        Wait for the task to complete.
        Only applicable in "Instant" mode.

    .PARAMETER Timeout
        Timeout how long to wait for the task to complete.
        Only applicable with "-Wait"
    
    .EXAMPLE
        Invoke-SystemCommand -Name 'WhoAmI' -ScriptBlock { whoami | Set-Content C:/temp/whoami.txt }
    #>
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true)]
        [ValidateScript({
            if ($_ -notmatch "'") { return $true }
            throw "Name may not contain a single-quote. Value: $Name"
        })]
        [string]$Name,

        [Parameter(Mandatory = $true)]
        [string]$Scriptblock,

        [ValidateSet('Instant', 'OnBoot')]
        [string]$Mode = 'Instant',

        [switch]$Wait,

        [timespan]$Timeout = '00:00:30'
    )
    
    process {
        if ($Mode -eq 'OnBoot') { 
            $Scriptblock = "Unregister-ScheduledTask -TaskName 'PowerShell_System_$Name' -Confirm:`$false", $Scriptblock -join "`n`n" 
        }
        
        $bytes = [System.Text.Encoding]::Unicode.GetBytes($Scriptblock)
        $encodedCommand = [Convert]::ToBase64String($bytes)

        $action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-NoProfile -EncodedCommand $encodedCommand"
        $principal = New-ScheduledTaskPrincipal -UserId SYSTEM -RunLevel Highest -LogonType Password
        
        switch ($Mode) {
            'Instant' { $trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) }
            'OnBoot' { $trigger = New-ScheduledTaskTrigger -AtStartup }
        }
        
        $task = Register-ScheduledTask -TaskName "PowerShell_System_$Name" -Description "PowerShell Task - $Name" -Action $action -Trigger $trigger -Principal $principal
        
        if ($Mode -eq 'Instant') {
            $task | Start-ScheduledTask
            if (-not $Wait) {
                Start-Sleep -Seconds 1
            }
            else {
                $limit = (Get-Date).Add($Timeout)
                while (($task | Get-ScheduledTask).State -ne "Ready") {
                    if ($limit -lt (Get-Date)) {
                        $task | Unregister-ScheduledTask -Confirm:$false
                        throw "Task execution exceeded time limit ($Timeout)"
                    }
                }
            }
            $task | Unregister-ScheduledTask -Confirm:$false
        }
    }
}
```

## Usage

```powershell
# run command as SYSTEM immediately
Invoke-SystemCommand -Name 'WhoAmI' -ScriptBlock { whoami | Set-Content C:/temp/whoami.txt }

# run command as SYSTEM and wait for completion
Invoke-SystemCommand -Name 'GetServices' -ScriptBlock { Get-Service | Export-Csv C:/temp/services.csv } -Wait

# schedule command to run at next boot
Invoke-SystemCommand -Name 'CleanupTask' -ScriptBlock { Remove-Item C:/temp/* -Force } -Mode OnBoot
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
