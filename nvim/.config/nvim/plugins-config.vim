"        _             _                                  __ _
"  _ __ | |_   _  __ _(_)_ __  ___        ___ ___  _ __  / _(_) __ _
" | '_ \| | | | |/ _` | | '_ \/ __|_____ / __/ _ \| '_ \| |_| |/ _` |
" | |_) | | |_| | (_| | | | | \__ \_____| (_| (_) | | | |  _| | (_| |
" | .__/|_|\__,_|\__, |_|_| |_|___/      \___\___/|_| |_|_| |_|\__, |
" |_|            |___/                                         |___/
"
"===============================================================================
" Configure Plugins
"===============================================================================


" ALE
"
let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:ale_python_mypy_options = '--follow-imports skip --ignore-missing-imports'
let g:ale_cache_executable_check_failures = 0
let g:ale_python_mypy_use_global = 1
let g:ale_python_mypy_auto_pipenv = 0
let g:ale_open_list = 0
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:ale_python_mypy_executable = '/Users/STEWTJ3/.local/bin/mypy'
let b:ale_warn_about_trailing_whitespace = 1
let g:ale_linters = {
   \ 'python': [ 'pyls', 'flake8', 'pylint', 'mypy'],
   \ }
let b:ale_fixers = {
   \ 'python': ['autopep8', 'black'],
   \ }
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
"let g:ale_python_auto_pipenv = 1
"let g:ale_python_pylint_auto_pipenv = 1
"let g:ale_fixers = {'python': ['trim_whitespace']}
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1


" Slime

let g:slime_target = "neovim"
let g:slime_vimterminal_config = {"term_finish": "close"}
" let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 1

" Airline
let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#ale#enabled = 1

" " Tagbar
" " let g:tagbar_autoclose = 1
" let g:tagbar_autofocus = 1
" let g:tagbar_sort = 1
" let g:tagbar_case_insensitive = 1
" let g:tagbar_compact = 1
" " Auto preview window does not go away
" let g:tagbar_autopreview = 0

" UltiSnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" DeleteTrailingWhitespace

let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Ripgrep
let g:rg_derive_root=1
let g:rg_command = 'rg --vimgrep -g ''!tags'''

" Browsing
let g:netrw_browsex_viewer= "open"
let g:netrw_liststyle = 1  " tree style

" Gutentags

" When ctags processes a large markdown file, it hangs
let g:gutentags_ctags_exclude = [
    \ '*.md',
    \ '*.json',
    \ '*.js',
    \ '*.css',
    \ '*.html',
    \ '*Lexer.py',
    \ '*Visitor.py',
    \ '*Parser.py',
    \ '*.svg'
    \ ]

" Testing
let g:test#preserve_screen = 1
let test#python#runner = 'pytest'
let test#strategy = 'dispatch'


inoremap <c-c> <ESC>

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = 2

" Taglist

let g:Tlist_Close_On_Select = 1
let g:Tlist_Show_One_File = 1
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Sort_Type = "name"
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Auto_Highlight_Tag = 0  " Slow!
let g:Tlist_Compact_Format = 1
let g:Tlist_Display_Prototype = 1
let g:Tlist_WinWidth = 40

" Skeletons

let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.config/nvim/skeletons"

" Dadbod UI

let g:db_ui_auto_execute_table_helpers = 1

" Termfloat

let g:floaterm_position = 'top'
let g:floaterm_rootmarkers = [ '.git' ]
let g:floaterm_autoclose = 1

" CtrlSF

let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = {
            \ "at" : "start"
            \ }

" Language Server Protocol (LSP)

lua << EOF
    require'lspconfig'.hls.setup{}
    require'lspconfig'.pyls.setup{}
    require'lspconfig'.ocamllsp.setup{}
    require'lspconfig'.dartls.setup{}
EOF
