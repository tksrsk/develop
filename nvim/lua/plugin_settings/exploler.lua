-- Menu
vim.cmd([[
    amenu <silent> 10.11 Tools.Exproler <cmd>NvimTreeToggle<cr>
]])

-- Configs
require('nvim-tree').setup({
    auto_close = true,
    hijack_cursor = true,
    update_cwd = true,
    diagnostics = { enable = true },
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
    filters = { dotfiles = true },
})
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_respect_buf_cwd = 1
