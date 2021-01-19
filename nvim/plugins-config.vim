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
let g:netrw_liststyle = 1
let g:netrw_sizestyle = "H"
let g:netrw_sort_by = "name"

" CtrlP
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:btt'
let g:ctrlp_match_current_file = 1
let g:ctrlp_extensions = ['tag', 'dir', 'mixed', 'bookmarkdir']
let g:ctrlp_custom_ignore = '\v[\/]\htmlcov$'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](venv|\.(git|hg|svn))$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ }

if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Slime
let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 0
let g:slime_default_config = {
            \ "socket_name": "default",
            \ "target_pane": "{right-of}"
            \ }

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" FZF
let g:fzf_layout = {
            \ 'window' : {
            \   'width': 0.9,
            \   'height': 0.9
            \   }
            \ }


" ALE
let g:ale_linters_explicit = 1
let g:ale_python_mypy_options = '--follow-imports skip --ignore-missing-imports'
let g:ale_cache_executable_check_failures = 0
let g:ale_python_mypy_use_global = 1
let g:ale_python_mypy_auto_pipenv = 0
let g:ale_open_list = 0
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:ale_python_mypy_executable = '/Users/STEWTJ3/.pyenv/versions/3.6.10/bin/mypy'
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_fix_on_save = 1
let g:ale_fix_on_text_changed = 1
let g:ale_lint_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_cursor_detail = 0  " the flickering is painful
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 1
let g:ale_linters = {
   \ 'python': [
   \    'flake8',
   \    'pylint',
   \    'mypy',
   \    ],
   \}
let g:ale_fixers = {
   \ 'python': [
   \  ],
   \}

highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_auto_pipenv = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" DeleteTrailingWhitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Ripgrep
let g:rg_derive_root = 1
let g:rg_command = 'rg --vimgrep -g ''!tags'''

" Browsing
let g:netrw_browsex_viewer= "open"

" Use ripgrep with :grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

" indentLine
let g:indentLine_char = '┊'

" Gutentags
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

" vim-test
let g:test#preserve_screen = 1
let test#python#runner = 'pytest'

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

" OrgMode
let g:org_agenda_files = [
            \ '~/org/index.org'
            \ ]

" Tagbar
let g:tagbar_zoomwidth = 0
let g:tagbar_compact = 1
let g:tagbar_autopreview = 1
let g:tagbar_previewwin_pos = 'rightbelow'
