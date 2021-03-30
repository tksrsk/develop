-- Options
vim.o.shell = 'zsh'
vim.o.hidden = true
vim.o.swapfile = false
vim.o.bomb = false
vim.o.encoding = 'utf-8'
vim.o.fileencodings = 'utf-8,iso-2022-jp,euc-jp,sjis'
vim.o.fileformats = 'unix,dos,mac'
vim.o.fileformat = 'unix'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.mouse = 'r'
vim.o.mousemodel = 'popup'
vim.o.diffopt = table.concat({ vim.o.diffopt, 'iwhite', 'indent-heuristic' }, ',')
vim.o.clipboard = 'unnamedplus'
vim.o.inccommand = 'split'
vim.o.completeopt = 'noinsert,menuone,noselect'
vim.o.termguicolors = true
vim.wo.signcolumn = 'auto:3'
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.list = true
vim.wo.listchars = 'tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%'

-- Setting
vim.cmd([[
    wshada!
    filetype plugin indent on
    syntax on
]])

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
    use {vim.env.HOST_ROOT .. '/.config/develop/nvim', as = 'develop'}
    use {'editorconfig/editorconfig-vim'}
    use {
        {'blackcauldron7/surround.nvim', config = "require('plugin_settings.surround')"},
        {'windwp/nvim-autopairs', 'windwp/nvim-ts-autotag'}
    }
    use {'phaazon/hop.nvim', config = "require('plugin_settings.hop')"}
    use {'diepm/vim-rest-console', config = "require('plugin_settings.vim-rest-console')"}
    use {'sheerun/vim-polyglot'}
    use {'sainnhe/edge', config = "require('plugin_settings.edge')"}
    use {'norcalli/nvim-colorizer.lua', config = "require('plugin_settings.nvim-colorizer')"}
    use {'datwaft/bubbly.nvim ', config = "require('plugin_settings.bubbly')"}
    use {
        {'lewis6991/gitsigns.nvim', config = "require('plugin_settings.git')"},
        {'nvim-lua/plenary.nvim', 'f-person/git-blame.nvim'}
    }
    use {
        {'Shougo/denite.nvim', config = "require('plugin_settings.denite')"},
        {'tk-shirasaka/denite-utils'},
    }
    use {
        {'Shougo/deoplete.nvim', config = "require('plugin_settings.deoplete')"},
        {'deoplete-plugins/deoplete-lsp', 'deoplete-plugins/deoplete-zsh'},
    }
    use {'neovim/nvim-lspconfig', config = "require('plugin_settings.nvim-lspconfig')"}
    use {'Shougo/deol.nvim', config = "require('plugin_settings.deol')"}
    use {'tk-shirasaka/ejdict.nvim'}
    use {
        {'nvim-treesitter/nvim-treesitter', config = "require('plugin_settings.nvim-treesitter')"},
        {'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground', 'tk-shirasaka/nvim-treesitter-sql'},
    }
    use {'mfussenegger/nvim-dap', config = "require('plugin_settings.nvim-dap')"}
    use {
        {'tpope/vim-dadbod', config = "require('plugin_settings.vim-dadbod')"},
        {'kristijanhusak/vim-dadbod-ui'}, {'kristijanhusak/vim-dadbod-completion'},
    }
    use {
        {'kyazdani42/nvim-tree.lua', config = "require('plugin_settings.nvim-tree')"},
        {'kyazdani42/nvim-web-devicons'},
    }
end)
