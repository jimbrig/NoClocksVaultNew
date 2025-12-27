---
creation_date: 2025-12-23
modification_date: 2025-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Bash
  - Topic/Security
  - Status/Complete
aliases:
  - Create Signing Certificate via OpenSSL
  - OpenSSL Certificate Generation
publish: true
permalink:
description: "Bash script for generating self-signed certificates using OpenSSL."
cssclasses:
  - code
---

# Create Signing Certificate via OpenSSL
## Overview

> [!SOURCE] Sources:
> - *[documenso/SIGNING.md at main - documenso/documenso](https://github.com/documenso/documenso/blob/main/SIGNING.md)*

For the digital signature of your documents you need a signing certificate in `.p12` format (public and private key). You can buy one (not recommended for dev) or use the steps below to create a self-signed one.

## Code

### Basic Script

```bash
#!/usr/bin/env bash

# generate a private key using openssl (2048-bit RSA key):
openssl genrsa -out private.key 2048

# generate self-signed certificate using private key
openssl req -new -x509 -key private.key -out certificate.crt -days 365

# combine private key and certificate into a p12 certificate bundle:
openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt
```

### Function Wrapper

```bash
#!/usr/bin/env bash

generate_certificates() {
  local key_size="$1"
  local days="$2"
  local key_file="$3"
  local crt_file="$4"
  local p12_file="$5"

  # generate a private key using openssl
  openssl genrsa -out "$key_file" "$key_size"

  # generate self-signed certificate using private key
  openssl req -new -x509 -key "$key_file" -out "$crt_file" -days "$days"

  # combine private key and certificate into a p12 certificate bundle
  openssl pkcs12 -export -out "$p12_file" -inkey "$key_file" -in "$crt_file"
}

# usage
generate_certificates 2048 365 private.key certificate.crt certificate.p12
```

## Details

This script uses OpenSSL to generate a private key, a self-signed certificate, and a PKCS#12 certificate bundle.

- `openssl genrsa -out private.key 2048` - Generates a 2048-bit RSA private key
- `openssl req -new -x509 -key private.key -out certificate.crt -days 365` - Creates a self-signed X.509 certificate valid for one year
- `openssl pkcs12 -export -out certificate.p12 -inkey private.key -in certificate.crt` - Bundles the private key and certificate into a PKCS#12 file

The function wrapper accepts five parameters:

1. `key_size` - The size of the RSA key to generate
2. `days` - The number of days the certificate is valid
3. `key_file` - The filename for the generated private key
4. `crt_file` - The filename for the generated certificate
5. `p12_file` - The filename for the generated PKCS#12 file

> [!WARNING]
> Self-signed certificates are not trusted by clients like web browsers. For production, use a certificate from a trusted Certificate Authority (CA).

***

## Appendix

*Note created on [2025-12-23](2025-12-23.md) and last modified on [2025-12-23](2025-12-23.md).*

### See Also

- [Bash Code](04-RESOURCES/Code/Bash/README.md)
- [Linux](Linux.md)
- [Windows Subsystem for Linux (WSL)](Windows Subsystem for Linux (WSL).md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025




