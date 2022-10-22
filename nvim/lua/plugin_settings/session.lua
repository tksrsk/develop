-- Auto Session
require('auto-session').setup({
    log_level = 'error',
    auto_session_allowed_dirs = {
        '/project/*/*',
        vim.env.HOST_ROOT..'/.config/develop',
    },
    cwd_change_handling = {
        restore_upcoming_session = true,
        pre_cwd_changed_hook = nil,
        post_cwd_changed_hook = nil,
    },
})

-- Project
require('project_nvim').setup({
    ignore_lsp = { 'bashls', 'sqls' },
    silent_chdir = false,
    scope_chdir = 'tab',
})
