" if set to 0, then as soon as you quit all the files and only the explorer windows are the ones left, vim will quit. the default is 1, which means that the explorer windows persist even if they are the only ones visible
" let g:persistentBehaviour = 
"
" the width of the explorer areas
  let g:winManagerWidth = 35
"
" If you want winmanager to assume the functioning of the default explorer.vim which ships with vim, set this variable to 0.(default 1).
" let g:defaultExplorer = 
"
" The layout of winmanager is controlled by changing the value of the "g:winManagerWindowLayout" variable
" let g:winManagerWindowLayout='FileExplorer|TagList'
  let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
  let g:NERDTree_title = "[NERDTree]"
  function! NERDTree_Start()
    exe 'NERDTree'
  endfunction
  function! NERDTree_IsValid()
    return 1
  endfunction
"
" map settings
  nnoremap <silent> <leader>wm :WMToggle<CR>
"
"
