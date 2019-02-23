"---------------------
"  Plugins Settings
"---------------------
if &compatible
    set nocompatible
endif

set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state("~/.config/nvim/dein/")
    call dein#begin("~/.config/nvim/dein/")
    call dein#load_dict({
        \ "Shougo/dein.vim": {},
        \ "tpope/vim-surround": {},
        \ "tpope/vim-repeat": {},
        \ "alvan/vim-closetag": {},
        \ "haya14busa/is.vim": {},
        \ "ryanoasis/vim-devicons": {},
        \ "mhinz/vim-startify": {
            \ "hook_add":
                \ "let g:startify_session_dir = '~/.local/share/nvim/session'\n".
                \ "let g:startify_session_persistence = 1\n".
                \ "let g:startify_change_to_vcs_root = 0\n",
        \ },
        \ "jiangmiao/auto-pairs": {},
        \ "sheerun/vim-polyglot": {
            \ "build": "bash ./build",
        \ },
        \ "joshdick/onedark.vim": {
            \ "hook_add":
                \ "syntax on\n".
                \ "set termguicolors\n".
                \ "let g:onedark_hide_endofbuffer = 1\n".
                \ "let g:onedark_terminal_italics = 1\n".
                \ "colorscheme onedark\n",
        \ },
        \ "vim-airline/vim-airline": {
            \ "depends": "denite.nvim",
            \ "hook_add":
                \ "set noshowmode\n".
                \ "let g:airline_theme = 'onedark'\n".
                \ "let g:airline#extensions#tabline#enabled = 1\n".
                \ "let g:airline#extensions#tabline#show_buffers = 0\n".
                \ "let g:airline_powerline_fonts = 1\n"
        \ },
        \ "joonty/vdebug": {
            \ "hook_add":
                \ "let g:vdebug_keymap = {}\n".
                \ "let g:vdebug_keymap.run = '<space>vr'\n".
                \ "let g:vdebug_keymap.run_to_cursor = '<space>vc'\n".
                \ "let g:vdebug_keymap.step_over = '<space>vj'\n".
                \ "let g:vdebug_keymap.step_into = '<space>vl'\n".
                \ "let g:vdebug_keymap.step_out = '<space>vh'\n".
                \ "let g:vdebug_keymap.close = '<space>vq'\n".
                \ "let g:vdebug_keymap.detach = '<space>vd'\n".
                \ "let g:vdebug_keymap.set_breakpoint = '<space>vb'\n".
                \ "let g:vdebug_keymap.get_context = '<space>v*'\n".
                \ "let g:vdebug_keymap.eval_under_cursor = '<space>v?'\n".
                \ "let g:vdebug_keymap.eval_visual = '<space>v?'\n".
                \ "let g:vdebug_options = {'break_on_open': 0, 'port': 9000, 'server': '0.0.0.0', 'path_maps': {'/var/www/html/': '/path/to/repos/'}}\n",
        \ },
        \ "Shougo/denite.nvim": {
            \ "hook_source":
                \ "call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])\n".
                \ "call denite#custom#var('grep', 'command', ['rg'])\n".
                \ "call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep', '--no-heading'])\n".
                \ "call denite#custom#var('grep', 'recursive_opts', [])\n".
                \ "call denite#custom#var('grep', 'pattern_opt', ['--regexp'])\n".
                \ "call denite#custom#var('grep', 'separator', ['--'])\n".
                \ "call denite#custom#var('grep', 'final_opts', [])\n".
                \ "call denite#custom#option('_', {'cursor_wrap': 1, 'auto_accel': 1, 'auto_resume': 1, 'matchers': 'matcher/fruzzy'})\n".
                \ "call denite#custom#source('grep', 'converters', ['converter/abbr_word'])\n".
                \ "call denite#custom#source('file,file/rec,file/old,buffer,git/status,git/file', 'converters', ['devicons_denite_converter'])\n".
                \ "call denite#custom#map('_', '<esc>', '<denite:quit>')\n".
                \ "call denite#custom#action('file,directory', 'rename', {context ->".
                \ "    rename(context['targets'][0]['action__path'], input('', context['targets'][0]['action__path'], 'file'))".
                \ "}, {'is_quit': 0, 'is_redraw': 1})\n".
                \ "call denite#custom#action('file,directory', 'delete', {context ->".
                \ "    denite#util#input_yesno(context['targets'][0]['action__path'].' is delete?') ? delete(context['targets'][0]['action__path'], 'rf') : ''".
                \ "}, {'is_quit': 0, 'is_redraw': 1})\n".
                \ "call denite#custom#var('menu', 'menus', {".
                \ "    'Denite': {'description': 'Denite custom commands', 'command_candidates': [".
                \ "        ['CursorWord', 'Denite command:denite#helper#complete:DeniteCursorWord -default-action=execute'],".
                \ "        ['BufferDir', 'Denite command:denite#helper#complete:DeniteBufferDir -default-action=execute'],".
                \ "        ['ProjectDir', 'Denite command:denite#helper#complete:DeniteProjectDir -default-action=execute'],".
                \ "    ]},".
                \ "    'Startify': {'description': 'Session management', 'command_candidates': [".
                \ "        ['Load', 'Denite command:startify#session_list:SLoad -default-action=execute'],".
                \ "        ['Save', 'Denite command:startify#session_list:SSave command::SSave:new -default-action=execute'],".
                \ "        ['Delete', 'Denite command:startify#session_list:SDelete -default-action=execute'],".
                \ "    ]},".
                \ "})",
        \ },
        \ "tk-shirasaka/denite-utils": {
            \ "hook_add": "noremap <silent><tab> :Denite -buffer-name=main command:denite#helper#complete:Denite -default-action=execute<CR>",
        \ },
        \ "raghur/fruzzy": {
            \ "hook_source":
                \ "let g:fruzzy#usenative = 1\n".
                \ "let g:fruzzy#sortonempty = 0",
            \ "hook_post_update": "call fruzzy#install()",
        \ },
        \ "Shougo/deoplete.nvim": {
            \ "hook_source":
                \ "set completeopt=menuone\n".
                \ "call deoplete#enable()\n".
                \ "call deoplete#custom#option({'ignore_case': 1})\n",
        \ },
        \ "autozimu/LanguageClient-neovim": {
            \ "build": "bash install.sh",
            \ "rev": "next",
            \ "hook_add":
                \ "let g:LanguageClient_serverCommands = {".
                \ "    'python': ['pyls'],".
                \ "    'go': ['golsp', '-mode', 'stdio'],".
                \ "    'php': ['php', '/root/.composer/vendor/bin/php-language-server.php'],".
                \ "    'javascript.jsx': ['javascript-typescript-stdio'],".
                \ "    'typescript': ['typescript-language-server', '--stdio'],".
                \ "}",
        \ },
        \ "tbodt/deoplete-tabnine": {
            \ "build": "./install.sh",
        \ },
        \ "Shougo/neosnippet.vim": {
            \ "hook_add":
                \ "imap <C-k> <Plug>(neosnippet_expand_or_jump)\n".
                \ "smap <C-k> <Plug>(neosnippet_expand_or_jump)\n".
                \ "xmap <Cxk> <Plug>(neosnippet_expand_target)\n",
        \ },
        \ "Shougo/neosnippet-snippets": {},
        \ "Shougo/neco-vim": {
            \ "on_ft": "vim",
        \ },
    \ })
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
set hidden
set noswapfile
set nobomb
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set fileformat=unix
set tabstop=4 shiftwidth=4 expandtab
set clipboard+=unnamedplus
set inccommand=nosplit
set scrolloff=999
wshada!
