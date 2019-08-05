"===============================================================================
" Neovim dotfile
"===============================================================================

syntax on
filetype off
filetype indent plugin on

"===============================================================================
" Configure Settings
"===============================================================================

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

" Automatically close folds when you exit them.
set foldclose=all

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
set wildignore+=*/.git/*,*/tmp/*,*.swp,*/venv/*,.DS_Store,*.pyc

"===============================================================================
" Configure Global Variables
"===============================================================================

" Tell Neovim where to find Python 2 and 3 interpreters.
let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/opt/python/libexec/bin/python'

"===============================================================================
" Plugins
"===============================================================================

" To Consider:
"  - unimpaired

" Initialize vim-plug
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Asynchronous Linter
Plug 'dense-analysis/ale'
Plug 'tommcdo/vim-exchange'
" Tabulate text
Plug 'godlygeek/tabular'
Plug 'integralist/vim-mypy'
" Create Wiki Pages in vim
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-unimpaired'
" gc to comment out selection
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'ludovicchabant/vim-gutentags'
" :Rg to search for text
Plug 'jremmen/vim-ripgrep'
Plug '/mileszs/ack.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tpope/vim-surround'
Plug 'sjl/gundo.vim'
Plug 'elzr/vim-json'
Plug 'janko-m/vim-test'
" Use pipenv for Python files.
Plug 'PieterjanMontens/vim-pipenv'
Plug 'plytophogy/vim-virtualenv'
Plug 'majutsushi/tagbar'
Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'francoiscabrol/ranger.vim'
Plug 'tmhedberg/simpylfold'
Plug 'zchee/deoplete-jedi'
" Highlight what was yanked for a moment.
Plug 'machakann/vim-highlightedyank'
call plug#end()

"===============================================================================
" Configure Plugins
"===============================================================================

" Do not fold doc strings
let g:SimpylFold_fold_docstring = 0

let g:deoplete#enable_at_startup = 1

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" So that my UltiSnips snippets can be found.
set runtimepath+=~/.vim/my-snippets/

" CtrlP
if executable('rg')
  message "Configuring rg..."
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Startify

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_session_dir = '~/.vim/session'
let g:startify_session_persistence = 1
let g:startify_custom_header = []
let g:startify_files_number = 5

let g:startify_commands = [
\   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\ ]

let g:startify_bookmarks = [
    \ { 'c': '~/.config/nvim/init.vim' },
    \ { 'g': '~/.gitconfig' },
    \ { 'z': '~/.zshrc' }
\ ]

" DeleteTrailingWhitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

"===============================================================================
" Keyboard Mappings
"===============================================================================

" Map fd to allow quick exit from insert mode.
inoremap fd <ESC>

" Choose from recent files
map <leader>fr :CtrlPMixed<CR>

" Project Files
map <leader>pf :CtrlP<CR>

" Edit alternate file
nmap <leader><tab> <C-^>
"
" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Git
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>

" Ranger
nnoremap <leader>ar :Ranger<CR>

" Window Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Linting Error Movement
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv

"===============================================================================
" Autocommands
"===============================================================================

" Source init.vim every time it's saved
augroup source_init_vim
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim silent :source %
augroup END

" Delete Trailing Whitespace before saving
augroup delete_trailing_whitespace
    autocmd!
    autocmd BufWritePre *.py silent :DeleteTrailingWhitespace
augroup END

"===============================================================================
" Project Setup
"===============================================================================

" Turing (so that gf works on imports)
set path+=~/src/pearson-turing/math-service/

