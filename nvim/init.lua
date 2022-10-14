-- Options
vim.opt.clipboard = 'unnamedplus'
vim.opt.conceallevel = 1
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic' })
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencodings = { 'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis' }
vim.opt.fileformat = 'unix'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.fillchars = { foldopen = '▾', foldclose = '▸', eob = ' ', diff = '' }
vim.opt.foldcolumn = 'auto:4'
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 4
vim.opt.inccommand = 'split'
vim.opt.jumpoptions = 'view'
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'auto:3'
vim.opt.splitkeep = 'screen'
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.timeoutlen = 0

-- Autocmd
vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
    callback = function() vim.highlight.on_yank({ timeout = 200 }) end
})

-- Exe command
vim.cmd([[
    aunmenu PopUp
    packadd packer.nvim
]])

local load_config = function (config) pcall(require, 'plugin_settings.'..config) end

require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true, setup = load_config('packer')}
    use {
        {'gpanders/editorconfig.nvim', config = load_config('edit-support')},
        {
            'kylechui/nvim-surround', 'ZhiyuanLck/smart-pairs', 'winston0410/commented.nvim', 'folke/which-key.nvim',
            'monkoose/matchparen.nvim', 'kevinhwang91/nvim-bqf', 'johmsalas/text-case.nvim', 'delphinus/cellwidths.nvim',
        }
    }
    use {
        {'rmagatti/auto-session', config = load_config('session')},
        {'ahmedkhalf/project.nvim'}
    }
    use {'NTBBloodbath/rest.nvim', config = load_config('rest-client')}
    use { 'michaelb/sniprun', run = 'bash ./install.sh', config = load_config('code-runner')}
    use {
        {'navarasu/onedark.nvim', config = load_config('ui')},
        {
            'NvChad/nvim-colorizer.lua', 'lewis6991/foldsigns.nvim', 'yamatsum/nvim-cursorline', 'lukas-reineke/indent-blankline.nvim',
            'chentoast/marks.nvim', 'kevinhwang91/nvim-hlslens', 'sitiom/nvim-numbertoggle',
        },
    }
    use {
        {'kevinhwang91/nvim-ufo', config = load_config('fold')},
        {'kevinhwang91/promise-async'},
    }
    use {
        {'nvim-lualine/lualine.nvim', config = load_config('statusline')},
        {'WhoIsSethDaniel/lualine-lsp-progress'},
    }
    use {
        {'rainbowhxch/accelerated-jk.nvim', config = load_config('movement')},
        {'phaazon/hop.nvim', 'mfussenegger/nvim-treehopper', 'nacro90/numb.nvim'},
    }
    use {
        {'lewis6991/gitsigns.nvim', config = load_config('git')},
        {'nvim-lua/plenary.nvim', 'TimUntersberger/neogit', 'sindrets/diffview.nvim'},
    }
    use {
        {'Shougo/denite.nvim', config = load_config('fuzzy-finder')},
        {'tk-shirasaka/denite-utils'},
    }
    use {
        {'hrsh7th/nvim-cmp', config = load_config('completion')},
        {
            'onsails/lspkind.nvim', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp-signature-help', 'saadparwaiz1/cmp_luasnip', 'L3MON4D3/LuaSnip', 'rafamadriz/friendly-snippets',
        },
    }
    use {
        {'neovim/nvim-lspconfig', config = load_config('lsp')},
        {
            'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'rmagatti/goto-preview',
            'VonHeikemen/lsp-zero.nvim', 'creativenull/diagnosticls-configs-nvim'
        },
    }
    use {'akinsho/toggleterm.nvim', config = load_config('terminal')}
    use {'tk-shirasaka/ejdict.nvim'}
    use {
        {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = load_config('treesitter')},
        {
            'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/nvim-treesitter-context',
            'nvim-treesitter/playground', 'p00f/nvim-ts-rainbow', 'JoosepAlviste/nvim-ts-context-commentstring',
        },
    }
    use {
        {'mfussenegger/nvim-dap', config = load_config('debugger')},
        {
            'rcarriga/nvim-dap-ui'
        }
    }
    use {'nanotee/sqls.nvim', config = load_config('dbms')}
    use {
        {'kyazdani42/nvim-tree.lua', config = load_config('exploler')},
        {'kyazdani42/nvim-web-devicons'},
    }
    use {
        {'nvim-orgmode/orgmode', config = load_config('orgmode')},
        {'akinsho/org-bullets.nvim', 'lukas-reineke/headlines.nvim'}
    }
end)
