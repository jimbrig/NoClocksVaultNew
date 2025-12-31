---
creation_date: 2024-04-23
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Status/Complete
aliases:
  - Remove UNICODE Characters
  - Python Strip Emoji
description: Python one-liner to remove non-ASCII/Unicode characters from strings
cssclasses:
  - code
---

# Remove UNICODE Characters

> [!info] Code Properties
> - **Language**: Python
> - **Concept**: String Encoding

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Simple technique to remove non-ASCII characters (emojis, special symbols) from Python strings using encoding.

## Code

```python
text = "Happy Holi 😀 May this festival bring happiness 🥰"
clean_text = text.encode('ascii', 'ignore').decode()
print(clean_text)
# Output: Happy Holi  May this festival bring happiness 
```

## Usage

```python
def remove_unicode(text: str) -> str:
    """Remove non-ASCII characters from string."""
    return text.encode('ascii', 'ignore').decode()

# alternative using regex
import re

def remove_emoji(text: str) -> str:
    """Remove emoji characters using regex."""
    emoji_pattern = re.compile(
        "["
        "\U0001F600-\U0001F64F"  # emoticons
        "\U0001F300-\U0001F5FF"  # symbols & pictographs
        "\U0001F680-\U0001F6FF"  # transport & map symbols
        "\U0001F1E0-\U0001F1FF"  # flags
        "]+",
        flags=re.UNICODE
    )
    return emoji_pattern.sub('', text)
```

***

## Appendix

*Note created on [[2024-04-23]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/Python/_README|Python Code Index]]

### Backlinks

```dataview
LIST FROM [[Python - Remove UNICODE Characters]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
