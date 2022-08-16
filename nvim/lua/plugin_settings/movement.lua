-- Accelerated JK
vim.keymap.set('n', 'j', '<Plug>(accelerated_jk_gj)')
vim.keymap.set('n', 'k', '<Plug>(accelerated_jk_gk)')

-- Hop
require('hop').setup()
vim.keymap.set('n', '<leader>w', require('hop').hint_words)
vim.keymap.set('n', '<leader>j', require('hop').hint_lines)
vim.keymap.set('n', '<leader>f', require('hop').hint_char1)

-- Nvim Treehopper
vim.keymap.set({'v', 'o'}, 'm', ":lua require('tsht').nodes()<cr>")
