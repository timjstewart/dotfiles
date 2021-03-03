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

" netrw (built-in plugin)
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_liststyle = 3
let g:netrw_sizestyle = "H"
let g:netrw_sort_by = "name"
let g:netrw_browsex_viewer= "open"
let g:netrw_altfile = 1

" ALE
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
   \ 'python': [ 'flake8', 'pylint', 'mypy'],
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

" Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1
let g:tagbar_case_insensitive = 1
let g:tagbar_compact = 1
let g:tagbar_autopreview = 0        " Auto preview window does not go away

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" DeleteTrailingWhitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

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

let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = 2

" Skeletons
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.config/nvim/skeletons"

" Dadbod UI
let g:db_ui_auto_execute_table_helpers = 1

" Termfloat
let g:floaterm_position = 'top'
let g:floaterm_rootmarkers = [ '.git' ]
" I changed this to 0 so that my unit test results would not disappear using
" the floaterm strategy.
let g:floaterm_autoclose = 0

" CtrlSF
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = {
            \ "at" : "start"
            \ }

" Gruvbox

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_invert_selection = "0"

" LSP
lua << EOF
require'lspconfig'.pyls.setup{
   settings = {
       pyls = {
           plugins = {
               pylint = {
                   enabled = false;
               },
               pyflakes = {
                   enabled = false;
               }
           },
           configurationSources = { "flake8" };
       }
   }
}
EOF

" vim-test
let g:test#strategy = 'floaterm'
let g:test#preserve_screen = 1
let g:test#python#pytest#options = {
    \ 'all': '-v -s -l --durations=5'
  \}
