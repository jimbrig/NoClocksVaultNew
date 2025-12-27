---
creation_date: 2024-04-29
modification_date: 2024-12-23
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Few-shot prompting technique for LLMs - providing examples to improve task performance
tags:
  - Type/Note
  - Topic/AI
  - Topic/LLM
  - Status/Complete
aliases:
  - Few-Shot Prompting
  - Few-Shot Learning
  - In-Context Learning
publish: true
---

# Few-Shot Prompting

> [!SOURCE] Sources:
> - *[Prompt Engineering Guide - Few-Shot](https://github.com/dair-ai/Prompt-Engineering-Guide/blob/main/guides/prompts-advanced-usage.md#few-shot-prompting)*

```table-of-contents
title: Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

While LLMs demonstrate remarkable [[Zero-Shot Prompting]] capabilities, they fall short on complex tasks. **Few-shot prompting** enables *in-context learning* by providing demonstrations in the prompt to steer the model toward better performance.

The demonstrations serve as conditioning for subsequent examples where the model generates a response.

## Example

From [Brown et al. 2020](https://arxiv.org/abs/2005.14165):

**Prompt:**
```
A "whatpu" is a small, furry animal native to Tanzania. An example of a sentence that uses the word whatpu is:
We were traveling in Africa and we saw these very cute whatpus.

To do a "farduddle" means to jump up and down really fast. An example of a sentence that uses the word farduddle is:
```

**Output:**
```
When we won the game, we all started to farduddle in celebration.
```

## When to Use Few-Shot

| Scenario | Approach |
|----------|----------|
| Simple, common tasks | Zero-shot first |
| Model struggles with zero-shot | Add 1-3 examples |
| Complex reasoning or formatting | 3-5+ examples |
| Domain-specific knowledge | Include domain examples |

## Best Practices

1. **Diverse examples**: Cover different cases/edge scenarios
2. **Consistent format**: Use identical structure across examples
3. **Quality over quantity**: Well-crafted examples beat many poor ones
4. **Order matters**: Place similar examples near the query
5. **Label balance**: Include examples of different output types

## Limitations

- Token limit constrains number of examples
- Examples can introduce bias if not diverse
- May not generalize to very different inputs

## Related Techniques

| Technique | Description |
|-----------|-------------|
| [[Zero-Shot Prompting]] | No examples provided |
| [[Chain-of-Thought Prompting]] | Include reasoning steps |
| [[Self-Consistency]] | Sample multiple reasoning paths |

---

## See Also

- [[Zero-Shot Prompting]]
- [[Chain-of-Thought Prompting]]
- [[MOC - Artificial Intelligence]]

---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024




