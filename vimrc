set ai
set expandtab
set tabstop=3
set shiftwidth=3
set cin
set guifont=ProggyCleanTT\ 10
set formatoptions+=cro
set scrolloff=10

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

set foldmethod=indent

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set nocompatible
filetype off
colorscheme molokai

"plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/timestamp.vim'
Bundle 'jplaut/vim-arduino-ino'
Bundle 'rbgrouleff/bclose.vim'


filetype plugin indent on
set t_Co=256
colorscheme molokai

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2

let mapleader=' '
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>c :Bclose<CR>

set hidden

"fugitive
set statusline=%{fugitive#statusline()}

"arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
