set nocompatible		" be iMproved, required
filetype off " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
" Uncomment the next line on Windows, assuming that %HOME% is defined
" and bundle is under vimfiles. Change this according to you local setup
" set rtp+=%HOME%/vimfiles/bundle/Vundle.vim

" Vundle Plugins start here
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/gundo'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'skammer/vim-css-color'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'

" Plugin 'ajh17/VimCompletesMe'
" Plugin 'Shougo/neocomplete.vim'

call vundle#end()
" Vundle Plugins end here

filetype plugin indent on

" Change leader to ',' instead of '\'
let mapleader = ","

" Map jj to escape
inoremap jj <ESC>

" Turn syntax highlighting on
set t_Co=256

" Map Ctrl-N to toggle Nerd Tree
" map <C-n> :NERDTreeToggle<CR>

" Use previous line indentation
set autoindent

" Use smart indentation for C
set smartindent

" Configure tabs
set tabstop=4			" Tab width is 4 spaces
set shiftwidth=4		" indent also 4 spaces
set expandtab			" expand tab into spaces
set softtabstop=4
set fileformat=unix

syntax on

set textwidth=119

" Set indent for python files
autocmd BufNewFile,BufRead *.py set tabstop=4|
    \set softtabstop=4|
    \set shiftwidth=4|
    \set textwidth=119|
    \set expandtab|
    \set autoindent|
    \set fileformat=unix

" Set indent for html family files
autocmd BufNewFile,BufRead *.js, *.html, *.css set tabstop=2|
    \set softtabstop=2|
    \set shiftwidth=2

" Flag bad whitespace
" au BufRead,BufNewFile *.py, *.pyw, *.c, *.h, *.cpp, *.java match BadWhiteSpace /\s\+$/

" Turn line number on
set number

" Highlight matching braces
set showmatch

" Intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Sets how many lines of history to remember
set history=8000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Make search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" For regular expression turn magic on
set magic

" Turn backup off. Everything should be under source control
set nobackup
set nowb
set noswapfile

" Keep an undo file to undo changes even after closing a file
set undofile

" Set gdefault to not need /g when replacing texts
set gdefault

" <Leader><Space> to clear out a search
nnoremap <leader><space> :noh<cr>

" Make tab key match brackets
nnoremap <tab> %
vnoremap <tab> %

" Make ; do the same thing as :
nnoremap ; :

" Split window and switch to new one
nnoremap <leader>w <C-w>v<C-w>l

" Maps to move around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\
set laststatus=2

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Make python look pretty
let python_highlight_all=1

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in NERDTree
" Open NERDTree automatically when vim starts with a dir or file
" autocmd vimenter * NERDTree
" Open NERDTree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd Vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle NERDTree with Ctrl+N
map <C-n>:NERDTreeToggle<CR>
