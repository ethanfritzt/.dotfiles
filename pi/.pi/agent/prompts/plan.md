---
description: Create a plan for the provided context
---
Create a concise implementation plan.

If the user provides context with this skill, use that context to draft the plan.

If no context is provided, use the relevant context from the conversation above, such as issues identified in the most recent code review or grade.

Focus on the changes needed to accomplish the goal or remediate the identified issues.

## Output

* Brief summary of the goal
* Ordered implementation steps
* Files or areas likely to change
* Testing or validation needed

Keep the plan practical, concise, and implementation-focused.

Do not make code changes unless explicitly asked.

