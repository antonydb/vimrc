set nocompatible
set t_Co=256

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-sensible'
Plug 'gilgigilgil/anderson.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'gcorne/vim-sass-lint'
call plug#end()

" filetype plugin indent on
syntax on
set number
set ruler
set wildmenu
set hidden
set showcmd
set nostartofline
set laststatus=2
set confirm
set undolevels=1000

set background=dark
colorscheme anderson
:let g:airline_theme='molokai'

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab
set backspace=indent,eol,start

nnoremap / /\v
vnoremap / /\v
set smartcase
set ignorecase
set showmatch
set incsearch
set hlsearch

set ttyfast
set lazyredraw
set encoding=utf8
set ffs=unix,dos,mac
set autoread

nnoremap <tab> %
vnoremap <tab> %

" Switching buffers
nnoremap gb :ls<CR>:b<Space>

" Ctrl+p
nnoremap  <C-p> :FZF -m<CR>

" Moving lines
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" JSHint
let g:syntastic_javascript_checkers = ['jshint']

" Sass lint
let g:syntastic_sass_checkers=["sass_lint"]
let g:syntastic_scss_checkers=["scss_lint"]
