nnoremap <leader>pc :! radon cc -nc -s %<CR>
nnoremap <leader>pf :! flake8 %<CR>
nnoremap <leader>pF :! (cd $(git rev-parse --show-toplevel)/math-service && flake8)<CR>

set textwidth=120
set wildignore+=*.pyc
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

setlocal path=.,**
setlocal wildignore=*/__pycache__/*,*.pyc
setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
