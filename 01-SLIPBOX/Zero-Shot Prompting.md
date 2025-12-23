---
creation_date: 2024-04-29
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Zero-shot prompting - LLM task completion without examples
tags:
  - Type/Note
  - Topic/AI
  - Topic/LLM
  - Status/Complete
aliases:
  - Zero-Shot Prompting
  - Zero-Shot Learning
publish: true
---

# Zero-Shot Prompting

> [!SOURCE] Sources:
> - *[Prompt Engineering Guide - Zero-Shot](https://github.com/dair-ai/Prompt-Engineering-Guide/blob/main/guides/prompts-advanced-usage.md#zero-shot-prompting)*

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Modern LLMs, trained on large amounts of data and tuned to follow instructions, are capable of performing tasks **zero-shot** - without any examples provided.

## Example

**Prompt:**
```
Classify the text into neutral, negative, or positive.

Text: I think the vacation is okay.
Sentiment:
```

**Output:**
```
neutral
```

The model correctly classifies sentiment without any prior examples.

## When Zero-Shot Works

| ✅ Works Well | ❌ May Struggle |
|---------------|-----------------|
| Common tasks (summarization, classification) | Domain-specific terminology |
| Well-defined output formats | Complex multi-step reasoning |
| Tasks similar to training data | Novel or unusual formats |
| Simple instructions | Ambiguous requirements |

## When to Upgrade

If zero-shot doesn't work, try:

1. **[[Few-Shot Prompting]]** - Provide 1-5 examples
2. **[[Chain-of-Thought Prompting]]** - Ask for step-by-step reasoning
3. **Prompt refinement** - More specific instructions

---

## See Also

- [[Few-Shot Prompting]]
- [[Chain-of-Thought Prompting]]
- [[MOC - Artificial Intelligence]]

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024

