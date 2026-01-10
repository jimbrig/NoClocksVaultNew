---
creation_date: 2024-05-30
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/SQL
  - Topic/Database
  - Status/Complete
aliases:
  - Auto-Update Timestamps
  - PostgreSQL moddatetime
description: PostgreSQL trigger for automatically updating timestamp columns on row updates
cssclasses:
  - code
---

# PostgreSQL - Auto-Update Time Stamps

> [!info] Code Properties
> - **Language**: SQL (PostgreSQL)
> - **Extensions**: `moddatetime`
## Overview

Simple trigger using the `moddatetime` extension to automatically update timestamp columns when rows are modified.

## Code

```sql
CREATE EXTENSION IF NOT EXISTS moddatetime SCHEMA extensions;

-- assuming table "todos" with timestamp column "updated_at"
-- this trigger sets "updated_at" to current timestamp on every update
CREATE TRIGGER handle_updated_at 
BEFORE UPDATE ON todos
FOR EACH ROW 
EXECUTE PROCEDURE moddatetime(updated_at);
```

## Usage

```sql
-- create table with timestamp columns
CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- add trigger
CREATE TRIGGER handle_updated_at 
BEFORE UPDATE ON todos
FOR EACH ROW 
EXECUTE PROCEDURE moddatetime(updated_at);

-- now updates automatically set updated_at
UPDATE todos SET completed = true WHERE id = 1;
```

***

## Appendix

*Note created on [2024-05-30](2024-05-30.md) and last modified on [2024-12-31](2024-12-31.md).*

### See Also

- [SQL Code Index](04-RESOURCES/Code/SQL/README.md)

### Backlinks
<!-- dynamic content -->
***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
