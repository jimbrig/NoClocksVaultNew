---
creation_date: 2024-05-03
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Status/Complete
aliases:
  - Write-ANSIHyperLink
  - ANSI Hyperlink Function
description: PowerShell function to create clickable ANSI hyperlinks in Windows Terminal
cssclasses:
  - code
---

# Write-ANSIHyperLink

> [!info] Code Properties
> - **Language**: PowerShell
> - **Requirements**: Windows Terminal 1.4+
## Overview

Function that creates clickable ANSI hyperlinks in supported terminals like Windows Terminal 1.4+.

## Code

```powershell
function Write-AnsiHyperlink {
    <#
    .SYNOPSIS
    Creates an ANSI Hyperlink in a supported terminal such as Windows Terminal 1.4+
    #>
    [CmdletBinding()]
    param(
        # the Uri for the hyperlink
        [Parameter(Mandatory, ValueFromPipeline)]
        [UriBuilder]$Uri,
        
        # the label text shown in the terminal
        [ValidateNotNullOrEmpty()]
        [String]$Label = $Uri.Uri
    )

    if ($PSVersionTable.PSVersion -lt '6.0.0') {
        $e = [char]27
    } else {
        $e = "`e"
    }

    "${e}]8;;{0}${e}`/{1}${e}]8;;${e}`/" -f $Uri.Uri, $Label
}
```

## Usage

```powershell
# create a clickable link
Write-AnsiHyperlink -Uri "https://noclocks.dev" -Label "No Clocks Website"

# pipe URI to function
[Uri]"https://github.com" | Write-AnsiHyperlink -Label "GitHub"

# use in Write-Host
Write-Host "Visit $(Write-AnsiHyperlink -Uri 'https://docs.microsoft.com' -Label 'Microsoft Docs') for more info"
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
