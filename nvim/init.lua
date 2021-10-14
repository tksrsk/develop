-- Options
vim.opt.swapfile = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis' }
vim.opt.fileformat = 'unix'
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = 'r'
vim.opt.mousemodel = 'popup'
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic' })
vim.opt.clipboard = 'unnamedplus'
vim.opt.inccommand = 'split'
vim.opt.signcolumn = 'auto:3'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = { tab = '»-', trail = '-', eol = '↲', extends = '»', precedes = '«', nbsp = '%' }

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
            'sheerun/vim-polyglot', 'blackcauldron7/surround.nvim', 'steelsojka/pears.nvim',
            'winston0410/commented.nvim', 'ahmedkhalf/project.nvim', 'folke/which-key.nvim', 'nacro90/numb.nvim',
        }
    }
    use {'NTBBloodbath/rest.nvim', config = "require('plugin_settings.rest-client')"}
    use {
        {'olimorris/onedark.nvim', config = "require('plugin_settings.ui')"},
        {
            'norcalli/nvim-colorizer.lua', 'hoob3rt/lualine.nvim', 'lewis6991/foldsigns.nvim',
            'yamatsum/nvim-cursorline', 'phaazon/hop.nvim', 'mfussenegger/nvim-ts-hint-textobject',
            'lukas-reineke/indent-blankline.nvim', 'chentau/marks.nvim',
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
            'onsails/lspkind-nvim', 'hrsh7th/vim-vsnip', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-nvim-lua',
            'kristijanhusak/vim-dadbod-completion', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
        },
    }
    use {
        {'neovim/nvim-lspconfig', config = "require('plugin_settings.lsp')"},
        {
            'williamboman/nvim-lsp-installer', 'folke/trouble.nvim',
            'ray-x/lsp_signature.nvim', 'rmagatti/goto-preview'
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
    use {
        {'tpope/vim-dadbod', config = "require('plugin_settings.dbms')"},
        {'kristijanhusak/vim-dadbod-ui'},
    }
    use {
        {'kyazdani42/nvim-tree.lua', config = "require('plugin_settings.exploler')"},
        {'kyazdani42/nvim-web-devicons'},
    }
end)
