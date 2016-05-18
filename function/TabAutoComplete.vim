" 根据字典用tab键完成自动补全 {{{
function! TabAutoComplete()
    let cursorPositionString = strpart(getline("."), 0, col("."))                   " 获取光标所在行数及列数之前的字符
    let theWordOfTab = matchstr(cursorPositionString, "[^ \t]*$")                   " 截取出需要<Tab>补全的单词
    let currentFileExtension = expand("%:e")                                        " 获取当前文档的后缀名
    if currentFileExtension == "php"
        let hasPhalcon = match(theWordOfTab, "Phalcon") != -1                       " <Tab>补全的关键字为Phalcon
        let hasBackslash = match(theWordOfTab, '\\') != -1                          " <Tab>补全的关键字为反斜杠
        if(hasPhalcon || hasBackslash)
            return "\<C-X>\<C-K>"
        endif
    endif
    return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=TabAutoComplete()<CR>
" }}}
