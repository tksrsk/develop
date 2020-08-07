"---------------------
"  Plugins Settings
"---------------------
if &compatible
    set nocompatible
endif

set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state("~/.config/nvim/dein/")
    call dein#begin("~/.config/nvim/dein/")
    call dein#load_toml("$HOST_ROOT/.config/develop/nvim/dein.toml")
    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
call dein#call_hook("source")

"---------------------
"  General Settings
"---------------------
filetype plugin indent on
syntax on
set shell=zsh
set hidden
set noswapfile
set nobomb
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set fileformat=unix
set tabstop=4 shiftwidth=4 expandtab
set mouse=a
set title number relativenumber
set diffopt+=iwhite
set clipboard+=unnamedplus
set inccommand=split
set completeopt=noinsert,menuone,noselect
set updatetime=50
wshada!
