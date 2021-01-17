"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Project {{{

" Navigate to test files.
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-obsession'

" }}}
" REPL {{{

" Send code to another tmux pane (e.g. REPL)
Plug 'jpalardy/vim-slime'

" Snippets {{{

" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" }}}
" FZF {{{

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" }}}
" File System {{{

" UNIX commands
Plug 'tpope/vim-eunuch'

" }}}
" Source Code {{{

" Language Server Protocol (LSP)
Plug 'neovim/nvim-lspconfig'

" Configure the editor for specific projects
" See: https://github.com/editorconfig/editorconfig-vim#supported-properties
Plug 'sgur/vim-editorconfig'

" Asynchronous Linter Engine
Plug 'dense-analysis/ale'
"
" Exchange things like parameters
" cx {motion} cx {motion}
Plug 'tommcdo/vim-exchange'

" Key mappings for navigating
" ]f  [f  - next/previous file
Plug 'tpope/vim-unimpaired'

" gc to comment out selection
Plug 'tpope/vim-commentary'

" Manages your tags file for you.
Plug 'ludovicchabant/vim-gutentags'
"
" Use Tags to navigate the current buffer.
Plug 'preservim/tagbar'

" Search and Replace
Plug 'dyng/ctrlsf.vim'

" Python {{{

" Improved source code indentation for Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'

" }}}
" Rust {{{
Plug 'rust-lang/rust.vim'
" }}}
" }}}
" Text {{{

" Clean up trailing whitespace whenever you save a file.
Plug 'vim-scripts/DeleteTrailingWhitespace'

" Easily surround text objects with characters.
" ys{object}{char}
Plug 'tpope/vim-surround'

" Sort of like iedit
" C-n, C-n, C-p, C-x
" c, s, I, A
Plug 'terryma/vim-multiple-cursors'

" File skeletons
Plug 'pgilad/vim-skeletons'

" }}}
" Information {{{

" YAML {{{
"
Plug 'mrk21/yaml-vim'

" }}}
" JSON {{{

" View JSON files in VIM with pinache.
Plug 'elzr/vim-json'
" }}}
" Databases {{{

" Accessing Databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" }}}
" Miscellaneous {{{

" Create Wiki Pages in vim
Plug 'vimwiki/vimwiki'

" For editing org files.
Plug 'jceb/vim-orgmode'

" }}}
" }}}
" Version Control {{{

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'

" }}}
" Utilities {{{

" Send HTTP requests
Plug 'aquach/vim-http-client'
Plug 'voldikss/vim-floaterm'

" }}}
" Appearance {{{

" Status Line {{{

" Fancier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}

" Color Schemes {{{
Plug 'morhetz/gruvbox'
" }}}
" }}}


call plug#end()
