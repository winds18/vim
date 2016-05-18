" Turns off the script
" let loaded_nerd_tree = 
"
" Controls whether the NERD tree window centers when the cursor moves within a specified distance to the top/bottom of the window
" let NERDTreeAutoCenter = 
"
" Controls the sensitivity of autocentering
" let NERDTreeAutoCenterThreshold = 
"
" Tells the NERD tree whether to be case sensitive or not when sorting nodes
" let NERDTreeCaseSensitiveSort = 
"
" Tells the NERD tree whether to take the dot at the beginning of the hidden file names into account when sorting nodes
" let NERDTreeSortHiddenFirst = 
"
" Tells the NERD tree if/when it should change vim's current working directory
  let NERDTreeChDirMode = 2
"
" Tell the NERD tree whether to highlight the current cursor line
" let NERDTreeHighlightCursorline = 
"
" Tell the NERD tree whether to replace the netrw autocommands for exploring local directories
" let NERDTreeHijackNetrw = 
"
" Tells the NERD tree which files to ignore
" let NERDTreeIgnore = 
"
" Tells the NERD tree to respect |'wildignore'|
" let NERDTreeRespectWildIgnore = 
"
" Where the bookmarks are stored
  let NERDTreeBookmarksFile = '$HOME/vim/bookmarks'
"
" Whether the bookmarks list is sorted on display
" let NERDTreeBookmarksSort = 
"
" Tells the NERD tree how to handle mouse clicks
" let NERDTreeMouseMode = 
"
" Closes the tree window after opening a file
" let NERDTreeQuitOnOpen = 
"
" Tells the NERD tree whether to display the bookmarks table on startup
  let NERDTreeShowBookmarks = 1
"
" Tells the NERD tree whether to display files in the tree on startup
" let NERDTreeShowFiles = 
"
" Tells the NERD tree whether to display hidden files on startup
" let NERDTreeShowHidden = 
"
" Tells the NERD tree whether to display line numbers in the tree window
" let NERDTreeShowLineNumbers = 
"
" Tell the NERD tree how to sort the nodes in the tree
" let NERDTreeSortOrder = 
"
" Set a statusline for NERD tree windows
" let NERDTreeStatusline = 
"
" Tells the script where to put the NERD tree window
" let NERDTreeWinPos = 
"
" Sets the window size when the NERD tree is opened
" let NERDTreeWinSize = 
"
" Disables display of the 'Bookmarks' label and 'Press ? for help' text
  let NERDTreeMinimalUI = 1
"
" Tells the NERD tree to use arrows instead of + ~ chars when displaying directories
" let NERDTreeDirArrows = 
"
" Cascade open while selected directory has only one child that also is a directory
" let NERDTreeCascadeOpenSingleChildDir = 
"
" Tells the NERD tree to automatically remove a buffer when a file is being deleted or renamed via a context menu command
" let NERDTreeAutoDeleteBuffer = 
"
" map setting
  nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
"
" autocmd setting
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"
"
