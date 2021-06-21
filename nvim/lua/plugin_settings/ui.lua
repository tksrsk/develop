-- Hop
vim.api.nvim_set_keymap('n', '<leader>b', ":HopWordBC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>w', ":HopWordAC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>k', ":HopLineBC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>j', ":HopLineAC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>f', ":HopChar1<cr>", {})

-- Colorscheme
require('neon').colorscheme()

-- Colorizer
require('colorizer').setup({ '*' }, { css = true })

-- Statusline
require('lualine').setup({
    options = { theme = 'neon' },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            { 'diagnostics', sources = { 'nvim_lsp' } },
        }
    },
    extensions = { 'nvim-tree' },
})

-- Which Key
require('which-key').setup({ show_help = false })

-- Hop
require('hop').setup({ create_hl_autocmd = false })

-- Foldsign
require('foldsigns').setup()

-- Numb
require('numb').setup()
