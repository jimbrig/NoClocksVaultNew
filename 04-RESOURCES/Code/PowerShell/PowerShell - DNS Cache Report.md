---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Topic/Networking
  - Status/Complete
aliases:
  - DNS Cache Report
  - Get-DnsCacheReport
description: PowerShell function to collect and report DNS cache entries over a specified time period
cssclasses:
  - code
---

# DNS Cache Report

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Get-DnsClientCache`
## Overview

> [!SOURCE] Sources:
> - *[Get-DnsCacheReport.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Create%20a%20Report%20on%20DNS%20lookups/Get-DnsCacheReport.ps1)*

Function that gathers DNS cache information over a specified time period and outputs results to a GridView or CSV file.

## Code

```powershell
function Get-DnsCacheReport {
    param (
        [parameter(Mandatory = $true)][string]$Minutes,
        [parameter(Mandatory = $false)][string]$CSVPath
    )
    
    # check if valid CSVPath was provided
    if ($CSVPath) {
        if (New-Item -Path $CSVPath -ItemType File -Force:$true -ErrorAction SilentlyContinue) {
            Write-Host ("Path {0} is valid, continuing..." -f $CSVPath) -ForegroundColor Green
        }
        else {
            Write-Warning ("Path {0} is not valid, please check path or permissions. Aborting..." -f $CSVPath)
        }
    }

    # countdown timer
    $t = New-TimeSpan -Minutes $Minutes
    $origpos = $host.UI.RawUI.CursorPosition
    $spinner = @('|', '/', '-', '/')
    $spinnerPos = 0
    $remain = $t
    $d = (Get-Date) + $t
    [int]$TickLength = 1
    $remain = ($d - (Get-Date))
    
    while ($remain.TotalSeconds -gt 0) {
        Write-Host (" {0} " -f $spinner[$spinnerPos % 4]) -ForegroundColor Green -NoNewline
        Write-Host ("Gathering DNS Cache information, {0}D {1:d2}h {2:d2}m {3:d2}s remaining..." -f $remain.Days, $remain.Hours, $remain.Minutes, $remain.Seconds) -NoNewline -ForegroundColor Green
        $host.UI.RawUI.CursorPosition = $origpos
        $spinnerPos += 1
        Start-Sleep -Seconds $TickLength
        
        # get DNS cache
        $dnscache = Get-DnsClientCache
        $total = foreach ($item in $dnscache) {
            switch ($item.status) {
                0 { $status = 'Success' }
                9003 { $status = 'NotExist' }
                9501 { $status = 'NoRecords' }
                9701 { $status = 'NoRecords' }        
            }

            switch ($item.Type) {
                1 { $Type = 'A' }
                2 { $Type = 'NS' }
                5 { $Type = 'CNAME' }
                6 { $Type = 'SOA' }
                12 { $Type = 'PTR' } 
                15 { $Type = 'MX' }
                28 { $Type = 'AAAA' }
                33 { $Type = 'SRV' }
            }

            switch ($item.Section) {
                1 { $Section = 'Answer' }
                2 { $Section = 'Authority' }
                3 { $Section = 'Additional' }
            }

            [PSCustomObject]@{
                Entry      = $item.Entry
                RecordType = $Type
                Status     = $status
                Section    = $Section
                Target     = $item.Data            
            }
        }
        $remain = ($d - (Get-Date))
    }
    
    $host.UI.RawUI.CursorPosition = $origpos
    Write-Host (" * ") -ForegroundColor Green -NoNewline
    Write-Host (" Finished gathering DNS Cache information, displaying results...") -ForegroundColor Green
    
    if ($CSVPath) {
        Write-Host ("Results are also saved as {0}" -f $CSVPath) -ForegroundColor Green
        $total | Select-Object Entry, RecordType, Status, Section, Target -Unique | Sort-Object Entry | Export-Csv -Path $CSVPath -Encoding UTF8 -Delimiter ';' -NoTypeInformation -Force
    }
    
    return $total | Select-Object Entry, RecordType, Status, Section, Target -Unique | Sort-Object Entry | Out-GridView  
}
```

## Usage

```powershell
# gather DNS cache for 5 minutes and display in GridView
Get-DnsCacheReport -Minutes 5

# gather DNS cache for 10 minutes and export to CSV
Get-DnsCacheReport -Minutes 10 -CSVPath "C:/Reports/DNSCache.csv"
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
