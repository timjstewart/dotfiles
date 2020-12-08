"              _                                                      _
"   __ _ _   _| |_ ___   ___ ___  _ __ ___  _ __ ___   __ _ _ __   __| |___
"  / _` | | | | __/ _ \ / __/ _ \| '_ ` _ \| '_ ` _ \ / _` | '_ \ / _` / __|
" | (_| | |_| | || (_) | (_| (_) | | | | | | | | | | | (_| | | | | (_| \__ \
"  \__,_|\__,_|\__\___/ \___\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|___/


" Source init.vim every time it's saved
augroup SourceVimScriptConfig
    autocmd!
    autocmd BufWritePost ~/.dotfiles/nvim/*.vim silent :source %
augroup END

augroup DiffMappings
    autocmd!
    autocmd OptionSet diff nnoremap <buffer> <leader>f :diffget //2<CR>
    autocmd OptionSet diff nnoremap <buffer> <leader>j :diffget //3<CR>
augroup END

augroup Terminal
    autocmd!
    autocmd TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
    autocmd TermOpen * tnoremap <buffer> <c-v><Esc> <Esc>
    autocmd TermOpen * set nonumber norelativenumber
    autocmd FileType fzf tunmap <buffer> <Esc>
    " When you open a terminal, automatically enter insert mode.
    autocmd TermOpen term://* startinsert
augroup END
