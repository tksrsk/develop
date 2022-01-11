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
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }
vim.opt.mouse = 'r'
vim.opt.mousemodel = 'popup'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 1
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'auto:3'
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.tagfunc = 'v:lua.vim.lsp.tagfunc'
vim.opt.timeoutlen = 0

-- Autocmd
vim.cmd([[
    au TextYankPost * silent! lua vim.highlight.on_yank { timeout=200 }
]])

-- Loading Plugins
vim.cmd([[
    packadd packer.nvim
]])

require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true, setup = "require('plugin_settings.packer')"}
    use {
        {'editorconfig/editorconfig-vim', config = "require('plugin_settings.edit-support')"},
        {
            'blackcauldron7/surround.nvim', 'steelsojka/pears.nvim', 'winston0410/commented.nvim',
            'ahmedkhalf/project.nvim', 'folke/which-key.nvim', 'nacro90/numb.nvim',
            'monkoose/matchparen.nvim', 'kevinhwang91/nvim-bqf',
        }
    }
    use {'NTBBloodbath/rest.nvim', config = "require('plugin_settings.rest-client')"}
    use {
        {'olimorris/onedarkpro.nvim', config = "require('plugin_settings.ui')"},
        {
            'norcalli/nvim-colorizer.lua', 'nvim-lualine/lualine.nvim', 'lewis6991/foldsigns.nvim',
            'yamatsum/nvim-cursorline', 'phaazon/hop.nvim', 'mfussenegger/nvim-treehopper',
            'lukas-reineke/indent-blankline.nvim', 'chentau/marks.nvim', 'luukvbaal/stabilize.nvim',
            'kevinhwang91/nvim-hlslens', 'stevearc/dressing.nvim',
        },
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
            'onsails/lspkind-nvim', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-nvim-lua',
            'dcampos/nvim-snippy', 'dcampos/cmp-snippy', 'honza/vim-snippets',
            'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
        },
    }
    use {
        {'neovim/nvim-lspconfig', config = "require('plugin_settings.lsp')"},
        {
            'williamboman/nvim-lsp-installer', 'ray-x/lsp_signature.nvim', 'rmagatti/goto-preview',
        },
    }
    use {'akinsho/toggleterm.nvim', config = "require('plugin_settings.terminal')"}
    use {'tk-shirasaka/ejdict.nvim'}
    use {
        {'nvim-treesitter/nvim-treesitter', config = "require('plugin_settings.treesitter')"},
        {
            'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground',
            'tk-shirasaka/nvim-treesitter-sql', 'p00f/nvim-ts-rainbow', 'romgrk/nvim-treesitter-context', 'JoosepAlviste/nvim-ts-context-commentstring',
        },
    }
    use {
        {'mfussenegger/nvim-dap', config = "require('plugin_settings.debugger')"},
        {'rcarriga/nvim-dap-ui'}
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
