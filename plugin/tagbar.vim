" let g:tagbar_ctags_bin = 'ctags'                          " 指定ctags程序位置
let g:tagbar_width = 30                                     " tagbar window's width
let g:tagbar_autoclose = 1                                  " when jump the tag tagbar window will auto close
let g:tagbar_autofocus = 1                                  " auto focus on the tagbar window when open
let g:tagbar_compact = 1                                    " remove the help info on the top of tagbar window
nnoremap <leader>tb :TagbarToggle<CR>
" autocmd FileType php call tagbar#autoopen()
