---
creation_date: 2024-09-18
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Status/Complete
aliases:
  - Exception Handling
  - Python Try Except
description: Python exception handling patterns with custom exception classes
cssclasses:
  - code
---

# Exception Handling

> [!info] Code Properties
> - **Language**: Python
> - **Concept**: Error Handling
## Overview

> [!SOURCE] Sources:
> - *[about-python/exception-handling - GitHub](https://github.com/ReneNyffenegger/about-python/blob/master/exception-handling/demo.py)*

Python exception handling with custom exception classes and proper ordering of except blocks.

## Code

```python
class Ex_Base(BaseException):
    pass

class Ex_Deriv(Ex_Base):
    pass

# correct order: catch more specific exception first
try:
    print('Before raising the exception')
    raise Ex_Deriv()
    print('After raising the exception')

except Ex_Deriv as e:
    print('Ex_Deriv caught')  # this will be caught

except Ex_Base as e:
    print('Ex_Base caught')


# wrong order: base class catches first
try:
    print('Before raising the exception')
    raise Ex_Deriv()
    print('After raising the exception')

except Ex_Base as e:
    print('Ex_Base caught')  # this catches Ex_Deriv too

except Ex_Deriv as e:
    print('Ex_Deriv caught')  # never reached
```

## Usage

```python
# common exception handling pattern
try:
    result = risky_operation()
except SpecificError as e:
    handle_specific_error(e)
except GeneralError as e:
    handle_general_error(e)
finally:
    cleanup()
```

> [!important]
> Always order except blocks from most specific to most general exception types.

***

## Appendix

*Note created on [2024-09-18](2024-09-18.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [Python Code Index](04-RESOURCES/Code/Python/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
