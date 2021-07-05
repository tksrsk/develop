-- Menu
vim.cmd([[
    amenu <silent> 50.01 .כֿ\ Hover           <cmd>lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.02 .\ Format          <cmd>lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.03 .\ Rename          <cmd>lua vim.lsp.buf.rename()<cr>
]])

-- Configs
local servers = require('nvim-lsp-installer').get_installed_servers()
local on_attach = function() require('lsp_signature').on_attach() end

for _, server in pairs(servers) do
    local opts = { on_attach = on_attach }

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

require('lspconfig').sqls.setup({ on_attach = on_attach, cmd = { vim.env.HOME .. '/go/bin/sqls' }})

-- Lsp trouble
require('trouble').setup({
    mode = 'document',
    auto_open = true,
    auto_close = true,
})

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
