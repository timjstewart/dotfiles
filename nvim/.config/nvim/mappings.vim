"                              _
"  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ ___
" | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
" | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
" |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"                 |_|   |_|            |___/

" Disable Arrow keys (so that I learn to avoid using them)
map <Up> <nop>
map <Down> <nop>
map <Left> <nop>
map <Right> <nop>

" Map fd to allow quick exit from insert mode.
inoremap fd <ESC>

" Telescope Mappings
nnoremap <C-p>      :silent! Telescope find_files<cr>
nnoremap <leader>bb :silent! Telescope buffers<cr>
nnoremap <leader>sf :silent! Telescope live_grep<cr>
nnoremap <leader>bc :silent! Telescope git_bcommits<cr>
nnoremap <leader>ac :silent! Telescope git_commits<cr>
nnoremap <leader>co :silent! Telescope git_branches<cr>
nnoremap <leader>sy :silent! Telescope lsp_document_symbols<cr>
nnoremap <leader>wd :silent! Telescope lsp_workspace_diagnostics<cr>
nnoremap <leader>pp :silent! Telescope project<cr>
nnoremap <leader>fb :silent! Telescope file_browser<cr>
nnoremap <leader>sy :silent! Telescope symbols<cr>
nnoremap <leader>of :History<cr>

nnoremap <f5>       :Rg <C-r><C-w><cr>
nnoremap <S-f5>     :Rg "<C-r><C-a>"<cr>

" Edit alternate file
nmap <leader><tab> <C-^>

" Remove search highlight
nnoremap <leader><space> :nohlsearch<cr>

" Git
nnoremap <leader>ga :Git add %:p<cr><cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gp :Gpush<cr>
nnoremap <leader>gb :Gblame<cr>

" Linting Error Movement
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous_wrap)
nmap <silent> ]w <Plug>(ale_next_wrap)
nmap <silent> ]W <Plug>(ale_last)

" keep visual selection when indenting/outdenting.
vmap < <gv
vmap > >gv

" Window Movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" I accidentally hit F1 a lot and I know about :he.
inoremap <f1> <nop>

" Navigate Quickfix List with F2 and Shift-F2.
nnoremap <f2> :cnext<cr>
nnoremap <S-f2> :cprev<cr>

" Navigate Locations with F3 and Shift-F3.
nnoremap <f3> :lnext<cr>
nnoremap <S-f3> :lprev<cr>

" Terminal
nnoremap <leader>t :20sp +terminal <cr>
nnoremap <leader>ft :FloatermToggle<cr>

" vim mappings
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

" Turn spelling on/off.
nnoremap <leader>st :set spell!<cr>

" Resize current window. Using <ALT+h> (or j, k, or h) don't work on the Mac.
" See: https://stackoverflow.com/a/5382863/26002
nnoremap ˙ :vertical resize -3<cr>      " <ALT+h> decrease width
nnoremap ∆ :resize -3<cr>               " <ALT+j> decrease height
nnoremap ˚ :resize +3<cr>               " <ALT+k> increase height
nnoremap ¬ :vertical resize +3<cr>      " <ALT+l> increase width

" Tagbar Mappings
nnoremap <leader>tt :TagbarToggle<cr>

" Explore Current Directory
nnoremap - :Explore<cr>

inoremap <c-c> <ESC>

" Testing
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

" Explore Current Directory
nnoremap - :Ex<cr>
