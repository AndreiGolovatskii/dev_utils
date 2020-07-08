"let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

set nocompatible " be iMproved, required
filetype off     " required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'rhysd/vim-grammarous'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plug outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'morhetz/gruvbox'

Plug 'ycm-core/YouCompleteMe'

"Plug 'jiangmiao/auto-pairs'

Plug 'easymotion/vim-easymotion'

"===================
Plug 'Shougo/unite.vim'                       " Navigation between buffers and files
"--------------=== Snippets support ===---------------
Plug 'garbas/vim-snipmate'                    " Snippets manager
Plug 'MarcWeber/vim-addon-mw-utils'           " Dependencies #1
Plug 'tomtom/tlib_vim'                        " Dependencies #2
Plug 'honza/vim-snippets'                     " Snippets repo

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()

let g:pymode_options_max_line_length = 119
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_syntax_all = 1
let python_highlight_all = 1
" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0

let NERDTreeQuitOnOpen=1

syntax on
set number
set hls
set incsearch
set clipboard=unnamedplus
set showcmd

set tabstop=4 expandtab shiftwidth=4 smarttab

set t_Co=256

set path=.,~/arc/arcadia/,   
set path+=~/Documents/tp/patterns_project

let g:mapleader=','

colorscheme gruvbox
set background=dark
map <C-n> :NERDTreeToggle<CR>
imap <C-L> <Esc>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

set noswapfile 	     " no swap files

