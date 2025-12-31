---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Topic/API
  - Status/Complete
  - Status/WIP
aliases:
  - FastAPI Simple Example
  - FastAPI Starter
  - Python - FastAPI Simple Example
description: Simple FastAPI example demonstrating automatic validation and API creation
cssclasses:
  - code
publish: true
permalink:
---

# FastAPI Simple Example

> [!info] Code Properties
> - **Language**: Python
> - **Packages**: `fastapi`, `pydantic`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

FastAPI is a modern, fast web framework for building APIs with Python. It leverages Python type hints for automatic data validation and API documentation.

Key Features:
- **Automatic Data Validation**: Using Pydantic models for type checking
- **Elegant Dependency Injection**: Intuitive dependency management
- **Built-In Documentation**: Auto-generated Swagger/OpenAPI docs

## Code

```python
from fastapi import FastAPI, Depends
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    price: float

app = FastAPI()

@app.post("/items/")
async def create_item(item: Item):
    return {"message": f"Item '{item.name}' created!"}
```

## Usage

```bash
# install dependencies
pip install fastapi uvicorn

# run the server
uvicorn main:app --reload

# access docs at http://127.0.0.1:8000/docs
```

```python
# additional endpoints
@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

@app.get("/")
async def root():
    return {"message": "Hello World"}
```

***

## Appendix

*Note created on [[2024-04-15]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/Python/_README|Python Code Index]]

### Backlinks

```dataview
LIST FROM [[Python - FastAPI Simple Example]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

# Python - FastAPI Simple Example

> [!info] Code Properties
> - **Language**: 
> - **Packages**: 

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *Source URL or reference*

Description of this code snippet/script/module.

## Code

```
# code goes here
```

## Usage

How to use this code:

```
# usage example
```

## Notes

Additional notes about the code.

***

## Appendix

*Note created on [[2025-12-31]] and last modified on [[2025-12-31]].*

### See Also

- [[04-RESOURCES/Code/_README|Code Index]]

### Backlinks

```dataview
LIST FROM [[Python - FastAPI Simple Example]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
