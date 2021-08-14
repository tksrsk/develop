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
})

-- Project
require('project_nvim').setup()
