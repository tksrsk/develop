local group = vim.api.nvim_create_augroup('rc', { clear = true })

vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
    group = group,
    callback = function() vim.highlight.on_yank({ timeout = 200 }) end
})

vim.api.nvim_create_autocmd({ 'FileType', 'BufEnter', 'WinEnter' }, {
    group = group,
    pattern = { '*' },
    callback = function()
        if vim.opt.filetype:get() == 'markdown' then
            vim.cmd([[amenu enable PopUp.Preview]])
        else
            vim.cmd([[amenu disable PopUp.Preview]])
        end

        if string.match(vim.api.nvim_buf_get_name(0), 'package.json') then
            vim.cmd([[amenu enable PopUp.Node\ Packages]])
        else
            vim.cmd([[amenu disable PopUp.Node\ Packages]])
        end
    end
})
