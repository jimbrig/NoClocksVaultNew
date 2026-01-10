# Summarize AI Chat

Generate a structured summary of an AI conversation for the chat note.

## Instructions

Read the AI chat content and generate:
1. Abstract summary (2-3 sentences)
2. List of topics covered
3. Key insights identified
4. Suggested notes to extract

## Output Format

### Abstract

> [!ABSTRACT] Chat Summary
> {2-3 sentence summary of the conversation, highlighting the main topic, key discoveries, and overall significance}

### Topics Covered

```yaml
topics:
  - {Topic 1}
  - {Topic 2}
  - {Topic 3}
```

### Key Insights

```yaml
key_insights:
  - {Insight 1 - one sentence}
  - {Insight 2 - one sentence}
  - {Insight 3 - one sentence}
```

### Extraction Checklist

```markdown
> [!TIP] Insights to Extract
> - [ ] {Concept 1} → [Definition - {Term}](Definition - {Term}.md)
> - [ ] {Concept 2} → [Definition - {Term}](Definition - {Term}.md)
> - [ ] {Insight 1} → [{Slipbox Note}]({Slipbox Note}.md)
> - [ ] {Code example} → [Code - {Lang} - {Desc}](Code - {Lang} - {Desc}.md)
> - [ ] {Procedure} → [Guide - {Topic}](Guide - {Topic}.md)
```

## Quality Guidelines

- Be concise but comprehensive
- Identify non-obvious connections
- Prioritize novel insights over common knowledge
- Link to existing vault content where applicable
- Use proper topic tags that match MOCs
