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
    return filter(map(glob(printf("%s/*", s:CheckList_template_directory), 0, 1, 1),
                \ {idx, elem -> fnamemodify(elem, ":t")}),
                \ {idx, val -> stridx(val, a:arg) != -1})
endfunction

function CheckList_instantiate_template(source, destination, promptOverwrite)
    if a:promptOverwrite && filereadable(a:destination)
        const choice = confirm(printf("File already exists: %s.  Overwrite?", a:destination), "&Yes\n&No", 2)
        if choice == 2
            return 0
        endif
    endif
    execute printf("vsplit %s | 1,$d", a:destination)
    const contents = join(readfile(expand(a:source)), "\n")
    call UltiSnips#Anon(contents)
    return 1
endfunction

function CheckList_get_template_path(name)
    return expand(printf("%s/templates/%s", g:CheckList_directory, a:name))
endfunction

function CheckList_get_ongoing_path(name)
    return expand(printf("%s/ongoing/%s", g:CheckList_directory, a:name))
endfunction

function CheckList_get_archived_path(name)
    return expand(printf("%s/archived/%s", g:CheckList_directory, a:name))
endfunction

function CheckList_get_completed_path(name)
    return expand(printf("%s/completed/%s", g:CheckList_directory, a:name))
endfunction

function! CheckListStart()
    const checklist = input({"prompt": "Select Template: ", "completion": "customlist,CheckList_list_templates"})
    if !empty(checklist)
        const source = CheckList_get_template_path(checklist)
        if !filereadable(source)
            echom printf("Could not find template: %s", source)
            return
        endif
        let name = input("Checklist Name: ")
        if !empty(name)
            const fileName = printf("%s.%s", name, fnamemodify(checklist, ":e"))
            const destination = CheckList_get_ongoing_path(fileName)
            call CheckList_instantiate_template(source, destination, 1)
        else
            echo "\nNo name provided."
        endif
    else
        echo "\nNo template selected."
    endif
endfunction

function! CheckListComplete()
    const path = expand("%")
    call rename(path, CheckList_get_completed_path(fnamemodify(path, ":t")))
    bdelete
endfunction

function! CheckListArchive()
    const path = expand("%")
    call rename(path, CheckList_get_archived_path(fnamemodify(path, ":t")))
    bdelete
endfunction


function! PipPackageDict()
    let result = {}
    let cmdOutput = systemlist(printf("pip freeze"))
    for line in cmdOutput
        let tokens = split(line, '==')
        if len(tokens) == 2
            let key = l:tokens[0]
            let value = l:tokens[1]
            let result[key] = value
        endif
    endfor
    return result
endfunction

function! PipListPackages(prefix, x, y)
    return PipFilterPackages(PipPackageDict(), a:prefix)
endfunction

function! PipFilterPackages(packageDictionary, regex)
    return filter(keys(a:packageDictionary), {idx, x -> x =~ a:regex})
endfunction

function! PipPackageVersion(packageName)
    let packageDictionary = PipPackageDict()
    for package in PipFilterPackages(packageDictionary, a:packageName)
        echo printf("%s==%s", package, packageDictionary[package])
    endfor
endfunction
