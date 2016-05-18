" compile single file {{{
  function SingleFileCompile()
    if expand("%:p:h") != getcwd()
        echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press <F7> to redirect to the dir of this file." | echohl None
        return
    endif
    let sourceFileName = expand("%:t")
    if(sourceFileName == "" || (&filetype != "cpp" && &filetype != "c"))
        echohl WarningMsg | echo "Fail to make! Please select the right file!" | echohl None
        return
    endif
    let deleteSpaceFileName = substitute(sourceFileName, ' ', '', 'g')
    if strlen(deleteSpaceFileName) != strlen(sourceFileName)
        echohl WarningMsg | echo "Fail to make! Please delete the spaces in the filename!" | echohl None
        return
    endif
    if &filetype == "c"
        if g:iswin == 1
            set makeprg = gcc\ -o\ %<.exe\ %
        else
            set makeprg = gcc\ -o\ %<\ %
        endif
    elseif &filetype == "cpp"
        if g:iswin == 1
            set makeprg = g++\ -o\ %<.exe\ %
        else
            set makeprg = g++\ -o\ %<\ %
        endif
    endif
    if(g:iswin == 1)
        let outFileName = substitute(sourceFileName, '\(\.[^.]*\)', '.exe', 'g')
        let toExeName = outFileName
    else
        let outFileName = substitute(sourceFileName, '\(\.[^.]*\)', '','g')
        let toExeName = outFileName
    endif
    if filereadable(outFileName)
        if(g:iswin == 1)
            let outDeletedSuccess = delete(getcwd()."\\".outFileName)
        else
            let outDeletedSuccess = delete("./".outFileName)
        endif
        if(outDeletedSuccess != 0)
            set makeprg = make
            echohl WarningMsg | echo "Fail to make! I cannot delete the ".outFileName | echohl None
            return
        endif
    endif
    execute "silent make"
    set makeprg = make
    execute "normal :"
    if filereadable(outFileName)
        if(g:iswin == 1)
            execute "!".toExeName
        else
            execute "!./".toExeName
        endif
    endif
    execute "copen"
  endfunction
" }}}

" single file make {{{
  function SingleFileMake()
    set makeprg = make
    execute "silent make"
    execute "copen"
  endfunction
" }}}
