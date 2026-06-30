---
description: Manage primitives (instruction, prompt, agent, skill, hook) in the shared APM package — add, edit, or delete
allowed-tools: [Bash, Read, Write]
---

# Manage primitives in the APM package

## 1. Determine operation

Ask the user what they want to do:
- **Add**: Create a new primitive
- **Edit**: Modify an existing primitive
- **Delete**: Remove an existing primitive

If editing or deleting, identify the target file by listing existing primitives or asking the user.

## 2. Gather requirements

Ask the user (using `ask-user` tool if available):
- **Name**: identifier for the primitive (kebab-case)
- **Purpose**: what it should do / what to change

## 3. Determine type

Choose the appropriate primitive type based on the use case:

| Type | When to use | Deploy path |
|------|-------------|-------------|
| **instruction** | Always-active rules, coding standards, architecture policies | `.apm/instructions/<name>.md` |
| **prompt** | User-invoked task templates (e.g. "commit", "deploy", "format") | `.apm/prompts/<name>.prompt.md` |
| **agent** | Specialized persona with defined role, tools, and delegation rules | `.apm/agents/<name>.agent.md` |
| **skill** | Context-triggered knowledge/procedures the agent uses automatically | `.apm/skills/<name>/SKILL.md` |
| **hook** | Event-driven automation triggered before/after agent actions | `.apm/hooks/<name>.json` |

### Notes on prompt

A single `.apm/prompts/<name>.prompt.md` file is deployed as:
- **Copilot**: prompt (`.github/prompts/`)
- **Claude Code / Cursor / OpenCode / Gemini / Windsurf**: command (slash-command)
- **Kiro / Codex**: not supported (silently skipped)

There is no separate `.apm/commands/` directory — prompts and commands share the same source file.

### Selection priority

When a use case could fit multiple types, prefer in this order:
1. **skill** — highest cross-tool compatibility; use when the agent can decide when to apply it
2. **prompt** — when the user must explicitly invoke it and it requires structured steps
3. **instruction** — when it must always be in context regardless of task
4. **agent** — when a distinct persona/role with specific permissions is needed
5. **hook** — when it must trigger automatically on a lifecycle event

## 4. Create or edit files

The APM package is at `~/.config/develop/apm`.

### instruction → `.apm/instructions/<name>.md`

```markdown
---
name: <name>
description: <what this instruction enforces>
inclusion: always  # or fileMatch with globs
---

<Rules and guidelines in markdown>
```

### prompt → `.apm/prompts/<name>.prompt.md`

Deployed as prompt (Copilot) or command/slash-command (Claude, Cursor, etc.).

```markdown
---
description: <what this prompt does>
allowed-tools: [<tools needed>]
---

# <Title>

<Step-by-step instructions for the agent>
```

### agent → `.apm/agents/<name>.agent.md`

```markdown
---
name: <name>
description: <role description>
---

You are the **<Name>**.

<Role definition, rules, and workflow>
```

### skill → `.apm/skills/<name>/SKILL.md`

```markdown
---
name: <name>
description: <what this skill does>
license: MIT
---

## What I do

<Detailed explanation>

## When to use me

<Trigger conditions>

## Important Instructions

<Step-by-step procedure>
```

Plus any supporting files (config, data) in the same directory.

### hook → `.apm/hooks/<name>.json`

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "hooks": [
          {"type": "command", "command": "<shell command>", "timeout": 10}
        ]
      }
    ]
  }
}
```

Supported events: `PreToolUse`, `PostToolUse`, `PreInvocation`, `PostInvocation`, `Stop`.

## 5. Apply

```bash
apm install -g ~/.config/develop/apm && apm compile -g
```
