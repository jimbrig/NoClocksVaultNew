---
creation_date: 2024-05-08
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Topic/Virtualization
  - Status/Complete
aliases:
  - Compact Hyper-V Disks
  - Compress VHDX
description: PowerShell function to compress Hyper-V VHDX virtual disk files and recover disk space
cssclasses:
  - code
---

# Compact Hyper-V Disks

> [!info] Code Properties
> - **Language**: PowerShell
> - **Modules**: `Hyper-V`
> - **Requires**: Administrator privileges

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Compact-VHDX.ps1 - HarmVeenstra/Powershellisfun](https://github.com/HarmVeenstra/Powershellisfun/blob/main/Compact%20Hyper-V%20VHDX%20files/Compact-VHDX.ps1)*

> [!WARNING]
> The script/function name was renamed to `Compress-VHDX` to align with PowerShell approved verbs.

This function compresses VHDX (Virtual Hard Disk) files of Hyper-V virtual machines to recover disk space. It mounts each disk in read-only mode, optimizes it, and reports the space recovered.

## Code

```powershell
#Requires -RunAsAdministrator
function Compress-VHDX {
    param (
        [Parameter(Mandatory = $false, HelpMessage = "Enter the name of the VM(s) from which space should be recovered")]
        [string[]]$VMName
    )
      
    # validate if hyper-v module is available
    if (-not (Get-Module -ListAvailable -Name Hyper-V)) {
        Write-Warning "Hyper-V module is not installed, installing now..."
        Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-Management-PowerShell -NoRestart:$true
    }

    # check if specified VMName is valid
    if ($VMName) {
        if (-not (Hyper-V\Get-VM -Name $VMName -ErrorAction SilentlyContinue)) {
            Write-Warning ("Specified VM {0} was not found, aborting..." -f $VMName)
            return
        }
    }
    
    # validate if VMs are running
    if ($VMName) {
        foreach ($vm in $VMName) {
            if ((Hyper-V\Get-VM -Name $VM).State -eq 'Running') {
                Write-Warning ("One or more specified VM(s) {0} are running, please shutdown first. Aborting..." -f $VM)
                return
            }
        }
    }
    
    # gather VHDXs
    if (-not ($VMName)) {
        $vhds = Hyper-V\Get-VM | Hyper-V\Get-VMHardDiskDrive | Where-Object Path -Like '*.vhdx' | Sort-Object VMName, Path
    }
    else {
        $vhds = Hyper-V\Get-VM $VMName | Hyper-V\Get-VMHardDiskDrive | Where-Object Path -Like '*.vhdx' | Sort-Object Path
    }

    if ($null -eq $vhds) {
        Write-Warning ("No disk(s) found without parent/snapshot configuration, aborting....")
    }

    # gather current size
    $oldsize = foreach ($vhd in $vhds) {
        if ((Hyper-V\Get-VHD $vhd.path).VhdType -eq 'Dynamic') {
            [PSCustomObject]@{
                VHD     = $vhd.Path
                OldSize = [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
            }
        }
    }

    # compress all files
    foreach ($vhd in $vhds) {
        if (-not (Hyper-V\Get-VM $vhd.VMName | Where-Object State -eq Running)) {
            Write-Host ("`nProcessing {0} from VM {1}..." -f $vhd.Path, $vhd.VMName) -ForegroundColor Gray
            try {
                Hyper-V\Mount-VHD -Path $vhd.Path -ReadOnly -ErrorAction Stop
                Write-Host "Mounting VHDX" -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error mounting {0}, please check access or if file is locked..." -f $vhd.Path)
                continue
            }

            try {
                Hyper-V\Optimize-VHD -Path $vhd.Path -Mode Full
                Write-Host ("Compacting VHDX") -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error compacting {0}, dismounting..." -f $vhd.Path)
                Hyper-V\Dismount-VHD $vhd.Path
                return
            }

            try { 
                Hyper-V\Dismount-VHD $vhd.Path -ErrorAction Stop
                Write-Host ("Dismounting VHDX`n") -ForegroundColor Green
            }
            catch {
                Write-Warning ("Error dismounting {0}, please check Disk Management..." -f $vhd.Path)
                return
            }        
        }
        else {
            Write-Warning ("VM {0} is Running, skipping..." -f $vhd.VMName)
        }
    }

    # report on new sizes
    $report = foreach ($vhd in $vhds) {
        if ((Hyper-V\Get-VHD $vhd.path).VhdType -eq 'Dynamic') {
            [PSCustomObject]@{
                'Old Size (GB)'        = ($oldsize | Where-Object VHD -eq $vhd.Path).OldSize
                'New Size (GB)'        = [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
                'Space Recovered (GB)' = ($oldsize | Where-Object VHD -eq $vhd.Path).OldSize - [math]::round((Get-Item $vhd.Path).Length / 1GB, 3)
                VM                     = $vhd.VMName
                VHD                    = $vhd.Path
            }
        }
    }
    
    if ($null -ne $report) {
        return $report | Format-Table -AutoSize
    }
    else {
        Write-Warning ("No dynamic disk(s) found to recover space from, aborting....")
    }
}
```

## Usage

```powershell
# compact all VMs
Compress-VHDX

# compact specific VM
Compress-VHDX -VMName "MyVM"

# compact multiple VMs
Compress-VHDX -VMName "VM1", "VM2"
```

***

## Appendix

*Note created on [[2024-05-08]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/PowerShell/_README|PowerShell Code Index]]

### Backlinks

```dataview
LIST FROM [[PowerShell - Compact Hyper-V Disks]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
