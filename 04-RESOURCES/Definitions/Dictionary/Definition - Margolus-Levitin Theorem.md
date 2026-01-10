---
creation_date: 2024-12-31
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
description: The quantum mechanical limit on maximum computational speed
tags:
  - Status/Complete
  - Type/Definition
  - Topic/Physics
  - Topic/Quantum Mechanics
  - Topic/Computer Science
  - Topic/Information Theory
aliases:
  - Margolus-Levitin Theorem
  - Margolus-Levitin Limit
  - Quantum Speed Limit
publish: true
source_chat: "[Information Theory Chat](2025-12-31_Perplexity_Information theory computational encoding and quantum physics.md)"
source_provider: Perplexity
confidence: high
---

# Definition - Margolus-Levitin Theorem
## Overview

The **Margolus-Levitin Theorem** establishes the maximum computational speed of any physical system based on its available energy. It derives from the time-energy uncertainty relation in quantum mechanics, setting fundamental limits on how fast information can be processed.

> [!QUOTE] Source
> Extracted from: `= this.source_chat`
> Provider: `= this.source_provider`
> Confidence: `= this.confidence`

## Key Concept

The maximum number of operations per second is:

$$/text{Max ops/sec} = /frac{2E}{/pi /hbar}$$

Where:
- $E$ = available energy
- $/hbar$ = reduced Planck constant ($1.055 /times 10^{-34}$ J·s)

This equals approximately $6 /times 10^{33}$ operations per second per joule of energy.

## Details

### Derivation from Uncertainty

The theorem follows from the **time-energy uncertainty relation**:

$$/Delta E /cdot /Delta t /geq /frac{/hbar}{2}$$

This states that to change a quantum state (perform a logical operation), you need a minimum time $/Delta t$ that depends inversely on available energy. Rearranging:

$$/Delta t /geq /frac{/pi /hbar}{2E}$$

### Lloyd's Ultimate Laptop

Seth Lloyd calculated the computational capacity of a "ultimate laptop"—one kilogram of matter in one liter—using $E = mc^2$:

$$/text{Ops/sec} = /frac{2mc^2}{/pi /hbar} /approx 10^{51} /text{ operations/second}$$

For one kilogram: $mc^2 = 9 /times 10^{16}$ joules, yielding approximately $10^{51}$ ops/sec.

### Combined Constraints

The ultimate computational limit emerges from three constants:
- **$/hbar$ (quantum mechanics)**: Sets energy-time tradeoff
- **$c$ (relativity)**: Limits communication speed, provides $E = mc^2$
- **$G$ (gravity)**: Imposes density limits before black hole formation

## Implications

1. **Fundamental Speed Limit**: No computer can exceed this rate
2. **Energy = Computation**: More energy enables faster processing
3. **Quantum Supremacy**: Classical computers waste potential
4. **Universe as Computer**: ~$10^{120}$ ops since Big Bang

## Connection to Other Limits

| Limit | What It Constrains | Constant |
|-------|-------------------|----------|
| Margolus-Levitin | Computation speed | $/hbar$ |
| [Bekenstein Bound](Definition - Bekenstein Bound/.md) | Information density | $/hbar, c, G$ |
| [Landauer Principle](Definition - Landauer Principle/.md) | Erasure energy | $k_B$ |

> [!NOTE] Physics Forces Convergence
> These limits represent situations where quantum mechanics, relativity, and thermodynamics **must be considered together**—they're not speculative unification but working theory.

---

## Appendix

*Created: 2024-12-31 | Modified: 2024-12-31*

### See Also

- [Definition - Information Theory](Definition - Information Theory.md)
- [Definition - Bekenstein Bound](Definition - Bekenstein Bound.md)
- [Definition - Landauer Principle](Definition - Landauer Principle.md)
- [Black Hole Thermodynamics](Black Hole Thermodynamics.md)

### Backlinks
<!-- dynamic content -->
---

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
