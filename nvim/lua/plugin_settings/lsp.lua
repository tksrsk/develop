-- Configs
require('nvim-lsp-installer').setup()
local servers = {}
for _, server in ipairs(require('nvim-lsp-installer.servers').get_installed_server_names()) do
    servers[server] = {}
end

require('nvim-lsp-setup').setup({
    on_attach = function() end,
    servers = vim.tbl_deep_extend('keep', {
        sqls = { on_attach = require('sqls').on_attach },
        sumneko_lua = require('lua-dev').setup(),
    }, servers)
})

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
