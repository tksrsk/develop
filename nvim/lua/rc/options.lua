vim.opt.clipboard = 'unnamedplus'
vim.opt.concealcursor ='nv'
vim.opt.conceallevel = 1
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic', 'linematch:20' })
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencodings = { 'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis' }
vim.opt.fileformat = 'unix'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.fillchars = { foldopen = '▾', foldclose = '▸', eob = ' ', diff = '' }
vim.opt.foldcolumn = 'auto'
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 99
vim.opt.inccommand = 'split'
vim.opt.jumpoptions = 'view'
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }
vim.opt.number = true
vim.opt.sessionoptions:append({ 'winpos', 'localoptions' })
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'auto:3'
vim.opt.splitkeep = 'screen'
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.timeoutlen = 0
vim.opt.updatetime = 500
