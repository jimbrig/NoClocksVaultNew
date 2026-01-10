---
creation_date: 2024-04-23
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Topic/Security
  - Status/Complete
aliases:
  - OTP Password Verification
  - Python OTP
description: Python script for generating and verifying one-time passwords via email
cssclasses:
  - code
---

# OTP Password Verification

> [!info] Code Properties
> - **Language**: Python
> - **Modules**: `smtplib`, `random`
## Overview

Simple OTP (One-Time Password) generation and verification system using email delivery.

## Code

```python
import math
import random
import smtplib

# generate 6-digit OTP
digits = "0123456789"
OTP = ""
for i in range(6):
    OTP += digits[math.floor(random.random() * 10)]

# send OTP via email
msg = f"{OTP} is your OTP"
s = smtplib.SMTP('smtp.gmail.com', 587)
s.starttls()
s.login("your_email@gmail.com", "your_app_password")

email_id = input("Enter your email: ")
s.sendmail('sender@example.com', email_id, msg)

# verify OTP
user_input = input("Enter Your OTP: ")
if user_input == OTP:
    print("Verified")
else:
    print("Please check your OTP again")
```

## Usage

```python
# for production use, consider using secrets module
import secrets

def generate_otp(length=6):
    """Generate a secure OTP."""
    return ''.join(secrets.choice('0123456789') for _ in range(length))

otp = generate_otp()
```

> [!warning]
> For production use, use app-specific passwords and secure credential storage.

***

## Appendix

*Note created on [2024-04-23](2024-04-23.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [Python Code Index](04-RESOURCES/Code/Python/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
