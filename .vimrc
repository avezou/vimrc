set nocompatible		" be iMproved, required
filetype off " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
if has('win')
    set rtp+=%HOME%/vimfiles/bundle/Vundle.vim
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif

" Install Vundle first with if the automated setup didn't work
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Vundle Plugins start here
call vundle#begin()

" Plugin Manager
Plugin 'VundleVim/Vundle.vim'
" Undo file for undo after buffer close
Plugin 'vim-scripts/gundo' "Undo file
" File explorer
Plugin 'scrooloose/nerdtree'
" Status bar (powerline)
Plugin 'vim-airline/vim-airline'
" Syntax checker
Plugin 'vim-syntastic/syntastic'
" Python backend for 'syntastic'
Plugin 'nvie/vim-flake8'
" Search bar
Plugin 'kien/ctrlp.vim'
" Theme
Plugin 'crusoexia/vim-monokai'
" Powerful commenting utility
Plugin 'scrooloose/nerdcommenter'
" Rich python syntax highlighting
Plugin 'kh3phr3n/python-syntax'
"Auto align code
Plugin 'godlygeek/tabular'
" Markdown plugin
Plugin 'plasticboy/vim-markdown'
" Code folding
Plugin 'tmhedberg/SimpylFold'
" Git plugin for Nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Tag bar
Plugin 'majutsushi/tagbar'
" Easy on the eyes color scheme
Plugin 'jnurmine/Zenburn'
" Solarized theme
Plugin 'altercation/vim-colors-solarized'
" Auto closing of brackets, quotes, etc.
Plugin 'Raimondi/delimitMate'
" Auto complete
Plugin 'ajh17/VimCompletesMe'
" Async linter
Plugin 'dense-analysis/ale'
" Tag file manager, keeps them out of your way
Plugin 'ludovicchabant/vim-gutentags'
" CSS color preview in vim
Plugin 'ap/vim-css-color'
" Spell checking
Plugin 'dpelle/vim-LanguageTool'
" Auto indent for python
Plugin 'vim-scripts/indentpython.vim'
" Wrapper for Git, lets you use :Git <git_command_here>
Plugin 'tpope/vim-fugitive'
" Support for Python virtual environments
Plugin 'sansyrox/vim-python-virtualenv'
" Autocompleter for Python
Plugin 'davidhalter/jedi-vim'
" Syntax highlighting for jinja
Plugin 'lepture/vim-jinja'
" Project wide search
Plugin 'wsdjeg/FlyGrep.vim'
" Automated tag generation
Plugin 'xolox/vim-easytags'
" Miscellaneous vim utils required by easytags
Plugin 'xolox/vim-misc'
" Python import plugin
Plugin 'mgedmin/python-imports.vim'
" More import tools for python
Plugin 'relastle/vim-nayvy'
" JSON plugin
Plugin 'elzr/vim-json'
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

" Syntax highlight for markdown file with .md
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Enable LaTex math
let g:vim_markdown_math = 1
" Highlight json front matter
let g:vim_markdown_json_frontmatter = 1
" Strikethrough uses two tildes. ~~Scratch this.~~
let g:vim_markdown_strikethrough = 1
" Don't require .md for markdwon links
let g:vim_markdown_no_extensions_in_markdown = 1
" Autowrite when following links
let g:vim_markdown_autowrite = 1


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
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8


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

" Allow h,l to wrap to previrous/next line. Not recommended by vim
" set whichwrap+=<,>,h,l
" Use <,> or [,] to wrap around line, alternative way. Works well.
set whichwrap+=[,]

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
set nobackup nowritebackup
set noswapfile

" If you want to create backups, this section will keep them (and swap files)
" under the .vim (vimfiles for windows) directory
" if !isdirectory($HOME."/.vim/undo_dir")
"     call mkdir($HOME."/.vim/undo_dir", "p", "0700")
" endif
" if !isdirectory($HOME."/.vim/backup_dir")
"    call mkdir($HOME."/.vim/backup_dir", "p", "0700")
" endif
" if !isdirectory($HOME."/.vim/swap_dir")
"    call mkdir($HOME."/.vim/swap_dir", "p", "0700")
"endif
" set backupdir=~/.vim/backup_dir
" set directory=~/.vim/swap_dir

" Undo file directory
if !isdirectory($HOME."/.vim/undo_dir")
    call mkdir($HOME."/.vim/undo_dir", "p", "0700")
endif

" Keep an undo file to undo changes even after closing a file
set undofile
set undodir=~/.vim/undo_dir

" Set gdefault to not need /g when replacing texts
set gdefault

" <Leader><Space> to clear out a search
nnoremap <leader><space> :noh<cr>

" Make tab key match brackets
" nnoremap <tab> %
" vnoremap <tab> %

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

" Powerline
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\
set laststatus=2

let g:airline_powerline_fonts = 1

" Enable folding
" set foldmethod=indent
" set foldlevel=99

" Set system clipboard to work in vim
set clipboard=unnamed

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

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line

let g:kite_supported_languages = ['python', 'javascript', 'html', 'css']

let g:kite_tab_complete=1

autocmd CompleteDone * if !pumvisible() | pclose | endif

" Map F9 to fix errors with ALE
nmap <F9> <Plug>(ale_fix)
" Map F8 to togle tag bar on the right
nmap <F8> :TagbarToggle<CR>
" Map F5 to import name
nmap <F5> :ImportName<CR>
" Map Ctrp+F5 to import above the cursor
nmap <C-F5> :ImportNameHere<CR>

" ALE Fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['autoimport', 'autoflake', 'autopep8', 'isort', 'yapf']
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
