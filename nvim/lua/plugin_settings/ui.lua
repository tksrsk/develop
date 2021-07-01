-- Hop
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>HopWordBC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>HopWordAC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>HopLineStartBC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>HopLineStartAC<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>HopChar1<cr>", {})

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
