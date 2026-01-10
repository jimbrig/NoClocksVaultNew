---
creation_date: 2024-04-13
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/PowerShell
  - Topic/Windows
  - Topic/Security
  - Status/Complete
aliases:
  - Create Self-Signed Development Certificate
  - Code Signing Certificate
description: PowerShell script to create self-signed development certificates for code signing
cssclasses:
  - code
---

# Create Self-Signed Development Certificate

> [!info] Code Properties
> - **Language**: PowerShell
> - **Cmdlets**: `New-SelfSignedCertificate`, `Export-Certificate`, `Set-AuthenticodeSignature`
> - **Requires**: Administrator privileges
## Overview

> [!SOURCE] Sources:
> - *[Create a self-signed public certificate - Microsoft Learn](https://learn.microsoft.com/en-us/entra/identity-platform/howto-create-self-signed-certificate)*
> - *[Digital Signatures - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/install/digital-signatures)*
> - *[WSL Plugins | Microsoft Learn](https://learn.microsoft.com/en-us/windows/wsl/wsl-plugins)*

This script creates a new self-signed development certificate, exports it to a local `.cer` file, and demonstrates how to sign scripts or DLLs.

## Code

```powershell
#Requires -RunAsAdministrator

# declare certificate name
$CertName = "DevCert"

# specify parameters
$Params = @{
    Subject           = "CN=$CertName"
    CertStoreLocation = "Cert:/CurrentUser/My"
    KeyExportPolicy   = "Exportable"
    KeySpec           = "Signature"
    KeyLength         = 2048
    KeyAlgorithm      = "RSA"
    HashAlgorithm     = "SHA256"
    Type              = "CodeSigningCert"
}

# create the certificate
$Cert = New-SelfSignedCertificate @Params

# export certificate to local file
Export-Certificate -Cert $Cert -FilePath "./$CertName.cer"

# sign a script
Set-AuthenticodeSignature -FilePath "path/to/script.ps1" -Certificate $Cert

# sign a DLL
Set-AuthenticodeSignature -FilePath "path/to/library.dll" -Certificate $Cert
```

To import the certificate to the Trusted Root Certification Authority:

```powershell
certutil -addstore "Root" "./$CertName.cer"
```

## Usage

1. Run PowerShell as Administrator
2. Execute the script to create the certificate
3. Use `Set-AuthenticodeSignature` to sign your scripts or DLLs
4. Import the certificate to trusted roots on target machines

***

## Appendix

*Note created on [2024-04-13](2024-04-13.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [PowerShell Code Index](04-RESOURCES/Code/PowerShell/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
