"        _             _
"  _ __ | |_   _  __ _(_)_ __  ___
" | '_ \| | | | |/ _` | | '_ \/ __|
" | |_) | | |_| | (_| | | | | \__ \
" | .__/|_|\__,_|\__, |_|_| |_|___/
" |_|            |___/

" Install built-in package.
packadd! matchit

" Initialize vim-plug
call plug#begin('~/.vim/plugged')

" Project {{{

" Navigate to test files.
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-obsession'
" }}}
" Testing {{{
Plug 'vim-test/vim-test'
Plug 'reinh/vim-makegreen'
" }}}
" REPL {{{
" Send code to another tmux pane (e.g. REPL)
Plug 'jpalardy/vim-slime'
"}}}
" Snippets {{{
" A powerful snippet insertion plugin.
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" }}}
" FZF {{{
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
" }}}
" Telescope {{{
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
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
" }}}
" Dart {{{
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
" }}}
" Python {{{

" Python refactoring
Plug 'python-rope/ropevim'

" Improved source code indentation for Python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'davidhalter/jedi-vim'
" }}}
" Rust {{{
Plug 'rust-lang/rust.vim'
" }}}
" Javascript {{{
Plug 'pangloss/vim-javascript'
" }}}
" Text {{{
Plug 'tpope/vim-abolish'

" Clean up trailing whitespace whenever you save a file.
Plug 'vim-scripts/DeleteTrailingWhitespace'

" Easily surround text objects with characters.
" ys{object}{char}
Plug 'tpope/vim-surround'

" Sort of like iedit
" C-n, C-n, C-p, C-x
" c, s, I, A
Plug 'mg979/vim-visual-multi'

" File skeletons
Plug 'pgilad/vim-skeletons'
" }}}
" Information {{{
" YAML {{{
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
Plug 'airblade/vim-gitgutter'
" }}}
" Utilities {{{
" Send HTTP requests
Plug 'aquach/vim-http-client'
Plug 'voldikss/vim-floaterm'
" }}}
" Color Schemes {{{
Plug 'morhetz/gruvbox'
" }}}
" Docker {{{
Plug 'ekalinin/dockerfile.vim'
" }}}

call plug#end()
