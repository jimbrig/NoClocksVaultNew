---
creation_date: 2024-04-15
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Status/Complete
aliases:
  - Decorators
  - Python Decorators
description: Python decorator patterns for adding functionality to functions without modifying them
cssclasses:
  - code
---

# Decorators

> [!info] Code Properties
> - **Language**: Python
> - **Concept**: Metaprogramming

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Decorators are functions that modify the behavior of other functions. They allow you to add functionality without changing the original function code - like adding superpowers to your functions.

Key benefits:
- Eliminate repetitive boilerplate code
- Add cross-cutting concerns (timing, logging, caching)
- Keep functions focused on their core purpose

## Code

### Timer Decorator

```python
def my_timer(func):
    """Decorator to time function execution."""
    import time
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__} took: {end-start:.4f} seconds")
        return result
    return wrapper

@my_timer
def slow_function(n):
    import time
    time.sleep(n)
```

### Logging Decorator

```python
def log_calls(func):
    """Decorator to log function calls."""
    def wrapper(*args, **kwargs):
        print(f"Calling {func.__name__} with {args}, {kwargs}")
        result = func(*args, **kwargs)
        print(f"{func.__name__} returned {result}")
        return result
    return wrapper

@log_calls
def add(a, b):
    return a + b
```

## Usage

```python
# the decorator is applied with @ syntax
@my_timer
def process_data(data):
    # function implementation
    pass

# equivalent to:
def process_data(data):
    pass
process_data = my_timer(process_data)
```

> [!tip]
> Decorators are powerful but use them wisely. Too many stacked decorators make code harder to understand.

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/Python/_README|Python Code Index]]

### Backlinks

```dataview
LIST FROM [[Python - Decorators]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
