# Extract Knowledge from AI Chat

Extract atomic knowledge notes from an AI conversation.

## Instructions

Given an AI chat conversation, identify and extract valuable knowledge into atomic notes.

## What to Extract

### Definitions
- Technical terms explained
- Concepts defined
- Acronyms expanded
- Create as: `Definition - {Term}.md`

### Insights
- Novel connections between ideas
- Key realizations from discussion
- Paradigm-shifting perspectives
- Create as: `{Insight Name}.md` in Slipbox

### Code Examples
- Working code snippets
- Implementation patterns
- Configuration examples
- Create as: `Code - {Lang} - {Desc}.md`

### Procedures
- Step-by-step instructions
- How-to guides
- Workflows described
- Create as: `Guide - {Topic}.md`

### Lists
- Tool recommendations
- Resource collections
- Best practices lists
- Create as: `List - {Category}.md`

## Extraction Criteria

**Extract if:**
- Concept is explained clearly enough to stand alone
- Information is accurate and verifiable
- Content has lasting reference value
- Idea connects to existing knowledge

**Don't extract if:**
- Just a question without substantive answer
- Context-specific to the conversation
- Outdated or superseded information
- Already exists in vault

## Required Metadata

Each extracted note must include:

```yaml
source_chat: "[path/to/original/chat](path/to/original/chat.md)"
source_provider: Perplexity|ChatGPT|Claude|Cursor|Copilot
confidence: high|medium|low
```

Confidence levels:
- `high`: Well-established facts, cited sources
- `medium`: Generally accepted, some verification needed
- `low`: Speculative, requires further research

## Output Format

For each insight identified:

```markdown
### Insight: {Title}

**Type:** Definition|Insight|Code|Guide|List
**Confidence:** high|medium|low
**Target File:** {path/to/new/note.md}
**Topics:** Topic/X, Topic/Y

**Content Preview:**
{First paragraph or key points}

**Related Existing Notes:**
- [Existing Note 1](Existing Note 1.md)
- [Existing Note 2](Existing Note 2.md)
```
