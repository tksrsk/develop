-- Options
vim.opt.clipboard = 'unnamedplus'
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic' })
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencodings = { 'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis' }
vim.opt.fileformat = 'unix'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.fillchars = { foldopen = '▾', foldclose = '▸', eob = ' ', diff = '' }
vim.opt.foldcolumn = 'auto:4'
vim.opt.foldmethod = 'expr'
vim.opt.foldnestmax = 4
vim.opt.inccommand = 'split'
vim.opt.jumpoptions = 'view'
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 1
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'auto:3'
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

require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true, setup = "require('plugin_settings.packer')"}
    use {
        {'gpanders/editorconfig.nvim', config = "require('plugin_settings.edit-support')"},
        {
            'kylechui/nvim-surround', 'ZhiyuanLck/smart-pairs', 'winston0410/commented.nvim', 'ahmedkhalf/project.nvim',
            'folke/which-key.nvim', 'monkoose/matchparen.nvim', 'kevinhwang91/nvim-bqf', 'johmsalas/text-case.nvim',
        }
    }
    use {'NTBBloodbath/rest.nvim', config = "require('plugin_settings.rest-client')"}
    use { 'michaelb/sniprun', run = 'bash ./install.sh', config = "require('plugin_settings.code-runner')"}
    use {
        {'navarasu/onedark.nvim', config = "require('plugin_settings.ui')"},
        {
            'norcalli/nvim-colorizer.lua', 'lewis6991/foldsigns.nvim', 'yamatsum/nvim-cursorline',
            'lukas-reineke/indent-blankline.nvim', 'chentoast/marks.nvim', 'luukvbaal/stabilize.nvim',
            'kevinhwang91/nvim-hlslens', 'stevearc/dressing.nvim', 'anuvyklack/pretty-fold.nvim',
        },
    }
    use {
        {'nvim-lualine/lualine.nvim', config = "require('plugin_settings.statusline')"},
        {'arkav/lualine-lsp-progress', 'SmiteshP/nvim-navic'},
    }
    use {
        {'rainbowhxch/accelerated-jk.nvim', config = "require('plugin_settings.movement')"},
        {'phaazon/hop.nvim', 'mfussenegger/nvim-treehopper', 'nacro90/numb.nvim'},
    }
    use {
        {'lewis6991/gitsigns.nvim', config = "require('plugin_settings.git')"},
        {'nvim-lua/plenary.nvim', 'TimUntersberger/neogit', 'sindrets/diffview.nvim'},
    }
    use {
        {'Shougo/denite.nvim', config = "require('plugin_settings.fuzzy-finder')"},
        {'tk-shirasaka/denite-utils'},
    }
    use {
        {'hrsh7th/nvim-cmp', config = "require('plugin_settings.completion')"},
        {
            'onsails/lspkind.nvim', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
            'saadparwaiz1/cmp_luasnip', 'L3MON4D3/LuaSnip', 'rafamadriz/friendly-snippets',
        },
    }
    use {
        {'neovim/nvim-lspconfig', config = "require('plugin_settings.lsp')"},
        {
            'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',
            'rmagatti/goto-preview', 'VonHeikemen/lsp-zero.nvim',
        },
    }
    use {'akinsho/toggleterm.nvim', config = "require('plugin_settings.terminal')"}
    use {'tk-shirasaka/ejdict.nvim'}
    use {
        {'nvim-treesitter/nvim-treesitter', config = "require('plugin_settings.treesitter')"},
        {
            'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground',
            'p00f/nvim-ts-rainbow', 'JoosepAlviste/nvim-ts-context-commentstring',
        },
    }
    use {
        {'mfussenegger/nvim-dap', config = "require('plugin_settings.debugger')"},
        {
            {'Pocco81/dap-buddy.nvim', branch = 'dev'},
            'rcarriga/nvim-dap-ui'
        }
    }
    use {'nanotee/sqls.nvim', config = "require('plugin_settings.dbms')"}
    use {
        {'kyazdani42/nvim-tree.lua', config = "require('plugin_settings.exploler')"},
        {'kyazdani42/nvim-web-devicons'},
    }
    use {
        {'nvim-orgmode/orgmode', config = "require('plugin_settings.orgmode')"},
        {'akinsho/org-bullets.nvim', 'lukas-reineke/headlines.nvim'}
    }
end)
