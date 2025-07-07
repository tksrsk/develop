-- Copilot
require('copilot').setup({
    panel = { enabled = false },
    suggestion = { enabled = false },
})

-- Avante
require('avante').setup({
    provider = 'copilot',
    system_prompt = function()
        return require('mcphub').get_hub_instance():get_active_servers_prompt()
    end,
    custom_tools = function()
        return { require('mcphub.extensions.avante').mcp_tool() }
    end,
})

-- Mcphub
require('mcphub').setup({
    config = '/resources/mcp/mcpservers.json',
})
