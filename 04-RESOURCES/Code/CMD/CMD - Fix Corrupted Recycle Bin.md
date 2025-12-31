---
creation_date: 2025-12-31
modification_date: 2025-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Windows
  - Topic/CMD
  - Status/Complete
  - Status/WIP
aliases:
  - Fix Corrupted Recycle Bin
  - Clear Recycle Bin CMD
  - CMD - Fix Corrupted Recycle Bin
description: CMD command to fix a corrupted Windows Recycle Bin by deleting and recreating it
cssclasses:
  - code
publish: true
permalink:
---

# Fix Corrupted Recycle Bin

> [!info] Code Properties
> - **Language**: CMD
> - **Requires**: Administrator privileges

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

> [!SOURCE] Sources:
> - *[Recycle bin not emptying - Microsoft Community](https://answers.microsoft.com/en-us/windows/forum/all/recycle-bin-not-emptying/404e6fbc-3647-403e-84a1-b53821b119a6)*

Command to fix a corrupted recycle bin in Windows by forcefully deleting the Recycle Bin folder, which Windows automatically recreates.

## Code

```cmd
REM run as administrator
rd /s /q "C:\$Recycle.bin"
```

## Usage

1. Open Command Prompt as Administrator
2. Run the command above
3. The Recycle Bin will be recreated automatically by Windows

> [!warning]
> This permanently deletes all items in the Recycle Bin.

***

## Appendix

*Note created on [[2024-04-30]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/CMD/_README|CMD Code Index]]

### Backlinks

```dataview
LIST FROM [[CMD - Fix Corrupted Recycle Bin]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

# CMD - Fix Corrupted Recycle Bin

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
LIST FROM [[CMD - Fix Corrupted Recycle Bin]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2025
