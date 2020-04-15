
function! ReplaceMagicNumberWithConstant()
    let l:magicNumber = expand("<cword>")
    let l:constant = input(printf("Replacing: %s.  Enter Constant Name: ", l:magicNumber))
    let l:definition = printf("    %s = %s", l:constant, l:magicNumber)
    exe printf("'<,'>s/%s/%s/gc", l:magicNumber, l:constant)
    call append(line("'<") - 1, l:definition)
endfunction
