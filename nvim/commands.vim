" vim: foldmethod=marker
"   __                  _   _
"  / _|_   _ _ __   ___| |_(_) ___  _ __  ___
" | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
" |  _| |_| | | | | (__| |_| | (_) | | | \__ \
" |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
" ============================================

command! -nargs=1 -complete=customlist,PipListPackages PipPackageVersion :call PipPackageVersion("<args>")
