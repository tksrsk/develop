local group = vim.api.nvim_create_augroup('rc', { clear = true })

vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
    group = group,
    callback = function() vim.hl.on_yank({ timeout = 200 }) end
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

vim.api.nvim_create_autocmd({ 'MenuPopup' }, {
    group = group,
    callback = function()
        local bufnr = vim.fn.bufnr()
        vim.keymap.set("n", "<MouseMove>", "", { buffer = bufnr })
        vim.api.nvim_create_autocmd({ 'CursorMoved' }, {
            group = group,
            once = true,
            callback = function() vim.keymap.del("n", "<MouseMove>", { buffer = bufnr }) end
        })
    end
})

vim.api.nvim_create_autocmd({ 'LspAttach' }, {
    group = group,
    callback = function(args)
        local client, _ = vim.lsp.get_client_by_id(args.data.client_id)

        if client.supports_method('textDocument/foldingRange') then
            vim.wo.foldexpr = 'v:lua.vim.lsp.foldexpr()'
        end
    end,
})

vim.api.nvim_create_autocmd({ 'TabEnter' }, {
    group = group,
    callback = function()
        local prev = vim.fn.tabpagenr('#')
        local last = vim.fn.tabpagenr('$')
        local curr = vim.fn.tabpagenr()

        if prev > 0 then
            vim.g.prevtab = prev > curr and prev - 1 or prev
        else
            vim.g.prevtab = curr == last and curr - 1 or curr
        end
    end
})

vim.api.nvim_create_autocmd({ 'TabClosed' }, {
    group = group,
    callback = function()
        local prev = vim.g.prevtab

        vim.schedule(function()
            if vim.fn.tabpagenr('#') == 0 then
                vim.cmd('tabnext ' .. prev)
            end
        end)
    end
})
