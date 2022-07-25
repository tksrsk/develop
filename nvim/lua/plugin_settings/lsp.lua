-- Menu
vim.cmd([[
    amenu <silent> PopUp.Definition     <cmd>lua require('goto-preview').goto_preview_definition()<cr>
    amenu <silent> PopUp.References     <cmd>lua require('goto-preview').goto_preview_references()<cr>
    amenu <silent> PopUp.Type           <cmd>lua require('goto-preview').goto_preview_type_definition()<cr>
    amenu <silent> PopUp.Implementation <cmd>lua require('goto-preview').goto_preview_implementation()<cr>
]])

-- Configs
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.on_attach(require('nvim-navic').attach)
lsp.configure('sqls', { on_attach = require('sqls').on_attach })
lsp.setup()

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
})
