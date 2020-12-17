-- Menu
vim.cmd([[
    amenu <silent> 10.11 .\ Exproler  :LuaTreeToggle<cr>
]])

-- Configs
vim.g.lua_tree_ignore = { 'node_modules', 'vendor', 'Vendor' }
vim.g.lua_tree_git_hl = 1
vim.g.lua_tree_follow = 1
vim.g.lua_tree_auto_close = 1
vim.g.lua_tree_hide_dotfiles = 1
