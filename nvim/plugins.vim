"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Project {{{

" CtrlP interface for finding buffers, recent files, etc.
Plug 'ctrlpvim/ctrlp.vim'

" Navigate to test files.
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'

" When vim starts, show recent files, bookmarks, etc.
Plug 'mhinz/vim-startify'

" }}}
" REPL {{{

" Send code to another tmux pane (e.g. REPL)
Plug 'jpalardy/vim-slime'

" Figure this one out.
Plug 'axvr/zepl.vim'

" }}}
" Snippets {{{

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

" }}}
" FZF {{{

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" }}}
" File System {{{

" A directory/file viewer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" UNIX commands
Plug 'tpope/vim-eunuch'

" }}}
" Source Code {{{

" Code completion
Plug 'Shougo/deoplete.nvim'

" Asynchronous Linter Engine
Plug 'dense-analysis/ale'
"
" Exchange things like parameters
Plug 'tommcdo/vim-exchange'

" Key mappings for navigating
Plug 'tpope/vim-unimpaired'

" gc to comment out selection
Plug 'tpope/vim-commentary'

" Manages your tags file for you.
Plug 'ludovicchabant/vim-gutentags'
"
" Still slow?
Plug 'vim-scripts/taglist.vim'

" Python {{{

" Refactoring
Plug 'python-rope/ropevim'

" Folding of Python Code
Plug 'Konfekt/FastFold'
Plug 'kalekundert/vim-coiled-snake'

" Improved source code indentation for Python
Plug 'Vimjas/vim-python-pep8-indent'

" Find type errors in Python code.
Plug 'integralist/vim-mypy'

" }}}
" }}}
" Text {{{

" Clean up trailing whitespace whenever you save a file.
Plug 'vim-scripts/DeleteTrailingWhitespace'

" Easily surround text objects with characters.
Plug 'tpope/vim-surround'

" Sort of like iedit
Plug 'terryma/vim-multiple-cursors'

" File skeletons
Plug 'pgilad/vim-skeletons'

" }}}
" Search {{{

" :Rg to search for text
Plug 'jremmen/vim-ripgrep'
Plug 'mileszs/ack.vim'

" }}}
" Information {{{

" JSON {{{

" View JSON files in VIM with pinache.
Plug 'elzr/vim-json'
" }}}
" Databases {{{

" Accessing Databases via vim command line
Plug 'tpope/vim-dadbod'

" User interface built on top of dadbod
Plug 'kristijanhusak/vim-dadbod-ui'

" }}}
" Miscellaneous {{{

" Create Wiki Pages in vim
Plug 'vimwiki/vimwiki'

" For editing org files.
Plug 'jceb/vim-orgmode'

" }}}
" }}}
" Testing {{{

" Run tests from VIM.
Plug 'janko-m/vim-test'
" }}}
" Version Control {{{

" Git integration
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rhubarb'

" Gitlab Support
Plug 'shumphrey/fugitive-gitlab.vim'

" }}}
" Utilities {{{

" Still needed for terminal?
Plug 'rbgrouleff/bclose.vim'

" Send HTTP requests
Plug 'aquach/vim-http-client'

Plug 'skywind3000/asyncrun.vim'

Plug 'mbbill/undotree'

" }}}
" Organization/Productivity {{{

" Taskwarrior integration
Plug 'blindFS/vim-taskwarrior'

" }}}
" Appearance {{{

" Status Line {{{

" Fancier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}

" Decoration {{{

" Pretty icons
Plug 'ryanoasis/vim-devicons'

" Minimalist Editing
Plug 'junegunn/goyo.vim'

" }}}

" Color Schemes {{{

Plug 'rafi/awesome-vim-colorschemes'

" }}}
" }}}
" TMUX {{{
"
Plug 'christoomey/vim-tmux-navigator'

" }}}

call plug#end()
