-- Menu
vim.cmd([[
    amenu <silent> 40.01 LSP.Hover              <cmd>lua vim.lsp.buf.hover()<cr>
    amenu <silent> 40.02 LSP.Format             <cmd>lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 40.03 LSP.Rename             <cmd>lua vim.lsp.buf.rename()<cr>
    amenu <silent> 40.04 LSP.Code\ action       <cmd>lua vim.lsp.buf.code_action()<cr>
    amenu <silent> 40.11 LSP.Diagnostic.Loclist <cmd>lua vim.diagnostic.setloclist()<cr>
    amenu <silent> 40.11 LSP.Diagnostic.Prev    <cmd>lua vim.diagnostic.goto_prev()<cr>
    amenu <silent> 40.12 LSP.Diagnostic.Next    <cmd>lua vim.diagnostic.goto_prev()<cr>
]])

-- Configs
vim.diagnostic.config({ virtual_text = false })
local servers = require('nvim-lsp-installer').get_installed_servers()
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, server in pairs(servers) do
    local opts = { capabilities = capabilities }

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
    elseif server.name == 'sqls' then
        opts.on_attach = function (client, bufnr)
            require('sqls').on_attach(client, bufnr)
        end
    end

    server:setup(opts)
end

-- Lsp Signature
require('lsp_signature').setup({
    handler_opts = { border = 'solid' }
})

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
