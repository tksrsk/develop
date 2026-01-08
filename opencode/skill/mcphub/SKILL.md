---
name: mcphub
description: Execute tasks with temporary MCP server activation
license: MIT
compatibility: opencode
---

## What I do

I execute a complete workflow for task-specific MCP server management:
1. **Check** - Verify available servers and confirm correct server names
2. **Start** - Activate required MCP servers for the specific task
3. **Execute** - Perform the requested task using the activated servers
4. **Stop** - Deactivate MCP servers after task completion

> [!Info]
> Command to use for checking server status:
> ```bash
> curl -s -X 'GET' 'http://localhost:37373/api/servers' | jq -r '.servers[] | select(.name == "<server_name>") | "\(.name): \(.status | if . == "connected" then "enabled" else "disabled" end)"'
> ```

> [!Info]
> Command to use for checking disabled servers:
> ```bash
> jq -r '.mcpServers | to_entries[] | select(.value.disabled == true) | .key' /resources/mcp/mcpservers.json
> ```

> [!NOTE]
> Command for starting:
> ```bash
> jq '.mcpServers."<server_name>".disabled = false' /resources/mcp/mcpservers.json > /tmp/mcpservers.json && mv /tmp/mcpservers.json //resources/mcp/mcpservers.json
> ```

> [!NOTE]
> Command for stopping:
> ```bash
> jq '.mcpServers."<server_name>".disabled = true' /resources/mcp/mcpservers.json > /tmp/mcpservers.json && mv /tmp/mcpservers.json //resources/mcp/mcpservers.json
> ```

> [!IMPORTANT]
> Workflow:
> 
> **Complete task execution:**
> 1. Check available servers and confirm the correct server name using the disabled servers check command
> 2. Start required MCP servers for the task
> 3. Execute the requested task using activated servers
> 4. Stop the MCP servers after task completion

## When to use me

Use when you need to:
- Execute tasks that require specific MCP servers
- Automatically manage server lifecycle during task execution
- Ensure servers are only active when needed

## Usage Examples

**Example 1 - Git repository analysis:**
User request: "Analyze the git repository history"

Workflow:
1. Check available servers and confirm the git server name using disabled servers check command
2. Start git server
3. Execute repository analysis using git tools
4. Stop git server after completion

**Example 2 - Database query:**
User request: "Query the sample database"

Workflow:
1. Check available servers and confirm the sample db server name using disabled servers check command
2. Start sample db server
3. Execute database queries
4. Stop sample db server after completion
