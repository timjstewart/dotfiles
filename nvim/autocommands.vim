"              _                                                      _
"   __ _ _   _| |_ ___   ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
"  / _` | | | | __/ _ \ / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
" | (_| | |_| | || (_) | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"  \__,_|\__,_|\__\___/ \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/


" Source init.vim every time it's saved
augroup source_init_vim
    autocmd!
    autocmd BufWritePost ~/.dotfiles/nvim/*.vim silent :source %
augroup END

augroup DiffMappings
    autocmd!
    autocmd OptionSet diff nnoremap <buffer> <leader>f :diffget //2<CR>
    autocmd OptionSet diff nnoremap <buffer> <leader>j :diffget //3<CR>
augroup END

" augroup cursorline_ag
"     autocmd!
"     autocmd InsertLeave,WinEnter * set cursorline
"     autocmd InsertEnter,WinLeave * set nocursorline
" augroup END


" TODO: Find better color
" augroup highlight_current_identifier
"     autocmd!
"     autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
" augroup END

augroup Terminal
    autocmd!
    autocmd TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
    autocmd FileType fzf tunmap <buffer> <Esc>
augroup END

augroup ReasonMl
    autocmd!
    autocmd BufRead,BufNewFile *.re set ft=ocaml
augroup END
