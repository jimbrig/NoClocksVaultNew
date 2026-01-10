---
creation_date: 2024-04-15
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Status/Complete
aliases:
  - Iterators and Generators
  - Python Generators
description: Python generator patterns for memory-efficient data processing
cssclasses:
  - code
---

# Iterators and Generators

> [!info] Code Properties
> - **Language**: Python
> - **Concept**: Memory Optimization
## Overview

Generators process data on-demand using `yield`, keeping memory usage low even with massive datasets. This is a core principle behind how large-scale data processing works.

## Code

### Memory-Intensive Approach (Avoid)

```python
def process_large_file(filename):
    all_lines = open(filename).readlines()  # loads everything at once
    results = []
    for line in all_lines:
        results.append(process_line(line))
    return results
```

### Generator Approach (Preferred)

```python
def process_huge_file_generator(filename):
    with open(filename) as f:
        for line in f:
            yield process_line(line)  # process on demand

# using the generator
for result in process_huge_file_generator("massive_log.txt"):
    # do something with each result
    pass
```

## Usage

```python
# chain generators for data pipelines
def read_lines(filename):
    with open(filename) as f:
        for line in f:
            yield line.strip()

def filter_errors(lines):
    for line in lines:
        if "ERROR" in line:
            yield line

def parse_error(lines):
    for line in lines:
        yield {"message": line, "level": "error"}

# compose the pipeline
pipeline = parse_error(filter_errors(read_lines("app.log")))
for error in pipeline:
    print(error)
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
