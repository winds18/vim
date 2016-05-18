" 检查当前文件代码语法(php){{{
function! CheckSyntaxPHP()
    if &filetype! = "php"
        echohl WarningMsg | echo "Fail to check syntax! Please select the right file!" | echohl None
        return
    endif
    if &filetype == "php"
        " check php syntax
        setlocal makeprg = \"php\"\ -l\ -n\ -d\ html_errors=off
        " set shellpipe
        setlocal shellpipe = >
        " use error format for parsing PHP error output
        setlocal errorformat = %m\ in\ %f\ on\ line\ %l
    endif
    execute "silent make %"
    set makeprg = make
    execute "normal :"
    execute "copen"
endfunction

"map :checkphp :call CheckSyntaxPHP()<CR>
" }}}

" 检查当前文件代码语法(python){{{
function CheckSyntaxPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg = python\ -u
    set efm = %C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction

"map :checkpython :call checkpython()<CR>
" }}}
