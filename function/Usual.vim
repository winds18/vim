" use vimgrep for search on the word under the cursor {{{
function SearchWordOnCursor()
    let w = expand("<cword>")
    execute "vimgrep ".w." *"
endfunction
map <leader>sw :call SearchWordOnCursor()<CR>:copen<CR>
" }}}
