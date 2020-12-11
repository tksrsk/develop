-- Menu
vim.cmd([[
    amenu <silent> 10.01 .\ DB    :DBUIToggle<cr>
]])

-- Configs
vim.g.db_ui_save_location = '/resources/db_ui'
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_auto_execute_table_helpers = 1
vim.g.db_ui_table_helpers = {
    mysql = { Columns = 'show columns from {optional_schema}{table}' }
}
