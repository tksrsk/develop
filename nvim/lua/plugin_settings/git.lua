-- Gitsigns
require('gitsigns').setup({
    signs = {
        add = { show_count = true },
        change = { show_count = true },
        delete = { show_count = true },
        topdelete = { show_count = true },
        changedelete = { show_count = true },
    }
})

-- Git blame
vim.g.gitblame_date_format = '%Y/%m/%d %H:%M:%S'
