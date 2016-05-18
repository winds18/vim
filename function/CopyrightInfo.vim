" 添加版权信息函数 {{{
function AddCopyrightInfo()
    call append(0,"/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: winds - winds@nblvdong.com")
    call append(3,"#")
    call append(4,"# QQ : 1651699292")
    call append(5,"#")
    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename: ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction
" }}}

" 更新最近修改时间和文件名 {{{
function UpdateCopyrightInfo()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
" }}}

" 判断前10行代码里面，是否有Last modified这个单词，如果没有的话，代表没有添加过作者信息，需要新添加；如果有的话，那么只需要更新即可 {{{
function CopyrightInfo()
    let n=1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call updateCopyrightInfo()
            return
        endif
        let n = n + 1
    endwhile
    call addCopyrightInfo()
endfunction
" }}}
