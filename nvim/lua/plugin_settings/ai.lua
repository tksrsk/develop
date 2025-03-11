-- Copilot
require('copilot').setup({
    panel = { enabled = false },
    suggestion = { enabled = false },
    server_opts_overrides = {
        trace = 'verbose',
        cmd = { '/root/.local/share/nvim/mason/packages/copilot-language-server/node_modules/@github/copilot-language-server/native/linux-x64/copilot-language-server', '--stdio' },
        settings = {
            advanced = {
                listCount = 10,
                inlineSuggestCount = 3,
            },
        },
    },
})

-- Avante
require('avante').setup({
    provider = 'copilot',
    copilot = { model = 'claude-3.5-sonnet' },
})
