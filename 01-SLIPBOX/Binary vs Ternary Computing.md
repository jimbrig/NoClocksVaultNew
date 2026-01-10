---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: Why binary dominates computing despite ternary being mathematically more efficient
tags:
  - Status/Complete
  - Type/Note
  - Type/Insight
  - Topic/ComputerScience
  - Topic/Physics
  - Topic/InformationTheory
aliases:
  - Binary vs Ternary Computing
  - Why Binary Not Ternary
  - Radix Economy
publish: true
source_chat: "[Information Theory Chat](2025-12-31_Perplexity_Information theory computational encoding and quantum physics.md)"
source_provider: Perplexity
confidence: high
---

# Binary vs Ternary Computing
## Overview

Binary is **not** the theoretically optimal choice for information representation—base-3 (ternary) is more efficient mathematically. Yet binary dominates all modern computing. This apparent paradox reveals a fascinating tension between mathematical optimality and physical practicality.

> [!QUOTE] Source
> Extracted from: `= this.source_chat`
> Provider: `= this.source_provider`
> Confidence: `= this.confidence`

## Key Concept

**Mathematical optimality favors ternary; physical reality favors binary.**

The optimal base for information representation is Euler's number $e /approx 2.718$. For integer bases, base-3 achieves the minimum value of the radix economy function $/frac{b}{/ln(b)}$, making it theoretically most efficient by 5-6% over binary.

Yet binary dominates because **physical switching devices naturally have two stable states**, and reliably distinguishing two states in noisy environments is far easier than distinguishing three.

## Details

### Radix Economy

When measuring efficiency as the product of base $b$ times the number of digits needed:

| Base | Efficiency | Notes |
|------|------------|-------|
| $e$ | 0.368 | Theoretical maximum (non-integer) |
| 3 | 0.366 | Most efficient integer base |
| 2 | 0.347 | Ties with base-4 |

Two ternary "trits" can represent 9 different values; two binary bits only 4. A number requiring 42 bits needs only 27 trits.

### Why Physics Favors Binary

**Transistor Physics**: Transistors naturally operate as switches with two stable states—"on" (conducting) and "off" (non-conducting). Creating three-state devices requires distinguishing three voltage levels.

**Noise Margins**: Binary systems define:
- Logical "0" as 0-20% of supply voltage
- Logical "1" as 80-100% of supply voltage
- **60% noise margin** between states

Ternary must divide voltage into thirds:
- Binary inverters: 389.5mV noise margins
- Ternary inverters: 150mV noise margins

**Error Correction**: Checking two states is straightforward; distinguishing three states reliably under thermal noise, voltage fluctuations, and electromagnetic interference is exponentially harder.

### Historical Precedent

The Soviet SETUN computer (1958) successfully implemented ternary logic, proving feasibility. However, the practical advantages of binary's noise immunity, combined with path dependency and network effects, cemented binary dominance.

## Implications

1. **Engineering trumps mathematics** when physical constraints dominate
2. **Noise immunity** is often more valuable than theoretical efficiency
3. **Binary's naturalness** may reflect deeper physics (quantum measurement)
4. **Quantum computing** might eventually transcend this tradeoff

## The Deeper Question

Binary's dominance may reflect quantum mechanics' fundamental yes/no, measured/unmeasured structure. Quantum measurements project superposition states onto eigenstates, yielding binary outcomes. Perhaps binary encoding works well because it reflects **the actual quantum substrate of reality**.

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [Definition - Information Theory](Definition - Information Theory.md)
- [Definition - Margolus-Levitin Theorem](Definition - Margolus-Levitin Theorem.md)
- [Definition - It From Bit](Definition - It From Bit.md)

### Related MOCs

- [MOC - Computer Science](MOC - Computer Science.md) - Theoretical computation foundations
- [MOC - Information Theory](MOC - Information Theory.md) - Information theory and physics
- [MOC - Physics](MOC - Physics.md) - Physical constraints on computing

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
