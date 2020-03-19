"===============================================================================
" Plugins
"===============================================================================

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

Plug 'jpalardy/vim-slime'

" Plug 'mcchrish/nnn.vim'
Plug 'ptzz/lf.vim'

Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'

" When vim starts, show recent files, bookmarks, etc.
Plug 'mhinz/vim-startify'

" UNIX commands
Plug 'tpope/vim-eunuch'

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" A directory/file viewer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" CtrlP interface for finding buffers, recent files, etc.
Plug 'ctrlpvim/ctrlp.vim'

" Fancier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2'
" Plug 'davidhalter/jedi-vim'
" " Fast python completion (use ncm2 if you want type info or snippet support)
" Plug 'HansPinckaers/ncm2-jedi'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Asynchronous Linter
Plug 'dense-analysis/ale'

" Exchange things like parameters
Plug 'tommcdo/vim-exchange'

" Tabulate text
Plug 'godlygeek/tabular'

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
Plug '/mileszs/ack.vim'

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

" Run Ranger in VIM
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Completion for Python using jedi.
Plug 'zchee/deoplete-jedi'

Plug 'jceb/vim-orgmode'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'tpope/vim-rhubarb'

" Show indentation markers (messes up Ranger)
" Plug 'yggdroot/indentline'

Plug 'aquach/vim-http-client'

Plug 'junegunn/goyo.vim'

Plug 'skywind3000/asyncrun.vim'

Plug 'camspiers/lens.vim'
Plug 'camspiers/animate.vim'

" Needs colorscheme work (line numbers look funny)
" Plug 'blueyed/vim-diminactive'

Plug 'Konfekt/FastFold'
Plug 'kalekundert/vim-coiled-snake'

Plug 'rhysd/git-messenger.vim'

Plug 'sjl/gundo.vim'

Plug 'pechorin/any-jump.vim'

Plug 'easymotion/vim-easymotion'

call plug#end()

