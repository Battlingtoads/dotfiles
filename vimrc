set ai
set expandtab
set tabstop=3
set shiftwidth=3
set cin
set guifont=ProggyCleanTT\ 10
set formatoptions+=cro
set scrolloff=10
set cursorline

set laststatus=2

imap jj <Esc>

set nowrap
set number
set copyindent
set smartcase
set hlsearch
set incsearch
set undolevels=1000
set nobackup
set noswapfile
set pastetoggle=<F2>

set ruler
set cmdheight=2

set foldmethod=indent

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set nocompatible
filetype off

"plugins
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'bling/vim-airline'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'valloric/youcompleteme'
Bundle 'vim-scripts/timestamp.vim'
Bundle 'rbgrouleff/bclose.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/a.vim'
"Bundle 'davidhalter/jedi-vim'

call vundle#end()

filetype plugin indent on
set t_Co=256
colorscheme molokai
syntax on

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {'regex': '#pragma once in main file'}

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

set backspace=indent,eol,start

"ycm
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0
"set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0
nnoremap <leader>jd :YcmCompleter GoTo<CR>

"airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='molokai'

set statusline=%{fugitive#statusline()}

let mapleader = ' '
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>c :Bclose<CR>

"jedi
let g:jedi#use_tabs_not_buffer = 0

"nerdtree
au VimEnter * NERDTree
let g:NERDTreeWinPos = "right"
