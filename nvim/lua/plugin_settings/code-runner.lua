-- Menu
vim.cmd([[
    amenu <silent> PopUp.Run                <cmd>SnipRun<cr>
    amenu <silent> 10.41 Tools.Runner.Close <cmd>SnipClose<cr>
    amenu <silent> 10.42 Tools.Runner.Reset <cmd>SnipReset<cr>
]])


-- Sniprun
require('sniprun').setup({
    display = { 'TempFloatingWindow' }
})
