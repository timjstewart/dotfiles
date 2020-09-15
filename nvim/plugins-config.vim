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

" NERDTree
"
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrows = 1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 0  " close after opening bookmark or file.
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowLineNumbers = 0  " Not relative line numbers.
let g:NERDTreeWinSize = 40
let NERDTreeIgnore=[
            \ '.pyc$',
            \ '\.DS_Store$',
            \ '__pycache__$',
            \ '.ipynb_checkpoints$',
            \ 'venv$',
            \ 'tags$',
            \ '.git$'
            \ ]

" ALE
"
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
let g:ale_set_loclist = 0
let g:ale_linters = {
   \ 'python': [
   \    'flake8',
   \    'pylint',
   \    'mypy',
   \    ],
   \}
let g:ale_fixers = {
   \ 'python': [
   \    'black',
   \    'autopep8',
   \  ],
   \}

highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5
let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_auto_pipenv = 1


" Slime

let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 1
let g:slime_default_config = {
            \ "socket_name": "default",
            \ "target_pane": "{right-of}"
            \ }

" " Airline
" let g:airline_theme='cobalt2'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#tab_nr_type= 2
" let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#ale#enabled = 1


" " Tagbar
" " let g:tagbar_autoclose = 1
" let g:tagbar_autofocus = 1
" let g:tagbar_sort = 1
" let g:tagbar_case_insensitive = 1
" let g:tagbar_compact = 1
" " Auto preview window does not go away
" let g:tagbar_autopreview = 0


" " Deoplete
"
" let g:deoplete#enable_at_startup = 1

" UltiSnips
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


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
let g:startify_change_to_dir = 0

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

" Use ripgrep with :grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
endif

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

" indentLine
let g:indentLine_char = '┊'

" Gutentags

"let g:gutentags_exclude_filetypes = [ 'markdown' ]
" When ctags processes a large markdown file, it hangs
let g:gutentags_ctags_exclude = [ '*.md', '*.json', '*.js', '*.css', '*.html', '*Lexer.py', '*Visitor.py', '*Parser.py', '*.svg' ]


" Testing
let g:test#preserve_screen = 1
let test#python#runner = 'pytest'

" Goyo
let g:goyo_linenr=1
let g:goyo_width=120

" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "2"

let g:lens#disabled_filetypes = ['nerdtree']

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


" OrgMode
let g:org_agenda_files = [
            \ '~/org/index.org'
            \ ]

"
" DevIcons
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'


" FZF

let g:fzf_layout = {
            \ 'window' : {
            \   'width': 0.9,
            \   'height': 0.9
            \   }
            \ }

" netrw

let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_liststyle = 3
let g:netrw_sizestyle = "H"
let g:netrw_sort_by = "name"
