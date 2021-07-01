-- Options
vim.opt.shell = 'zsh'
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.bomb = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = {'utf-8', 'iso-2022-jp', 'euc-jp', 'sjis'}
vim.opt.fileformats = {'unix', 'dos', 'mac'}
vim.opt.fileformat = 'unix'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = 'r'
vim.opt.mousemodel = 'popup'
vim.opt.diffopt:append({ 'iwhite', 'internal', 'algorithm:histogram', 'indent-heuristic' })
vim.opt.clipboard = 'unnamedplus'
vim.opt.inccommand = 'split'
vim.opt.completeopt = {'noinsert', 'menuone', 'noselect'}
vim.opt.signcolumn = 'auto:3'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = 'tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%'

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
        {'sheerun/vim-polyglot', 'blackcauldron7/surround.nvim', 'steelsojka/pears.nvim', 'winston0410/commented.nvim'}
    }
    use {'diepm/vim-rest-console', config = "require('plugin_settings.vim-rest-console')"}
    use {
        {'rafamadriz/neon', config = "require('plugin_settings.ui')"},
        {
            'norcalli/nvim-colorizer.lua', 'hoob3rt/lualine.nvim', 'folke/which-key.nvim', 'phaazon/hop.nvim',
            'lewis6991/foldsigns.nvim', 'nacro90/numb.nvim',
        },
    }
    use {
        {'lewis6991/gitsigns.nvim', config = "require('plugin_settings.git')"},
        {'nvim-lua/plenary.nvim'}
    }
    use {
        {'Shougo/denite.nvim', config = "require('plugin_settings.denite')"},
        {'tk-shirasaka/denite-utils'},
    }
    use {
        {'hrsh7th/nvim-compe', config = "require('plugin_settings.completion')"},
        {'onsails/lspkind-nvim', 'tamago324/compe-zsh', 'kristijanhusak/vim-dadbod-completion'},
    }
    use {
        {'neovim/nvim-lspconfig', config = "require('plugin_settings.nvim-lspconfig')"},
        {
            'kabouzeid/nvim-lspinstall', 'ahmedkhalf/lsp-rooter.nvim', 'folke/trouble.nvim',
            'ray-x/lsp_signature.nvim', 'rmagatti/goto-preview'
        },
    }
    use {'Shougo/deol.nvim', config = "require('plugin_settings.deol')"}
    use {'tk-shirasaka/ejdict.nvim'}
    use {
        {'nvim-treesitter/nvim-treesitter', config = "require('plugin_settings.nvim-treesitter')"},
        {
            'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground',
            'tk-shirasaka/nvim-treesitter-sql', 'p00f/nvim-ts-rainbow', 'romgrk/nvim-treesitter-context',
        },
    }
    use {
        {'mfussenegger/nvim-dap', config = "require('plugin_settings.nvim-dap')"},
        {'rcarriga/nvim-dap-ui'}
    }
    use {
        {'tpope/vim-dadbod', config = "require('plugin_settings.vim-dadbod')"},
        {'kristijanhusak/vim-dadbod-ui'},
    }
    use {
        {'kyazdani42/nvim-tree.lua', config = "require('plugin_settings.nvim-tree')"},
        {'kyazdani42/nvim-web-devicons'},
    }
end)
