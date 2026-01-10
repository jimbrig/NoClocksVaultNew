---
creation_date: 2024-04-15
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Topic/Configuration
  - Status/Complete
aliases:
  - Pydantic Configuration Management
  - Python Settings
description: Pydantic-based configuration management with environment-specific settings
cssclasses:
  - code
---

# Pydantic Configuration Management

> [!info] Code Properties
> - **Language**: Python
> - **Packages**: `pydantic`, `pydantic-settings`
## Overview

Environment-aware configuration management using Pydantic Settings with support for `.env` files, secrets, and environment-specific overrides.

## Code

```python
import os
import sys
import site
from typing import Union, Type, Tuple

from pydantic import Field, computed_field
from pydantic_settings import (BaseSettings, SettingsConfigDict,
                               PydanticBaseSettingsSource)

USER_BASE = site.getuserbase()
SECRETS_DIR = ('/run/secrets'
               if os.path.exists('/.dockerenv')
               else f'{site.USER_BASE}/secrets')
ENVIRONMENT = os.getenv('ENVIRONMENT', 'dev')


class Common(BaseSettings):
    """Common configuration shared between all environments."""
    model_config = SettingsConfigDict(
        extra='ignore',
        secrets_dir=SECRETS_DIR,
        env_file_encoding='utf-8',
        env_file=f'{USER_BASE}/.env'
    )

    # constant parameters
    api_timeout: tuple = (9.05, 60)
    
    # environment-dependent parameters
    env: str = ENVIRONMENT
    
    # secrets
    api_key: str = Field("", alias='api_key')

    @computed_field
    @property
    def headers(self) -> dict:
        """Return API headers with API key."""
        return {
            'Content-Type': 'application/json',
            'X-API-Key': self.api_key
        }


class Dev(Common):
    """Development environment configuration."""
    model_config = SettingsConfigDict(env_file=f'{USER_BASE}/dev.env')
    
    api_root: str = 'http://localhost'
    debug: bool = True


class Prod(Common):
    """Production environment configuration."""
    model_config = SettingsConfigDict(env_file=f'{USER_BASE}/prod.env')
    
    api_root: str = 'https://api.example.com'
    debug: bool = False


_setup = dict(dev=Dev, prod=Prod)

# instantiate environment configuration
config: Union[Dev, Prod] = _setup[ENVIRONMENT]()
```

## Usage

```python
from configurator import config

# access configuration
print(config.api_root)
print(config.headers)
print(config.env)
```

***

## Appendix

*Note created on [2024-04-15](2024-04-15.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [Python Code Index](04-RESOURCES/Code/Python/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
