---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The thermodynamic principle that erasing information has a minimum energy cost
tags:
  - Status/Complete
  - Type/Definition
  - Topic/Physics
  - Topic/Information Theory
  - Topic/Thermodynamics
  - Topic/Computer Science
aliases:
  - Landauer Principle
  - Landauer's Principle
  - Landauer Limit
publish: true
source_chat: "[Information Theory Chat](2025-12-31_Perplexity_Information theory computational encoding and quantum physics.md)"
source_provider: Perplexity
confidence: high
---

# Definition - Landauer Principle
## Overview

**Landauer's Principle** establishes that erasing one bit of information must dissipate at least $k_B T /ln 2$ of energy as heat into the environment. This fundamental result bridges information theory and thermodynamics, proving that information processing has irreducible physical costs.

> [!QUOTE] Source
> Extracted from: `= this.source_chat`
> Provider: `= this.source_provider`
> Confidence: `= this.confidence`

## Key Concept

The minimum energy required to erase one bit of information:

$$E_{min} = k_B T /ln 2$$

Where:
- $k_B$ = Boltzmann's constant ($1.38 /times 10^{-23}$ J/K)
- $T$ = temperature in Kelvin
- $/ln 2 /approx 0.693$

At room temperature (300K), this equals approximately $2.85 /times 10^{-21}$ joules per bit erased.

## Details

### Why Erasure Costs Energy

When you delete information, you're:
1. **Reducing entropy** of the data storage system
2. **Increasing entropy** of the environment by at least the same amount
3. This is thermodynamically analogous to **isothermal compression**

The second law of thermodynamics requires that total entropy cannot decrease, so the environment must absorb the "disorder" removed from the information system.

### Information is Physical

Landauer's principle proves that:
- Information isn't just abstract—it has **physical consequences**
- Computation has fundamental thermodynamic limits
- There's an irreducible energy cost to irreversible operations

### Experimental Verification

Recent experiments have verified Landauer's principle in:
- Single-bit memory systems
- Quantum many-body systems
- Nanoscale electronic devices

The principle applies to quantum systems too, where generalized entropy production tracks changes in information-theoretic quantities.

## Implications

1. **Ultimate Computer Efficiency**: Sets minimum power consumption for irreversible computation
2. **Reversible Computing**: Reversible operations can theoretically avoid this cost
3. **Maxwell's Demon**: Resolves the paradox—the demon must erase information
4. **Thermodynamic Computing**: Links computation to physical energy budgets

## Connection to Computational Limits

Combined with the [Bekenstein bound](Definition - Bekenstein Bound.md), Landauer's principle:
- Sets ultimate limits on information density
- Constrains quantum computing possibilities
- Shows computation is fundamentally a physical process

> [!NOTE] Bridge Principle
> Landauer's principle connects Shannon's abstract information theory to concrete thermodynamics, proving that bits are physical objects with real energy costs.

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [Definition - Information Theory](Definition - Information Theory.md)
- [Definition - Bekenstein Bound](Definition - Bekenstein Bound.md)
- [Definition - Margolus-Levitin Theorem](Definition - Margolus-Levitin Theorem.md)
- [Black Hole Thermodynamics](Black Hole Thermodynamics.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
