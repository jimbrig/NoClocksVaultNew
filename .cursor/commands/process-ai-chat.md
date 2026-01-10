# Process AI Chat

Process an AI chat export and extract atomic knowledge notes.

## Instructions

1. Read the target chat file in `04-RESOURCES/Integrations/Chats/`
2. Verify frontmatter is complete (add if missing)
3. Analyze content to identify extractable insights:
   - Definitions and concepts
   - Code examples
   - Procedures and guides
   - Curated lists
   - Pure insights
4. For each insight, create the appropriate note type
5. Update the source chat:
   - Set `extraction_status: complete`
   - Populate `extracted_notes` array with links
   - Mark checklist items as complete

## Extraction Categories

| Insight Type | Create As | Location |
|--------------|-----------|----------|
| Definition/concept | `Definition - {Term}.md` | `04-RESOURCES/Definitions/Dictionary/` |
| Acronym | `Definition - {Name (ACRONYM)}.md` | `04-RESOURCES/Definitions/Acronyms/` |
| Code snippet | `Code - {Lang} - {Desc}.md` | `04-RESOURCES/Code/{Language}/` |
| How-to guide | `Guide - {Topic}.md` | `04-RESOURCES/Guides/` |
| Tool list | `List - {Category}.md` | `04-RESOURCES/Lists/` |
| Pure insight | `{Concept Name}.md` | `01-SLIPBOX/` |

## Required Fields for Extracted Notes

```yaml
source_chat: "[path/to/chat](path/to/chat.md)"
source_provider: Perplexity|ChatGPT|Claude|Cursor|Copilot
confidence: high|medium|low
```

## Topic Tag Conventions

Use spaced tags to match MOC queries:
- `Topic/Information Theory`
- `Topic/Computer Science`
- `Topic/Quantum Mechanics`
- `Topic/Data Science`

## Output

1. List of insights identified
2. Notes created with paths
3. Updated source chat frontmatter
4. Summary of processing

## Example Workflow

```
Input: 04-RESOURCES/Integrations/Chats/2024-12-31_Perplexity_Physics.md

Processing...
- Identified 5 extractable insights
- Created: Definition - Entropy.md
- Created: Definition - Thermodynamics.md
- Created: Black Hole Physics.md (slipbox)
- Created: Guide - Statistical Mechanics.md
- Created: Code - Python - Entropy Calculation.md

Updated source chat:
- extraction_status: complete
- extracted_notes: [5 links]
```
