---
description: Add a new skill or command to the shared APM package
allowed-tools: [Bash, Read, Write]
---

# Add a new primitive to the APM package

## 1. Gather requirements

Ask the user (using `ask-user` tool if available) what they want to add. Determine:
- **Name**: identifier for the primitive (kebab-case)
- **Purpose**: what it should do

## 2. Determine type automatically

- **Command**: User explicitly invokes it (e.g. "commit", "deploy", "format")
- **Skill**: Agent uses it automatically based on context (e.g. "login when login screen appears")

## 3. Create files

The APM package is at `~/.config/apm`.

**For a skill** → `.apm/skills/<name>/`
- `SKILL.md` with frontmatter (`name`, `description`, `license: MIT`)
- Sections: "What I do", "When to use me", "Important Instructions"
- Any supporting files as needed

**For a command** → `.apm/prompts/<name>.prompt.md`
- Frontmatter: `description`, optionally `input`, `allowed-tools`
- Body: step-by-step instructions for the agent

## 4. Apply

```bash
apm install -g ~/.config/apm && apm compile -g
```
