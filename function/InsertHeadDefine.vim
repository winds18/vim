" 添加文件的宏定义{{{
function InsertHeadDefine(firstLine, lastLine)
    if(a:firstLine<1 || a:lastLine>line("$"))
        echoerr "InsertHeadDefine : Range overflow !(FirstLine:".a:firstLine.";LastLine:".a:lastLine.";ValidRange:1~".line("$").")"
        return
    endif
    let sourceFileName=expand("%:t")
    let defineName=substitute(sourceFileName," ","","g")
    let defineName=substitute(defineName,"\.","_","g")
    let defineName=toupper(defineName)
    execute "normal ".a:firstLine."GO"
    call setline(".","#ifndef _".defineName."_")
    normal==o
    call setline(".","#define _".defineName."_")
    execute "normal==".(a:lastLine-a:firstLine+1)."jo"
    call setline(".","#endif")
    let goLine=a:firstLine+2
    execute "normal==".goLine."G"
endfunction
function InsertHeadDefineNew()
    let firstLine=1
    let lastLine=line("$")
    let n=1
    while n<20
        let line=getline(n)
        if n==1
            if line=~"^\/\*.*$"
                let n=n+1
                continue
            else
                break
            endif
        endif
        if line=~"^.*\*\/$"
            let firstLine=n+1
            break
        endif
        let n=n+1
    endwhile
    call InsertHeadDefine(firstLine,lastLine)
endfunction
nnoremap <leader>ha :call InsertHeadDefineNew()<CR>
" }}}
