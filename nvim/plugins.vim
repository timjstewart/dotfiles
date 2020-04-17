"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Send code to another tmux pane (e.g. REPL)
Plug 'jpalardy/vim-slime'

" Navigate to test files.
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'

" When vim starts, show recent files, bookmarks, etc.
Plug 'mhinz/vim-startify'

" UNIX commands
Plug 'tpope/vim-eunuch'

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

" fzf integration
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" A directory/file viewer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" CtrlP interface for finding buffers, recent files, etc.
Plug 'ctrlpvim/ctrlp.vim'

" Fancier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Asynchronous Linter Engine
Plug 'dense-analysis/ale'

" Exchange things like parameters
Plug 'tommcdo/vim-exchange'

" Find type errors in Python code.
Plug 'integralist/vim-mypy'

" Create Wiki Pages in vim
Plug 'vimwiki/vimwiki'

" Key mappings for navigating
Plug 'tpope/vim-unimpaired'

" gc to comment out selection
Plug 'tpope/vim-commentary'

" Clean up trailing whitespace whenever you save a file.
Plug 'vim-scripts/DeleteTrailingWhitespace'

" Manages your tags file for you.
Plug 'ludovicchabant/vim-gutentags'

" :Rg to search for text
Plug 'jremmen/vim-ripgrep'
Plug 'mileszs/ack.vim'

" Improved source code indentation for Python
Plug 'Vimjas/vim-python-pep8-indent'

" Easily surround text objects with characters.
Plug 'tpope/vim-surround'

" View JSON files in VIM with pinache.
Plug 'elzr/vim-json'

" Run tests from VIM.
Plug 'janko-m/vim-test'

" Git integration
Plug 'tpope/vim-fugitive'

" Sort of like iedit
Plug 'terryma/vim-multiple-cursors'

" Still needed for terminal?
Plug 'rbgrouleff/bclose.vim'

" Code completion
Plug 'ycm-core/YouCompleteMe'

" For editing org files.
Plug 'jceb/vim-orgmode'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'tpope/vim-rhubarb'
" Gitlab Support
Plug 'shumphrey/fugitive-gitlab.vim'

" Send HTTP requests
Plug 'aquach/vim-http-client'

" Minimalist Editing
Plug 'junegunn/goyo.vim'

Plug 'skywind3000/asyncrun.vim'

" Folding of Python Code
Plug 'Konfekt/FastFold'
Plug 'kalekundert/vim-coiled-snake'

" Pretty icons
Plug 'ryanoasis/vim-devicons'

" Figure this one out.
Plug 'axvr/zepl.vim'

" Sandy Colorscheme
Plug 'arzg/vim-corvine'
Plug 'nightsense/cosmic_latte'

" Taskwarrior integration
Plug 'blindFS/vim-taskwarrior'

" Accessing Databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" Still slow?
Plug 'vim-scripts/taglist.vim'

" File skeletons
Plug 'pgilad/vim-skeletons'

" Python Refactoring
Plug 'python-rope/ropevim'

call plug#end()

