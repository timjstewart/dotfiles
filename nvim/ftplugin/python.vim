nnoremap <leader>pc :! radon cc -nc -s %<CR>
nnoremap <leader>pf :! flake8 %<CR>
nnoremap <leader>pF :! (cd $(git rev-parse --show-toplevel)/math-service && flake8)<CR>
