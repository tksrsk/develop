-- Surround
require('surround').setup({})

-- Auto pairs
require('pears').setup(function(conf)
    conf.preset('html')
    conf.preset('tag_matching')
end)

-- Commented
require('commented').setup({
    prefer_block_comment = true,
    hooks = { before_comment = require("ts_context_commentstring.internal").update_commentstring },
})

-- Project
require('project_nvim').setup()

-- Which Key
require('which-key').setup({ show_help = false })

-- Numb
require('numb').setup()
