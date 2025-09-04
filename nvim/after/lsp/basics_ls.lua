return {
    settings = {
        buffer = {
            enable = true,
            minCompletionLength = 3,
            matchStrategy = 'exact',
        },
        path = {
            enable = true,
        },
        snippet = {
            enable = true,
            sources = {'/root/.local/share/nvim/lazy/friendly-snippets/package.json'},
            matchStrategy = 'fuzzy',
        },
    }
}
