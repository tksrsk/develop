-- Menu
vim.cmd([[
    amenu <silent> 10.01 Tools.DBMS <cmd>DBUIToggle<cr>
]])

-- Configs
vim.g.db_ui_save_location = '/resources/db_ui'
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_auto_execute_table_helpers = 1
vim.g.db_ui_table_helpers = {
    mysql = {
        Update = 'UPDATE\n    {optional_schema}{table}\nSET\n    {optional_schema}{table}. = \nWHERE\n    {optional_schema}{table}.\nLIMIT 200'
    }
}
