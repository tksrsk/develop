vim.opt.breakindent = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.concealcursor = 'nv'
vim.opt.conceallevel = 2
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic', 'linematch:100' })
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencodings = { 'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis' }
vim.opt.fileformat = 'unix'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.fillchars = { fold = ' ', foldopen = '╭', foldclose = '├', eob = ' ', diff = '' }
vim.opt.foldcolumn = 'auto'
vim.opt.foldlevel = 999
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldtext = ''
vim.opt.inccommand = 'split'
vim.opt.jumpoptions = 'view'
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }
vim.opt.mousemoveevent = true
vim.opt.number = true
vim.opt.sessionoptions:append({ 'winpos', 'localoptions' })
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'auto:3'
vim.opt.splitbelow = true
vim.opt.splitkeep = 'screen'
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.smoothscroll = true
vim.opt.tabstop = 4
vim.opt.updatetime = 500
