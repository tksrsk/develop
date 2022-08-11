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
lsp.configure('sqls', { on_attach = require('sqls').on_attach })
lsp.setup_nvim_cmp({
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp_signature_help'},
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'luasnip'},
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
})
lsp.setup()

-- Diagnosticls configs
local dls = require('diagnosticls-configs')
dls.init({ default_config = true })
dls.setup()

-- Goto Preview
require('goto-preview').setup({
    default_mappings = true,
    resizing_mappings = true,
})
