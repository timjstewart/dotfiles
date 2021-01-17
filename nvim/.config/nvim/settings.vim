"           _   _   _
"  ___  ___| |_| |_(_)_ __   __ _ ___
" / __|/ _ \ __| __| | '_ \ / _` / __|
" \__ \  __/ |_| |_| | | | | (_| \__ \
" |___/\___|\__|\__|_|_| |_|\__, |___/
"                           |___/
syntax on
filetype off
filetype indent plugin on

" Always show tabs
set showtabline=2

" terminal color enhancements
set termguicolors

" Split windows the way I would expect.
set splitbelow
set splitright

" Use an interactive shell when issuing shell commands.  That way aliases are
" defined.  It could be that this will make running shell commands slower.
set shellcmdflag=-c

" Persistant Undo
set undofile

" Don't redraw screen during macro execution.  Use :redraw to force a redraw
set lazyredraw

set wildmode=full

" UNICODE
set encoding=UTF-8

" Set Highlight Color so that I can read highlighted text (White text on a Red
" background)
highlight Search cterm=NONE ctermfg=White ctermbg=DarkRed

" Enhanced wild menu.
set wildmenu

" More powerful backspace
set backspace=indent,eol,start

" Show what's going on.
set showcmd

" Set up clipboard
set clipboard+=unnamedplus

" Remap the leader so I can can have some common key bindings with Spacemacs.
let mapleader=" "
let maplocalleader="\\"

" Ignore case
set ignorecase

" Override ignorecase if the search pattern includes upper case characters.
set smartcase

" Don't wrap text.
set nowrap

" Allow modified buffers to be hidden.
set hidden

" Configure SHAred DAta
set shada='1000,f1,<500

" Use hybrid line numbering.
set number relativenumber

" Set how many spaces an indent should insert.
set shiftwidth=4

" I'm learning the power of :find and :b and autochdir gets in the way.
set noautochdir

" When TAB is hit, enter spaces
set expandtab

" Configure mouse
set mouse=a

" Indent the inserted lines to the same indent level as the current level.
set smartindent

" Show the line and column number of the cursor (aka the ruler)
set ruler

" Don't run commands in .nvimrc and .exrc files in the current directory.
set secure

" Briefly show matching brackets.
set showmatch

" Smart tabs sound better than dumb tabs
set smarttab

" Buffer switching behavior
" useopen - Switch to first open window that contains the specified buffer.
" usetab - swtich to other tab containing the buffer
set switchbuf=useopen,usetab,split

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4
set softtabstop=4

" Don't ring the bell
set visualbell

" Show special characters and pick which characters are displayed.
set list
set listchars=tab:▸\ ,eol:¬

" Show feedback for substitute command while I'm creating the command.
set inccommand=split

" Ignore files I rarely care about.
set wildignore+=*/.git/*,*/tmp/*,*.swp,*/venv/*,.DS_Store,*.pyc,tags


"===============================================================================
" Project Setup
"===============================================================================

" Turing (so that gf works on imports).  The ** at the end of the path means
" that the directory should be recursively searched.
set path+=**

" 999 was too visually jarring for me
set scrolloff=3

set suffixesadd=.py

" I was getting errors using Ctrl-P some times.
set maxmempattern=2000

set colorcolumn=120

set history=200

set completeopt=menuone,noselect,noinsert
set shortmess+=c
