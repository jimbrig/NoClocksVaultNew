---
creation_date: 2024-04-29
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Topic/DevOps
  - Status/Complete
aliases:
  - Version Bump Script
  - Python Version Bump
description: Python script for automated semantic version bumping with Git integration
cssclasses:
  - code
---

# Version Bump Script

> [!info] Code Properties
> - **Language**: Python
> - **Packages**: `packaging`
## Overview

> [!SOURCE] Sources:
> - *[aider/scripts/versionbump.py - GitHub](https://github.com/paul-gauthier/aider/blob/main/scripts/versionbump.py)*

Automated version bumping script that updates version in source files, creates Git tags, and sets up dev version for next release.

## Code

```python
#!/usr/bin/env python
import argparse
import re
import subprocess
import sys
from packaging import version


def check_branch():
    """Ensure we're on main branch."""
    branch = subprocess.run(
        ["git", "rev-parse", "--abbrev-ref", "HEAD"],
        capture_output=True, text=True
    ).stdout.strip()
    if branch != "main":
        print("Error: Not on the main branch.")
        sys.exit(1)


def check_working_directory_clean():
    """Ensure working directory is clean."""
    status = subprocess.run(
        ["git", "status", "--porcelain"],
        capture_output=True, text=True
    ).stdout
    if status:
        print("Error: Working directory is not clean.")
        sys.exit(1)


def main():
    parser = argparse.ArgumentParser(description="Bump version")
    parser.add_argument("new_version", help="New version in x.y.z format")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    
    check_branch()
    check_working_directory_clean()
    
    new_version_str = args.new_version
    if not re.match(r"^/d+/./d+/./d+$", new_version_str):
        raise ValueError(f"Invalid version format: {new_version_str}")
    
    new_version = version.parse(new_version_str)
    
    # update version file
    with open("src/__init__.py", "r") as f:
        content = f.read()
    
    updated_content = re.sub(
        r'__version__ = ".+?"',
        f'__version__ = "{new_version}"',
        content
    )
    
    if not args.dry_run:
        with open("src/__init__.py", "w") as f:
            f.write(updated_content)
    
    # git commands
    git_commands = [
        ["git", "add", "src/__init__.py"],
        ["git", "commit", "-m", f"version bump to {new_version}"],
        ["git", "tag", f"v{new_version}"],
        ["git", "push", "origin"],
        ["git", "push", "origin", f"v{new_version}"],
    ]
    
    for cmd in git_commands:
        print(f"Running: {' '.join(cmd)}")
        if not args.dry_run:
            subprocess.run(cmd, check=True)


if __name__ == "__main__":
    main()
```

## Usage

```bash
# dry run to preview changes
python versionbump.py 1.2.0 --dry-run

# actual version bump
python versionbump.py 1.2.0
```

***

## Appendix

*Note created on [2024-04-29](2024-04-29.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [Python Code Index](04-RESOURCES/Code/Python/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
