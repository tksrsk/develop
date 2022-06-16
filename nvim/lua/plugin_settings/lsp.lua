-- Configs
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.configure('sqls', { on_attach = require('sqls').on_attach })
lsp.setup()

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
