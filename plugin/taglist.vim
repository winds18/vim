  map <leader>tl :silent! TlistToggle<CR>       " <leader>tl for toggle the taglist
  let Tlist_Ctags_Cmd = "$HOME/Local/ctag"      " set the path of ctags
  let Tlist_Use_Right_Window = 1                " display on right
  let Tlist_Show_One_File = 0                   " display only one file tags
  let Tlist_File_Fold_Auto_Close = 1            " other files except current auto fold
  let Tlist_Exit_OnlyWindow = 1                 " the taglist is the last window auto exit the vim
  let Tlist_Process_File_Always = 0             " not always run the taglist
  let Tlist_Inc_WinWidth = 0
