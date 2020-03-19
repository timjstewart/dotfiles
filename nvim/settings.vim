syntax on
filetype off
filetype indent plugin on

" So that my UltiSnips snippets can be found.
set runtimepath+=~/.vim/my-snippets/

"===============================================================================
" Configure Settings
"===============================================================================

" set foldmethod=indent
" set foldlevel=0
" set foldlevelstart=0
" set foldnestmax=2

" Always show tabs
set showtabline=2

" terminal color enhancements
set termguicolors

" Split windows the way I would expect.
set splitbelow
set splitright

" Use an interactive shell when issuing shell commands.  That way aliases are
" defined.  It could be that this will make running shell commands slower.
set shellcmdflag=-ic

" Persistant Undo
set undofile

" Don't redraw screen during macro execution.  Use :redraw to force a redraw
set lazyredraw

" Complete only until point of ambiguity
set wildmode=list:longest

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

" Ignore case
set ignorecase

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

" Vim should change to the directory of files I edit.
set autochdir

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

" Override ignorecase if the search pattern includes upper case characters.
set smartcase

" Smart tabs sound better than dumb tabs
set smarttab

" Buffer switching behavior
" useopen - Switch to first open window that contains the specified buffer.
" usetab - swtich to other tab containing the buffer
set switchbuf=useopen,usetab

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
" Set colorscheme now that the colorscheme plugin has loaded.
"===============================================================================

"colorscheme elflord
"colorscheme koehler
"colorscheme desert
"colorscheme ayu
"colorscheme dracula
"colorscheme afterglow
"colorscheme parsec
"colorscheme materialbox

"
"===============================================================================
" Project Setup
"===============================================================================

" Turing (so that gf works on imports).  The ** at the end of the path means
" that the directory should be recursively searched.
set path+=~/src/pearson-turing/math-service/**

set complete-=i   " disable scanning included files from <c-n> and <c-p>.

" 999 was too visually jarring for me
set scrolloff=3
