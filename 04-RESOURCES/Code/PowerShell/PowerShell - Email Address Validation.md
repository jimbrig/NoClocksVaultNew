---
creation_date: 2024-05-20
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Email
  - Status/Complete
aliases:
  - Email Address Validation
  - PowerShell Email Validation
description: PowerShell script to validate email addresses using an external API
cssclasses:
  - code
---

# Email Address Validation

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `Invoke-RestMethod`
## Overview

> [!SOURCE] Sources:
> - *[How to validate email addresses in Powershell (check-mail.org)](https://check-mail.org/sample-code/validate-email-and-block-disposable-email-in-powershell/)*

Simple PowerShell script that validates email addresses using the MailCheck API via RapidAPI.

## Code

```powershell
$headers = @{}
$headers.Add("x-rapidapi-host", "mailcheck.p.rapidapi.com")
$headers.Add("x-rapidapi-key", "YOUR-API-KEY")
$response = Invoke-RestMethod -Uri 'https://mailcheck.p.rapidapi.com/?domain=EMAIL-OR-DOMAIN' -Method GET -Headers $headers
```

## Usage

Replace `YOUR-API-KEY` with your RapidAPI key and specify the email or domain to validate:

```powershell
$headers = @{
    "x-rapidapi-host" = "mailcheck.p.rapidapi.com"
    "x-rapidapi-key"  = "your-api-key-here"
}

$email = "test@example.com"
$response = Invoke-RestMethod -Uri "https://mailcheck.p.rapidapi.com/?domain=$email" -Method GET -Headers $headers

# check results
if ($response.valid) {
    Write-Host "Email is valid" -ForegroundColor Green
} else {
    Write-Host "Email is invalid" -ForegroundColor Red
}
```

***

## Appendix

*Note created on [2024-05-20](2024-05-20.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
