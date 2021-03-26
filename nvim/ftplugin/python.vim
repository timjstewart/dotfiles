if executable("black")
    set formatexpr=
    set formatprg=black\ -q\ -
endif

let b:ale_python_mypy_options = '--follow-imports skip --ignore-missing-imports'
let b:ale_python_mypy_use_global = 1
let b:ale_python_mypy_auto_pipenv = 0
let b:ale_python_mypy_executable = '/Users/STEWTJ3/.pyenv/shims/mypy'

let b:ale_linters = {
   \ 'python': [ 'flake8', 'pylint', 'mypy'],
   \ }

let b:ale_fixers = {
   \ 'python': ['autopep8', 'black'],
   \ }

nnoremap <leader>pc :!radon cc -nc -s %<CR>
nnoremap <leader>pf :!flake8 %<CR>
nnoremap <leader>pF :!(cd $(git rev-parse --show-toplevel)/math-service && flake8)<CR>

setlocal textwidth=100
setlocal listchars=tab:▸.
setlocal colorcolumn=100
