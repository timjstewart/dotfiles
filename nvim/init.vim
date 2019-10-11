"===============================================================================
" Tim's Neovim dotfile
"===============================================================================

syntax on
filetype off
filetype indent plugin on

"===============================================================================
" Configure Settings
"===============================================================================

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
let g:virtualenv_directory = '/Users/STEWTJ3/.local/share/virtualenvs'

" Use NERDTree instead of netrw.
let g:NERDTreeHijackNetrw = 1

"===============================================================================
" Plugins
"===============================================================================

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Integration between VIM and IPython.  Troubleshooting required.
" Plug 'ivanov/vim-ipython'

Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
" For improved focus....  Too much focus.  Tweaking needed.
" Plug 'junegunn/limelight.vim'

" When vim starts, show recent files, bookmarks, etc.
Plug 'mhinz/vim-startify'

" UNIX commandtpope/vim-eunuchs
Plug 'tpope/vim-eunuch'

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

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
" Plug 'junegunn/goyo.vim'
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

" " Nice way of visualizing the undo history.
" Plug 'sjl/gundo.vim'

" View JSON files in VIM with pinache.
Plug 'elzr/vim-json'

" Run tests from VIM.
Plug 'janko-m/vim-test'

" Use pipenv for Python files.
"Plug 'plytophogy/vim-virtualenv'
"Plug 'PieterjanMontens/vim-pipenv'

" Navigate current file via a window on the side.
Plug 'majutsushi/tagbar'

" Git integration
Plug 'tpope/vim-fugitive'

" Sort of like iedit
Plug 'terryma/vim-multiple-cursors'

" Run Ranger in VIM
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Completion for Python using jedi.
Plug 'zchee/deoplete-jedi'

" Makes embedding VIM in tmux and navigating around smoother.
" I found some key binding conflicts that make it hard to use so I'm trying my
" own approch for now.
" Plug 'christoomey/vim-tmux-navigator'

" Show indent lines
"Plug 'Yggdroot/indentLine'

Plug 'jceb/vim-orgmode'

Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

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
colorscheme jellybeans

"===============================================================================
" Configure Plugins
"===============================================================================

" ALE
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
highlight ALEErrorSign ctermfg=9 ctermbg=0 guifg=#C30500 guibg=#000000
highlight ALEWarningSign ctermfg=11 ctermbg=0 guifg=#ED6237 guibg=#000000
let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_auto_pipenv = 1

" Ranger
let g:ranger_map_keys = 0
nnoremap <leader>r :Ranger<CR>

" FZF
nnoremap <leader>s :Ag<CR>

" Airline
let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


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
  "let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
let g:ctrlp_by_filename = 0
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_match_current_file = 1

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

" Browsing
let g:netrw_browsex_viewer= "open"


"===============================================================================
" Keyboard Mappings
"===============================================================================

" Disable Arrow keys
map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>

" Map fd to allow quick exit from insert mode.
inoremap fd <ESC>

" CtrlP Mappings
map <leader>fr :CtrlPMixed<CR>
map <leader>bb :CtrlPBuffer<CR>

" Tagbar Mappings
map <leader>ji :TagbarOpenAutoClose<CR>

" Project Files
map <leader>pf :CtrlP<CR>

" Edit alternate file
nmap <leader><tab> <C-^>

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

" Window Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

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

