-- Copilot
require('copilot').setup({
    panel = { enabled = false },
    suggestion = { enabled = false },
})

-- Avante
require('avante').setup({
    provider = 'copilot/claude-3.5-sonnet',
    copilot = { hide_in_model_selector = true },
    system_prompt = function()
        return require('mcphub').get_hub_instance():get_active_servers_prompt()
    end,
    custom_tools = function()
        return { require('mcphub.extensions.avante').mcp_tool() }
    end,
    vendors = {
        ['copilot/claude-3.5-sonnet'] = { __inherited_from = 'copilot', model = 'claude-3.5-sonnet' },
        ['copilot/claude-3.7-sonnet'] = { __inherited_from = 'copilot', model = 'claude-3.7-sonnet' },
        ['copilot/gpt-4o-2024-08-06'] = { __inherited_from = 'copilot', model = 'gpt-4o-2024-08-06' },
        ['copilot/gemini-2.0-flash-001'] = { __inherited_from = 'copilot', model = 'gemini-2.0-flash-001' },
    }
})

-- Mcphub
require('mcphub').setup({
    config = '/resources/mcp/mcpservers.json',
})
