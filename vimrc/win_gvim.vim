" make the menu can identify chinese
  if(g:iswin == 1)
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
  endif
"
" make vim identify special characters
  if v:lang = ~? '^\(zh\)|\(ja\)\|\(ko\)'
    set ambiwidth=double
  endif
"
