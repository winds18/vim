" use ctags and sccope built tags {{{
function CtagsCscopeTags()
    let dir = getcwd()
    let ctagsPath = "ctag"
    if filereadable("tags")
        if(g:iswin == 1)
            let tagsDeleted = delete(dir."\\"."tags")
        else
            let tagsDeleted = delete("./"."tags")
        endif
        if(tagsDeleted != 0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswin == 1)
            let cscopeFilesDeleted = delete(dir."\\"."cscope.files")
        else
            let cscopeFilesDeleted = delete("./"."cscope.files")
        endif
        if(cscopeFilesDeleted != 0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable(ctagsPath))
        " silent! execute "!".ctagsPath." -R --c-types=+p --fields=+S *"
        silent! execute "!".ctagsPath." -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable("cscope") && has("cscope"))
        if(g:iswin == 0)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction
" }}}
