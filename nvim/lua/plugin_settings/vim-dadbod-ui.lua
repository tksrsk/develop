-- Configs
local api = vim.api

api.nvim_set_var('db_ui_use_nerd_fonts', 1)
api.nvim_set_var('db_ui_auto_execute_table_helpers', 1)
api.nvim_set_var('db_ui_table_helpers', {
    mysql = {
        Columns = 'show columns from {optional_schema}{table}'
    }
})
