"===============================================================================
" Tim's Neovim dotfile
"===============================================================================

syntax on
filetype off
filetype indent plugin on

"===============================================================================
" Configure Settings
"===============================================================================

" Persistant Undo
set undofile

" Don't redraw screen during macro execution.  Use :redraw to force a redraw.
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

" When vim starts, show recent files, bookmarks, etc.
Plug 'mhinz/vim-startify'

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'
"
" fzf integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" A directory/file viewer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Show modified lines in the gutter.
Plug 'airblade/vim-gitgutter'

" CtrlP interface for finding buffers, recent files, etc.
Plug 'ctrlpvim/ctrlp.vim'

" Fancier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Distraction free editing.
Plug 'junegunn/goyo.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

" Nice way of visualizing the undo history.
Plug 'sjl/gundo.vim'

" View JSON files in VIM with pinache.
Plug 'elzr/vim-json'

" Run tests from VIM.
Plug 'janko-m/vim-test'

" Use pipenv for Python files.
Plug 'PieterjanMontens/vim-pipenv'
Plug 'plytophogy/vim-virtualenv'

" Navigate current file via a window on the side.
Plug 'majutsushi/tagbar'

" Support for the Dart language.  DartAnalyzer is slow!
Plug 'dart-lang/dart-vim-plugin'

" Git integration
Plug 'tpope/vim-fugitive'

" Sort of like iedit
Plug 'terryma/vim-multiple-cursors'

" Run Ranger in VIM
Plug 'francoiscabrol/ranger.vim'

" Completion for Python using jedi.
Plug 'zchee/deoplete-jedi'

" Highlight what was yanked for a moment.  See if this is useful.
Plug 'machakann/vim-highlightedyank'

" Makes embedding VIM in tmux and navigating around smoother.kk
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

"===============================================================================
" Configure Plugins
"===============================================================================

" Tagbar
" let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1
let g:tagbar_case_insensitive = 1
let g:tagbar_compact = 1
" Auto preview window does not go away
let g:tagbar_autopreview = 0


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

" Ripgrep
let g:rg_derive_root=1
let g:rg_command = 'rg --vimgrep -g ''!tags'''


"===============================================================================
" Keyboard Mappings
"===============================================================================

" Map fd to allow quick exit from insert mode.
inoremap fd <ESC>

" CtrlP Mappings
map <leader>fr :CtrlPMixed<CR>
map <leader>bb :CtrlPBuffer<CR>
map <leader>ji :TagbarOpenAutoClose<CR>

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
nnoremap <leader>gb :Gblame<CR>

" Ranger
nnoremap <leader>ar :Ranger<CR>

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
    autocmd BufWritePost ~/.dotfiles/nvim/init.vim silent :source %
augroup END

" Delete Trailing Whitespace before saving
augroup delete_trailing_whitespace
    autocmd!
    autocmd BufWritePre *.py silent :DeleteTrailingWhitespace
augroup END

"===============================================================================
" Project Setup
"===============================================================================

" Turing (so that gf works on imports).  The ** at the end of the path means
" that the directory should be recursively searched.
set path+=~/src/pearson-turing/math-service/**

