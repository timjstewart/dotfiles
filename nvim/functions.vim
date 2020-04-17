"   __                  _   _
"  / _|_   _ _ __   ___| |_(_) ___  _ __  ___
" | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
" |  _| |_| | | | | (__| |_| | (_) | | | \__ \
" |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

function! ReplaceMagicNumberWithConstant()
    let l:magicNumber = expand("<cword>")
    let l:constant = input(printf("Replacing: %s.  Enter Constant Name: ", l:magicNumber))
    let l:definition = printf("    %s = %s", l:constant, l:magicNumber)
    exe printf("'<,'>s/%s/%s/gc", l:magicNumber, l:constant)
    call append(line("'<") - 1, l:definition)
endfunction


let g:CheckList_directory = "~/.checklists"

let s:CheckList_template_directory = printf("%s/templates", g:CheckList_directory)
let s:CheckList_ongoing_directory = printf("%s/ongoing", g:CheckList_directory)
let s:CheckList_completed_directory = printf("%s/completed", g:CheckList_directory)
let s:CheckList_archived_directory = printf("%s/archived", g:CheckList_directory)

function! CheckList_list_templates(arg, x, y)
    return filter(map(glob(printf("%s/*.chk", s:CheckList_template_directory), 0, 1, 1),
                \ {idx, elem -> fnamemodify(elem, ":t:r")}),
                \ {idx, val -> stridx(val, a:arg) != -1})
endfunction

function CheckList_instantiate_template(source, destination, promptOverwrite)
    if a:promptOverwrite && filereadable(a:destination)
        let choice = confirm(printf("File already exists: %s.  Overwrite?", a:destination), "&Yes\n&No", 2)
        if choice == 2
            return 0
        endif
    endif
    let contents = readfile(expand(a:source))
    call writefile(contents, expand(a:destination))
    return 1
endfunction

function CheckList_get_template_path(name)
    return expand(printf("%s/templates/%s.chk", g:CheckList_directory, a:name))
endfunction

function CheckList_get_ongoing_path(name)
    return expand(printf("%s/ongoing/%s.chk", g:CheckList_directory, a:name))
endfunction

function CheckList_get_archived_path(name)
    return expand(printf("%s/archived/%s.chk", g:CheckList_directory, a:name))
endfunction

function CheckList_get_completed_path(name)
    return expand(printf("%s/completed/%s.chk", g:CheckList_directory, a:name))
endfunction

function! CheckListStart()
    let checklist = input({"prompt": "Select Template: ", "completion": "customlist,CheckList_list_templates"})
    if !empty(checklist)
        let name = input("Checklist Name: ")
        if !empty(name)
            let source = CheckList_get_template_path(checklist)
            let destination = CheckList_get_ongoing_path(name)
            if CheckList_instantiate_template(source, destination, 1)
                execute printf("vsplit %s", destination)
            endif
        else
            echo "\nNo name provided."
        endif
    else
        echo "\nNo template selected."
    endif
endfunction
