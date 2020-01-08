set nocompatible		" be iMproved, required
filetype off " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Uncomment the next line on Windows, assuming that %HOME% is defined
" and bundle is under vimfiles. Change this according to you local setup
" set rtp+=%HOME%/vimfiles/bundle/Vundle.vim

" Install Vundle first with
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Vundle Plugins start here
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "Plugin Manager
Plugin 'vim-scripts/gundo' "Undo file
Plugin 'scrooloose/nerdtree' "File explorer
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'} "Status bar on crack
Plugin 'scrooloose/syntastic' "Syntax highlighter
Plugin 'skammer/vim-css-color' 
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'godlygeek/tabular' "Alignment
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-repeat'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'dpelle/vim-LanguageTool'
Plugin 'w0rp/ale'
Plugin 'rust-lang/rust.vim'

Plugin 'ajh17/VimCompletesMe'
Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'roxma/nvim-yarp'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'ncm2/ncm2'
" Plugin 'HansPinckaers/ncm2-jedi'
" Plugin 'ncm2/ncm2-bufword'
" Plugin 'ncm2/ncm2-path'
" Plugin 'davidhalter/jedi-vim'


call vundle#end()
" Vundle Plugins end here

filetype plugin indent on

" Change leader to ',' instead of '\'
let mapleader = ","

" Map jj to escape
inoremap jj <ESC>

" Make leader a select all
nnoremap <leader>a ggVG

" Turn syntax highlighting on
set t_Co=256

" Highlight current line
set cursorline

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
autocmd FileType python setlocal cindent

" Set indent for html family files
autocmd BufNewFile,BufRead *.js, *.html, *.css set tabstop=2|
    \set softtabstop=2|
    \set shiftwidth=2

" Flag bad whitespace
" autocmd BufRead,BufNewFile *.py, *.pyw, *.c, *.h, *.cpp, *.java match BadWhiteSpace /\s\+$/

" Indentation for Yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Raimond/delimitMate settings
let delimitMate_expand = 1
augroup mydelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = [" "]
    au FileType tex let b:delimitMate_quotes = ""
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END
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
set cmdheight=1

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
#set nowritebackup
#set noswapfile

if !isdirectory($HOME."/.vim/undo_dir")
    call mkdir($HOME."/.vim/undo_dir", "p", "0700")
endif
if !isdirectory($HOME."/.vim/backup_dir")
    call mkdir($HOME."/.vim/backup_dir", "p", "0700")
endif
if !isdirectory($HOME."/.vim/swap_dir")
    call mkdir($HOME."/.vim/swap_dir", "p", "0700")
endif

" Set backup directory to ~/tmp
" set backupdir-=.
set backupdir=~/.vim/backup_dir

set directory=~/.vim/swap_dir

" Keep an undo file to undo changes even after closing a file
set undofile
set undodir=~/.vim/undo_dir

" Set gdefault to not need /g when replacing texts
set gdefault

" <Leader><Space> to clear out a search
nnoremap <leader><space> :noh<cr>

" Make tab key match brackets
nnoremap <tab> %
vnoremap <tab> %

" Make ; do the same thing as :
nnoremap ; :

" Maps to move around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Docstring preview for folded code
let g:SimpylFold_docstring_preview=1

" Easytags settings
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" tagbar settings
nmap <silent> <leader>b :TagbarToggle<CR>

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\
set laststatus=2

let g:airline_powerline_fonts = 1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Set system clipboard to work in vim
set clipboard=unnamed 

" Enable folding with the spacebar
nnoremap <space> za

" Python with virtualenv support
" py << EOF
" import os
" import sys

" if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
" endif


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
map <C-n> :NERDTreeToggle<CR>

" Toggle paste mode
set pastetoggle=<F3>

" Set LanguageTool location
let g:languagetool_jar='$HOME/languagetool/languagetool-commandline.jar'

" Map F8 to fix errors with ALE
nmap <F8> <Plug>(ale_fix)

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

