-- Menu
vim.cmd([[
    amenu <silent> 10.11 Tools.Exproler <cmd>NvimTreeToggle<cr>
]])

-- Configs
require('nvim-tree').setup({
    hijack_cursor = true,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    renderer = {
        highlight_git = true,
        full_name = true,
        indent_markers = {
            enable = true,
            inline_arrows = false,
        },
        highlight_opened_files = 'name',
    },
    update_focused_file = { enable = true },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    filters = { dotfiles = true },
})
