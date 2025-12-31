---
creation_date: 2024-06-04
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/SQL
  - Topic/Database
  - Status/Complete
aliases:
  - PostgreSQL Audit Trigger
  - SQL Audit Logging
description: PostgreSQL trigger function for comprehensive audit logging of table changes
cssclasses:
  - code
---

# PostgreSQL - Audit Trigger

> [!info] Code Properties
> - **Language**: SQL (PostgreSQL)
> - **Type**: Trigger Function

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[PostgreSQL Wiki - Audit Trigger](https://wiki.postgresql.org/wiki/Audit_trigger)*

Comprehensive audit logging trigger that records all INSERT, UPDATE, and DELETE operations on tables.

## Code

### Setup Audit Schema

```sql
CREATE SCHEMA audit;
REVOKE CREATE ON SCHEMA audit FROM public;

CREATE TABLE audit.logged_actions (
    schema_name text NOT NULL,
    table_name text NOT NULL,
    user_name text,
    action_tstamp timestamp with time zone NOT NULL DEFAULT current_timestamp,
    action TEXT NOT NULL CHECK (action IN ('I','D','U')),
    original_data text,
    new_data text,
    query text
) WITH (fillfactor=100);

REVOKE ALL ON audit.logged_actions FROM public;
GRANT SELECT ON audit.logged_actions TO public;

CREATE INDEX logged_actions_schema_table_idx 
ON audit.logged_actions(((schema_name||'.'||table_name)::TEXT));

CREATE INDEX logged_actions_action_tstamp_idx 
ON audit.logged_actions(action_tstamp);

CREATE INDEX logged_actions_action_idx 
ON audit.logged_actions(action);
```

### Trigger Function

```sql
CREATE OR REPLACE FUNCTION audit.if_modified_func() RETURNS trigger AS $body$
DECLARE
    v_old_data TEXT;
    v_new_data TEXT;
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        v_old_data := ROW(OLD.*);
        v_new_data := ROW(NEW.*);
        INSERT INTO audit.logged_actions (schema_name, table_name, user_name, action, original_data, new_data, query)
        VALUES (TG_TABLE_SCHEMA::TEXT, TG_TABLE_NAME::TEXT, session_user::TEXT, 'U', v_old_data, v_new_data, current_query());
        RETURN NEW;
    ELSIF (TG_OP = 'DELETE') THEN
        v_old_data := ROW(OLD.*);
        INSERT INTO audit.logged_actions (schema_name, table_name, user_name, action, original_data, query)
        VALUES (TG_TABLE_SCHEMA::TEXT, TG_TABLE_NAME::TEXT, session_user::TEXT, 'D', v_old_data, current_query());
        RETURN OLD;
    ELSIF (TG_OP = 'INSERT') THEN
        v_new_data := ROW(NEW.*);
        INSERT INTO audit.logged_actions (schema_name, table_name, user_name, action, new_data, query)
        VALUES (TG_TABLE_SCHEMA::TEXT, TG_TABLE_NAME::TEXT, session_user::TEXT, 'I', v_new_data, current_query());
        RETURN NEW;
    ELSE
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - Other action occurred: %, at %', TG_OP, now();
        RETURN NULL;
    END IF;

EXCEPTION
    WHEN data_exception THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [DATA EXCEPTION] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN unique_violation THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [UNIQUE] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
    WHEN others THEN
        RAISE WARNING '[AUDIT.IF_MODIFIED_FUNC] - UDF ERROR [OTHER] - SQLSTATE: %, SQLERRM: %', SQLSTATE, SQLERRM;
        RETURN NULL;
END;
$body$
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, audit;
```

## Usage

```sql
-- add trigger to a table
CREATE TRIGGER my_table_audit
AFTER INSERT OR UPDATE OR DELETE ON my_table
FOR EACH ROW EXECUTE PROCEDURE audit.if_modified_func();

-- query audit log
SELECT * FROM audit.logged_actions 
WHERE table_name = 'my_table' 
ORDER BY action_tstamp DESC;
```

***

## Appendix

*Note created on [[2024-06-04]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/SQL/_README|SQL Code Index]]

### Backlinks

```dataview
LIST FROM [[SQL - PostgreSQL - Audit Trigger]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
