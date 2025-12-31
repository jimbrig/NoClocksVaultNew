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
  - Check for Non-Microsoft Signed Services
  - Non-Microsoft Services Script
description: PowerShell script to identify Windows services not signed by Microsoft for security auditing
cssclasses:
  - code
---

# Check for Non-Microsoft Signed Services

> [!info] Code Properties
> - **Language**: PowerShell
> - **Modules**: `ImportExcel` (optional)
> - **Cmdlets**: `Get-WmiObject`, `Get-AuthenticodeSignature`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Get-Non_Microsoft_Signed_Services.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Check%20for%20non-Microsoft%20Signed%20Windows%20Services/Get-Non_Microsoft_Signed_Services.ps1)*

This script retrieves information about services running on a system, specifically those not signed by Microsoft, and outputs the results either to a GridView or an Excel file. Useful for security auditing and identifying third-party services.

## Code

```powershell
[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)][String[]]$ComputerName = $env:COMPUTERNAME,
    [parameter(Mandatory = $false)][string]$Filename
)

# validate output filename
if ($Filename) {
    if (-not ($Filename.EndsWith('.xlsx'))) {
        Write-Warning ("Specified {0} filename does not end with .xlsx, exiting..." -f $Filename)
        return
    }

    # check access to the path
    if (-not (Test-Path -Path $Filename)) {
        try {
            New-Item -Path $Filename -ItemType File -Force:$true -Confirm:$false -ErrorAction Stop | Out-Null
            Remove-Item -Path $Filename -Force:$true -Confirm:$false | Out-Null
            Write-Host ("Specified {0} filename is correct, and the path is accessible, continuing..." -f $Filename) -ForegroundColor Green
        }
        catch {
            Write-Warning ("Path to specified {0} filename is not accessible, correct or file is in use, exiting..." -f $Filename)
            return
        }
    }
    else {
        Write-Warning ("Specified file {0} already exists, appending data to it..." -f $Filename)
    }

    # check if ImportExcel module is installed
    if (-not (Get-Module -ListAvailable -Name ImportExcel)) {
        Write-Warning ("The ImportExcel module was not found on the system, installing now...")
        try {
            Install-Module -Name ImportExcel -SkipPublisherCheck -Force:$true -Confirm:$false -Scope CurrentUser -ErrorAction Stop
            Import-Module -Name ImportExcel -Scope Local -ErrorAction Stop
            Write-Host ("Successfully installed the ImportExcel module, continuing..") -ForegroundColor Green
        }
        catch {
            Write-Warning ("Could not install the ImportExcel module, exiting...")
            return
        }
    }
    else {
        Write-Host ("The ImportExcel module was found on the system, continuing...") -ForegroundColor Green
    }
}

$total = $null

# retrieve services and check signatures
$total = foreach ($Computer in $ComputerName) {
    try {
        $count = 0
        $services = Get-WmiObject -Class Win32_Service -ComputerName $Computer -ErrorAction Stop | 
            Select-Object Displayname, Name, PathName, State, StartName, StartMode | 
            Sort-Object DisplayName
        Write-Host ("Retrieving information for {0} services on {1}" -f $services.count, $($Computer)) -ForegroundColor Green
        
        foreach ($service in $services) {
            $count++
            Write-Progress ("Checking service {0} on {1}" -f $service.Displayname, $($Computer)) -PercentComplete (($count * 100) / $services.count) -Status "$(([math]::Round((($count)/$services.count * 100),0))) %"
            
            if ($null -ne $service.PathName) {
                $servicepath = $service.PathName -replace '^(?:"(.+?)"|([^ ]+)).*', '$1$2'
                $servicepath = "\\$($computer)\$($servicepath.Substring(0,1))$" + "$($servicepath.Substring(2))"
                
                if (Test-Path -Path $servicepath) {
                    if (-not ((Get-AuthenticodeSignature $($servicepath)).SignerCertificate.Subject -match 'O=Microsoft Corporation')) {
                        [PSCustomObject]@{
                            ComputerName = $Computer
                            DisplayName  = $service.DisplayName
                            Name         = $service.Name
                            'Log on as'  = $service.StartName
                            StartMode    = $service.StartMode
                            State        = $service.State
                            Path         = $service.PathName
                        }
                    }
                }
            }
        }
    }
    catch {
        Write-Warning ("Error connecting {0}, skipping..." -f $Computer)
    }
}

# output results
if ($Total.Count -gt 0) {
    if (-not $Filename) {
        $Total | Sort-Object ComputerName, DisplayName | Out-GridView -Title 'Non-Microsoft Signed Services'
    }
    else {
        $Date = Get-Date -Format 'dd-MM-yyyy HH-mm'
        $Total | Export-Excel -Path $Filename -WorksheetName "Services_$($Date)" -AutoFilter -AutoSize -Append
        Write-Host ("Exported Non-Microsoft Signed Services to {0}" -f $Filename) -ForegroundColor Green
    } 
}
else {
    Write-Host ("No Non-Microsoft Signed Services found on {0}..." -f $ComputerName)
}
```

## Usage

```powershell
# check local computer
.\Get-NonMicrosoftServices.ps1

# check multiple computers
.\Get-NonMicrosoftServices.ps1 -ComputerName "Server1", "Server2"

# export to Excel
.\Get-NonMicrosoftServices.ps1 -Filename "C:\Reports\Services.xlsx"
```

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Check for Non-Microsoft Signed Services]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
