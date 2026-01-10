---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Productivity
  - Status/Complete
aliases:
  - Timer Countdown
  - Start-FocusTime
description: PowerShell focus timer that closes distracting apps and reopens them after countdown
cssclasses:
  - code
---

# Timer Countdown

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-Process`, `Stop-Process`, `Start-Process`
## Overview

> [!SOURCE] Sources:
> - *[Start-FocusTime.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Focus%20Time%20countdown%20clock/Start-FocusTime.ps1)*

A focus time function that closes distracting programs, displays a countdown timer, and reopens the programs when the timer finishes.

## Code

```powershell
function Start-FocusTime {
    param (
        [Parameter(Mandatory = $true, HelpMessage = "Enter the amount of minutes to focus")]
        [string]$Minutes
    )

    # programs to close during focus time
    $ProgramsToKill = @(
        "Outlook",
        "Spotify",
        "Teams"
    )
    
    # prompt user to save work
    Write-Host ("Starting Focus Time for {0} minutes. Please save open documents in:" -f $Minutes) -ForegroundColor Green
    $ProgramsToKill -join ', ' | Sort-Object
    Read-Host -Prompt "Press Enter to continue" 
    
    # close programs
    Write-Host "Closing programs if active..." -ForegroundColor Green
    foreach ($program in $ProgramsToKill) {
        if (Get-Process $program -ErrorAction SilentlyContinue) {
            try {
                Get-Process $Program | Stop-Process -Force:$true -Confirm:$false -ErrorAction Stop
                Write-Host ("Closing {0}" -f $program) -ForegroundColor Green
            }
            catch {
                Write-Warning ("Could not close {0}, please close manually..." -f $program)
            }
        }
    }

    # countdown timer
    $t = New-TimeSpan -Minutes $Minutes
    $origpos = $host.UI.RawUI.CursorPosition
    $spinner = @('|', '/', '-', '/')
    $spinnerPos = 0
    $d = (Get-Date) + $t
    $remain = ($d - (Get-Date))
    
    Write-Host ("Starting focus time for {0} minutes" -f $Minutes) -ForegroundColor Green
    while ($remain.TotalSeconds -gt 0) {
        Write-Host (" {0} " -f $spinner[$spinnerPos % 4]) -ForegroundColor Green -NoNewline
        Write-Host (" {0}D {1:d2}h {2:d2}m {3:d2}s " -f $remain.Days, $remain.Hours, $remain.Minutes, $remain.Seconds) -NoNewline
        $host.UI.RawUI.CursorPosition = $origpos
        $spinnerPos += 1
        Start-Sleep -Seconds 1
        $remain = ($d - (Get-Date))
    }
    
    $host.UI.RawUI.CursorPosition = $origpos
    Write-Host " * " -ForegroundColor Green -NoNewline
    Write-Host " Countdown finished, restarting programs..." -ForegroundColor Green
    
    # restart programs
    foreach ($program in $ProgramsToKill) {
        try {
            Write-Host ("Starting {0}" -f $program) -ForegroundColor Green
            Start-Process $program
        }
        catch {
            Write-Warning ("Could not start {0}, please start manually..." -f $program)
        }
    }
}
```

## Usage

```powershell
# start 25-minute focus session (Pomodoro)
Start-FocusTime -Minutes 25

# start 45-minute deep work session
Start-FocusTime -Minutes 45
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
