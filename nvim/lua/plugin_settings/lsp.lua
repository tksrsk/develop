-- Configs
require('nvim-lsp-installer').setup()
local servers = {}
for _, server in ipairs(require('nvim-lsp-installer.servers').get_installed_server_names()) do
    servers[server] = {}
end

require('nvim-lsp-setup').setup({
    on_attach = function() end,
    servers = vim.tbl_deep_extend('keep', {
        sqls = {
            on_attach = function (client, bufnr)
                require('sqls').on_attach(client, bufnr)
            end
        },
        sumneko_lua = {
            settings = {
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
        },
    }, servers)
})

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
