---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Email
  - Topic/DNS
  - Status/Complete
  - Status/WIP
aliases:
  - Get Email DNS Records
  - Get-MailDomainInfo
  - PowerShell - Get Email DNS Records
description: PowerShell function to retrieve email-related DNS records including MX, SPF, DKIM, and DMARC
cssclasses:
  - code
publish: true
permalink:
---

# Get Email DNS Records

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Resolve-DnsName`
## Overview

Function that retrieves all email-related DNS records for a domain including MX, SPF, DKIM, DMARC, and Autodiscover records.

## Code

```powershell
function Get-MailDomainInfo {
    param(
        [parameter(Mandatory = $true)][string[]]$DomainName,
        [parameter(Mandatory = $false)][string]$DNSserver = '1.1.1.1'
    )
     
    $info = foreach ($domain in $DomainName) {
        try {
            Resolve-DnsName -Name $domain -Server $DNSserver -ErrorAction Stop | Out-Null

            # retrieve all mail DNS records
            $autodiscoverA = (Resolve-DnsName -Name "autodiscover.$($domain)" -Type A -Server $DNSserver -ErrorAction SilentlyContinue).IPAddress
            $autodiscoverCNAME = (Resolve-DnsName -Name "autodiscover.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue).NameHost
            $dkim1 = Resolve-DnsName -Name "selector1._domainkey.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue
            $dkim2 = Resolve-DnsName -Name "selector2._domainkey.$($domain)" -Type CNAME -Server $DNSserver -ErrorAction SilentlyContinue
            $dmarc = (Resolve-DnsName -Name "_dmarc.$($domain)" -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'DMARC').Strings
            $mx = (Resolve-DnsName -Name $domain -Type MX -Server $DNSserver -ErrorAction SilentlyContinue).NameExchange
            $spf = (Resolve-DnsName -Name $domain -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'v=spf').Strings
            $includes = (Resolve-DnsName -Name $domain -Type TXT -Server $DNSserver -ErrorAction SilentlyContinue | Where-Object Strings -Match 'v=spf').Strings -split ' ' | Select-String 'Include:'

            $errorfinding = 'Not enabled'

            if ($null -eq $dkim1 -and $null -eq $dkim2) {
                $dkim = $errorfinding
            }
            else {
                $dkim = "$($dkim1.Name) , $($dkim2.Name)"
            }

            if ($null -eq $dmarc) { $dmarc = $errorfinding }
            if ($null -eq $mx) { $mx = $errorfinding }
            if ($null -eq $spf) { $spf = $errorfinding }
            if ($null -eq $autodiscoverCNAME) { $autodiscoverCNAME = $errorfinding }
            if (($autodiscoverA).count -gt 1 -or $null -ne $autodiscoverCNAME) { $autodiscoverA = $errorfinding }

            if ($null -eq $includes) {
                $includes = $errorfinding
            }
            else {
                $foundincludes = foreach ($include in $includes) {
                    if ((Resolve-DnsName -Server $DNSserver -Name $include.ToString().Split(':')[1] -Type txt -ErrorAction SilentlyContinue).Strings) {
                        [PSCustomObject]@{
                            SPFIncludes = "$($include.ToString().Split(':')[1]) : " + $(Resolve-DnsName -Server $DNSserver -Name $include.ToString().Split(':')[1] -Type txt).Strings
                        }
                    }
                    else {
                        [PSCustomObject]@{
                            SPFIncludes = $errorfinding
                        }
                    }
                }
            }

            [PSCustomObject]@{
                'Domain Name'             = $domain
                'Autodiscover IP-Address' = $autodiscoverA
                'Autodiscover CNAME'      = $autodiscoverCNAME
                'DKIM Record'             = $dkim
                'DMARC Record'            = "$($dmarc)"
                'MX Record(s)'            = $mx -join ', '
                'SPF Record'              = "$($spf)"
                'SPF Include values'      = "$($foundincludes.SPFIncludes)" -replace "all", "all`n`b"
            }
        }
        catch {
            Write-Warning ("{0} not found" -f $domain)
        }     
    }
    return $info 
}
```

## Usage

```powershell
# check single domain
Get-MailDomainInfo -DomainName "example.com"

# check multiple domains
Get-MailDomainInfo -DomainName "example.com", "contoso.com"

# use specific DNS server
Get-MailDomainInfo -DomainName "example.com" -DNSserver "8.8.8.8"
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

# PowerShell - Get Email DNS Records

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
