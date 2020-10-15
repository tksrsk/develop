-- Configs
local configs = require'nvim-treesitter.configs'

configs.setup {
    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = true },
        smart_rename = { enable = true },
        navigation = { enable = true },
    },
}
