"                              _
"  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _ ___
" | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
" | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
" |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"                 |_|   |_|            |___/

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
map <leader>gi :CtrlPBufTag<CR>

" Project Files
" map <leader>pf :CtrlP<CR>

" Edit alternate file
nmap <leader><tab> <C-^>

" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Git
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gb :Gblame<CR>

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

" FZF
nnoremap <leader>s :Ag<CR>

tnoremap <Esc> <C-\><C-n>

nnoremap <f1> :YcmCompleter GetDoc<CR><Esc>

" I accidentally hit F1 a lot and I know about :he.
inoremap <f1> <nop>

" Navigate Quickfix List with F2 and Shift-F2.
nnoremap <f2> :cnext<CR>
nnoremap <S-f2> :cprev<CR>

" Navigate Locations with F3 and Shift-F3.
nnoremap <f3> :lnext<CR>
nnoremap <S-f3> :lprev<CR>

nnoremap <leader>t :20sp +terminal <CR> i

nnoremap <f5> :Rg <C-r><C-w><CR>
nnoremap <S-f5> :Rg "<C-r><C-a>"<CR>

" NERDTree mappings
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" vim mappings
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>

" Turn spelling on/off.
nnoremap <leader>st :set spell!<cr>
