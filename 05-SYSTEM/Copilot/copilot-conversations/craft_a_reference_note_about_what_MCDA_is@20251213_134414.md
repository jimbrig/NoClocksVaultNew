---
tags:
  - Type/Copilot
meta:
  epoch: 1765651454959
  modelKey: "gpt-5-mini|openai"
---

**user**: craft a reference note about what MCDA is
[Context: Notes: 04-RESOURCES/Definitions/Multi-Criteria Decision Analysis (MCDA).md]
[Timestamp: 2025/12/13 13:44:14]

**ai**: # Multi-Criteria Decision Analysis (MCDA)

Summary
- Multi-Criteria Decision Analysis (MCDA) is a family of structured methods used to support decision-making when multiple, often conflicting, criteria must be considered.
- It helps convert qualitative and quantitative criteria into a transparent, repeatable evaluation that ranks, scores, or selects alternatives.

Key concepts
- Decision alternatives: the options being compared (projects, sites, designs, investments).
- Criteria: attributes used to evaluate alternatives (cost, risk, benefit, accessibility, environmental impact).
- Weights: the relative importance assigned to each criterion.
- Performance/score matrix: values of alternatives on each criterion.
- Normalization: converting different units/scales into a common scale.
- Aggregation rule: the mathematical method for combining criteria (e.g., weighted sum).
- Sensitivity/robustness analysis: checking how results change with different weights or assumptions.

Common MCDA methods (overview)
- Weighted Sum Model (WSM / MAUT / MAVT)
  - Simple and widely used; aggregate normalized scores with weights.
- Analytic Hierarchy Process (AHP)
  - Pairwise comparisons to derive weights and derive priorities; checks consistency.
- TOPSIS (Technique for Order Preference by Similarity to Ideal Solution)
  - Ranks alternatives by closeness to an ideal best and farthest from an ideal worst.
- ELECTRE (ELimination Et Choix Traduisant la REalité)
  - Outranking method; handles incomparabilities and veto thresholds.
- PROMETHEE
  - Outranking with preference functions and net flow scores.
- Multi-Attribute Utility Theory (MAUT)
  - Builds utility functions to represent stakeholder preferences, often used when risk attitudes matter.

Basic MCDA workflow
- Define the decision problem and objectives.
- Identify feasible alternatives.
- Select and define criteria (ensure coverage and independence where possible).
- Measure or estimate performance of each alternative against each criterion.
- Choose weighting method and elicit weights (stakeholder elicitation, AHP, direct rating).
- Normalize criterion scores if needed.
- Aggregate scores using chosen MCDA method.
- Rank alternatives and perform sensitivity/robustness checks.
- Present results and support decision with documentation of assumptions.

Core mathematics (examples)
- Weighted sum (WSM/MAUT):
  - Given alternatives $i$ and criteria $j$: $S_i = /sum_j w_j /, x_{ij}$, where $w_j$ are weights and $x_{ij}$ are normalized scores.
- Normalization examples:
  - Min–max: $/tilde{x}_{ij} = /dfrac{x_{ij} - /min_i x_{ij}}{/max_i x_{ij} - /min_i x_{ij}}$.
  - Benefit/cost direction handling: reverse scale for cost criteria.
- AHP weight derivation:
  - Pairwise comparison matrix $A$, eigenvector method: find $w$ such that $A w = /lambda_{/max} w$.

Simple worked example (weighted sum)
- Criteria: Cost (weight 0.6, lower is better), Quality (weight 0.4, higher is better).
- Alternatives A and B:
  - Cost: A = 80, B = 60 (lower better)
  - Quality: A = 70, B = 60 (higher better)
- Normalize (min–max, invert cost):
  - Cost normalized (benefit form): $c'_i = 1 - /frac{cost_i - 60}{80 - 60}$ so A: $1 - /frac{20}{20} = 0$, B: $1 - /frac{0}{20} = 1$.
  - Quality normalized: A: $/frac{70-60}{70-60}=1$, B: $/frac{60-60}{10}=0$.
- Scores: $S_A = 0.6/cdot0 + 0.4/cdot1 = 0.4$; $S_B = 0.6/cdot1 + 0.4/cdot0 = 0.6$ → B preferred.

Weighting and stakeholder involvement
- Weight elicitation methods:
  - Direct rating (point allocation), swing weighting, pairwise comparisons (AHP), rank-order centroid, budget allocation.
- Document who set weights, how trade-offs were elicited, and provide alternate weight scenarios for transparency.

Sensitivity and robustness
- Test how rankings change under:
  - Perturbations of weights (one-at-a-time, Monte Carlo sampling).
  - Different normalization or aggregation rules.
  - Alternative performance estimates (uncertain data).
- Report stability: if rankings flip under small changes, decision is fragile.

Strengths and limitations
- Strengths:
  - Makes multiple criteria and trade-offs explicit.
  - Flexible: handles qualitative and quantitative data.
  - Supports stakeholder participation and transparent documentation.
- Limitations:
  - Results depend on choice of criteria, normalization, and weights.
  - Some methods (e.g., AHP) can be sensitive to inconsistent judgments.
  - Outranking methods can produce incomparabilities that require interpretation.

Applications (examples)
- Urban planning and site selection (GIS-integrated MCDA).
- Environmental impact assessment and resource management.
- Supplier selection and procurement.
- Portfolio selection in finance and real estate.
- Policy evaluation and health technology assessment.

Practical tips for implementation
- Keep criteria few and meaningful; avoid redundant criteria.
- Separate measurement scales and directions clearly (benefit vs cost).
- Use visualizations: scorecards, radar charts, sensitivity plots.
- Record assumptions and all intermediate matrices so results are reproducible.
- For GIS MCDA, use raster or vector overlays with weighted combination but be careful with scale and normalization.

Suggested note structure in this vault
- - Purpose / Summary
  - Key concepts
  - Workflow / Checklist
  - Worked examples and templates
  - References and further reading

References and further reading (selection)
- Keeney, R. L., & Raiffa, H. (1976). Decisions with Multiple Objectives: Preferences and Value Tradeoffs.
- Saaty, T. L. (1980). The Analytic Hierarchy Process.
- Hwang, C.-L., & Yoon, K. (1981). Multiple Attribute Decision Making: Methods and Applications.
- Belton, V., & Stewart, T. J. (2002). Multiple Criteria Decision Analysis: An Integrated Approach.

If you want, I can:
- - generate a ready-to-use MCDA template (performance matrix + weight elicitation + calculation steps) for this note,
  - create linked subnotes for AHP, TOPSIS, PROMETHEE with method-specific steps,
  - or produce a small Obsidian table or Dataview-ready structure to manage alternatives and criteria.
