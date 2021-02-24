-- Menu
vim.cmd([[
    amenu <silent> 10.11 .\ Exproler  :NvimTreeToggle<cr>
]])

-- Configs
vim.g.nvim_tree_ignore = { 'node_modules', 'vendor', 'Vendor' }
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
