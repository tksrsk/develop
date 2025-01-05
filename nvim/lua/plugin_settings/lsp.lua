vim.diagnostic.config({
    virtual_text = false,
    jump = { float = true },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        }
    }
})

-- Mason
require('mason').setup();
require('mason-lspconfig').setup({
    automatic_installation = true,
    handlers = {
        function(server) require('lspconfig')[server].setup({}) end,
        lua_ls = function() require('lspconfig').lua_ls.setup({
            settings = {
                Lua = {
                    runtime = { version = 'LuaJIT' },
                    diagnostics = { globals = { 'vim' } },
                    workspace = { library = { vim.env.VIMRUNTIME } }
                }
            }
        }) end,
        efm = function()
            local languages = require('efmls-configs.defaults').languages()
            require('lspconfig').efm.setup({ settings = { languages = languages } })
        end,
    },
})

-- Glance
require('glance').setup()

-- Eagle
require('eagle').setup({ border = 'solid' })
