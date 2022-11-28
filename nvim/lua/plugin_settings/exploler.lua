-- Configs
require('nvim-tree').setup({
    hijack_cursor = true,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    view = {
        float = {
            enable = true,
            open_win_config = {
                border = 'solid',
                col = 0,
                height = 999,
            }
        }
    },
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
        show_on_open_dirs = false,
    },
    git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
    },
    filters = { dotfiles = true },
})
