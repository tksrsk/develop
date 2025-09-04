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

-- Codecompanion
require('codecompanion').setup({
    extensions = {
        mcphub = {
            callback = 'mcphub.extensions.codecompanion',
            opts = {
                make_vars = true,
                make_slash_commands = true,
                show_result_in_chat = true
            }
        },
        vectorcode = { }
    }
})

-- Sg
require('sg').setup()

-- Mcphub
require('mcphub').setup({
    config = '/resources/mcp/mcpservers.json',
})
