"===============================================================================
" Autocommands
"===============================================================================

" Source init.vim every time it's saved
augroup source_init_vim
    autocmd!
    autocmd BufWritePost ~/.dotfiles/nvim/*.vim silent :source %
augroup END

augroup cursorline_ag
    autocmd!
    autocmd InsertLeave,WinEnter * set cursorline
    autocmd InsertEnter,WinLeave * set nocursorline
augroup END


" augroup startup
"     autocmd!
"     " Start NERDTree
"     autocmd VimEnter * NERDTree
"     " Jump to the main window.
"     autocmd VimEnter * wincmd p
" augroup END
