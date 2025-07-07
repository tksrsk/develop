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
})

-- Glance
require('glance').setup()

-- Eagle
require('eagle').setup({ border = 'solid' })
