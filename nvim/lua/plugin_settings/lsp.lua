vim.keymap.set('i', '<tab>', function()
    if vim.snippet.active({ direction = 1 }) then
        return '<cmd>lua vim.snippet.jump(1)<cr>'
    elseif not vim.lsp.inline_completion.get() then
        return '<tab>'
    end
end, { expr = true, replace_keycodes = true })

vim.diagnostic.config({
    virtual_text = false,
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

-- Lspkind
require('lspkind').setup({ preset = 'codicons' })

-- Glance
require('glance').setup()

-- Eagle
require('eagle').setup({ border = 'solid' })
