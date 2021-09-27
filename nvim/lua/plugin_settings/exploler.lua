-- Menu
vim.cmd([[
    amenu <silent> 10.11 Tools.Exproler <cmd>NvimTreeToggle<cr>
]])

-- Configs
require('nvim-tree').setup({
    auto_close = true,
    open_on_tab = true,
    hijack_cursor = true,
    update_cwd = true,
    lsp_diagnostics = true,
    update_focused_file = { enable = true }
})
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1
