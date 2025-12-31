# Process AI Chat Prompt

Process an AI LLM chat export and extract atomic knowledge notes.

## Context

You are processing an AI conversation from the No Clocks Knowledge Vault. The goal is to extract valuable, reusable knowledge into atomic notes that integrate with the existing vault structure.

## Input

An AI chat file from `04-RESOURCES/Integrations/Chats/` with conversation content.

## Tasks

1. **Analyze** the chat to identify extractable insights:
   - Definitions and concepts
   - Code examples
   - Procedures and guides
   - Resource lists
   - Novel connections and insights

2. **Create** atomic notes for each valuable insight:
   - Use appropriate note type (Definition, Code, Guide, Slipbox note)
   - Follow naming conventions
   - Include `source_chat` frontmatter linking back
   - Add proper Topic tags matching MOCs

3. **Update** the source chat:
   - Set `extraction_status: complete`
   - Populate `extracted_notes` array
   - Mark checklist items as done

## Output Format

### Insights Identified

| # | Insight | Type | Confidence | Target File |
|---|---------|------|------------|-------------|
| 1 | {insight} | Definition | high | `Definition - {Term}.md` |
| 2 | {insight} | Slipbox | medium | `{Concept}.md` |

### Notes Created

For each note, provide:
- Complete file path
- Full frontmatter
- Note content
- Topic tags applied

### Source Chat Updates

```yaml
extraction_status: complete
extracted_notes:
  - "[[Definition - Term1]]"
  - "[[Concept Note]]"
```

## Guidelines

- Be selective: extract only genuinely valuable insights
- Verify accuracy before marking high confidence
- Use spaced topic tags: `Topic/Information Theory`
- Cross-link related extracted notes
- Include sufficient context in each note
