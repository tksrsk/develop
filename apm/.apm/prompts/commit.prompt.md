---
description: Generate a commit message from staged changes following the repository's conventions
allowed-tools: [Bash, Read]
---

# Generate Commit Message

Follow these steps:

1. Run `git log --oneline -20` to identify the commit message format used in this repository.

2. Run `git diff --cached` to understand the staged changes.

3. Draft a commit message that:
   - Follows the format/conventions observed in step 1
   - Accurately summarizes the staged changes from step 2

4. Present the proposed commit message using the `ask-user` tool and wait for feedback.

5. If the user requests changes, revise the message and present again (repeat from step 3).

6. Once approved, run `git commit -m "<approved message>"`.
