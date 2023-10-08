-- Lsp Zero
local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr) lsp.default_keymaps({ bufnr = bufnr, preserve_mappings = false }) end)
lsp.set_sign_icons({ error = '', warn = '', hint = '', info = '' })
vim.diagnostic.config({ virtual_text = false })

-- Mason
require('mason').setup();
require('mason-lspconfig').setup({
    automatic_installation = true,
    handlers = {
        lsp.default_setup,
        lua_ls = function() require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls()) end,
        efm = function()
            local languages = require('efmls-configs.defaults').languages()
            require('lspconfig').efm.setup({ settings = { languages = languages } })
        end,
    },
})

-- Glance
require('glance').setup()
