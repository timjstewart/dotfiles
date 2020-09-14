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

" FZF Mappings
map <leader>bb :Buffers<cr>
nnoremap <leader>s :Ag<cr>
nnoremap <leader>bc :BCommits<cr>
nnoremap <f5> :Rg <C-r><C-w><cr>
nnoremap <S-f5> :Rg "<C-r><C-a>"<cr>

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

nnoremap <leader>t :20sp +terminal <cr> i

" NERDTree mappings
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>

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

" " Go to next and previous tabs with the TAB key in normal mode.  More powerful
" " than Ctrl-^ and faster than Ctrl-O/Ctrl-I.
" nnoremap <TAB> :bnext<cr>
" nnoremap <S-TAB> :bprevious<cr>


