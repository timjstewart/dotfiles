nnoremap <leader>pc :! radon cc -nc -s %<CR>
nnoremap <leader>pf :! flake8 %<CR>
nnoremap <leader>pF :! (cd $(git rev-parse --show-toplevel)/math-service && flake8)<CR>


set textwidth=120



" syntax match Statement /not in/ conceal cchar=∉
" syntax keyword Statement lambda conceal cchar=λ
" syntax keyword Statement def conceal cchar=▶
" syntax match Statement /==/ conceal cchar=≡
" syntax match Statement /!=/ conceal cchar=≠
" syntax match Statement /=/ conceal cchar=←
" syntax match Statement /->/ conceal cchar=⇒
" hi! link Conceal Statement
" set conceallevel=2
