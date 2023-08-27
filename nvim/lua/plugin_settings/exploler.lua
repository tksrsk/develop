-- Neo Tree
require('neo-tree').setup({
    sources = { 'filesystem', 'buffers', 'git_status', 'document_symbols' },
    source_selector = {
        winbar = true,
        sources = {
            { source = 'filesystem' },
            { source = 'buffers' },
            { source = 'git_status' },
            { source = 'document_symbols' },
        },
    },
    filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
    },
    buffers = {
        follow_current_file = { enabled = true },
    },
})
