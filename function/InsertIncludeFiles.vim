" 实现.cpp文件中自动添加.h文件{{{
function InsertIncludeHFiles()
    let sourceFileName=expand("%:t")
    let outFileName=substitute(sourceFileName,"\(\.[^.]*\)$",".h","g")
    call setline(".","#include \"".outFileName."\"")
endfunction
nmap <leader>ih :call InsertIncludeHFiles()<CR>
imap <C-I><C-H> <ESC>:call InsertIncludeHFiles()<CR>
" }}}
