-- Agentic
require('agentic').setup({
    provider = 'opencode-acp',
    windows = { width = 80 },
})

-- Mcphub
require('mcphub').setup({
    config = '/resources/mcp/mcpservers.json',
})
