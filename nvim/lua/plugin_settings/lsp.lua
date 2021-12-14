-- Menu
vim.cmd([[
    amenu <silent> 40.01 Language\ Support.Hover    <cmd>lua vim.lsp.buf.hover()<cr>
    amenu <silent> 40.02 Language\ Support.Format   <cmd>lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 40.03 Language\ Support.Rename   <cmd>lua vim.lsp.buf.rename()<cr>
]])

-- Configs
local servers = require('nvim-lsp-installer').get_installed_servers()

for _, server in pairs(servers) do
    local opts = {}

    if server.name == 'sumneko_lua' then
        opts.settings = {
            Lua = {
                diagnostics = { globals = { 'vim' } },
                workspace = {
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                    },
                },
            },
        }
    end

    server:setup(opts)
end

-- Lsp trouble
require('trouble').setup({
    mode = 'document_diagnostics',
    auto_open = true,
    auto_close = true,
})

-- Lsp Signature
require('lsp_signature').setup()

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
