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
        function(server) vim.lsp.enable(server) end,
        lua_ls = function()
            vim.lsp.config('lua_ls', {
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        diagnostics = { globals = { 'vim' } },
                        workspace = { library = { vim.env.VIMRUNTIME } }
                    }
                }
            })
            vim.lsp.enable('lua_ls')
        end,
        efm = function()
            local languages = require('efmls-configs.defaults').languages()
            vim.lsp.config('efm', { settings = { languages = languages } })
            vim.lsp.enable('efm')
        end,
    },
})

-- Glance
require('glance').setup()

-- Eagle
require('eagle').setup({ border = 'solid' })
