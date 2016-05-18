" what's the system platform is {{{

" golable variables(0 for false, 1 for true)
  let g:iswin = 0                 " weather windows or not
  let g:islinux = 0               " weather linux or not
  let g:ismac = 0                 " weather macos or not
  let g:isgui = 0                 " weather gui or term
" let mapleader = ";"
  source $HOME/vim/base.vim

" get the system type and ensure use gui or not
  if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswin = 1
  else
    let unix = substitute(system('uname'), '\n', '', '')
    if(unix == 'Darwin' || unix == 'Mac')
        let g:ismac = 1
    elseif(unix == 'Linux')
        let g:islinux = 1
    endif
  endif

  if(has("gui_running") || has("gui_macvim"))
    let g:isgui = 1
  endif
"
" load windows term settings
  if(g:iswin && !g:isgui)
    source $HOME/vim/vimrc/win_vim.vim
  endif
"
" load windows gui settings
  if(g:iswin && g:isgui)
    source $HOME/vim/vimrc/win_gvim.vim
  endif
"
" load linux term settings
  if(g:islinux && !g:isgui)
    source $HOME/vim/vimrc/linux_vim.vim
  endif
"
" load linux gui settings
  if(g:islinux && g:isgui)
    source $HOME/vim/vimrc/linux_gvim.vim
  endif
"
" load macos term settings
  if(g:ismac && !g:isgui)
    source $HOME/vim/vimrc/mac_vim.vim
  endif
"
" load macos gui settings
  if(g:ismac && g:isgui)
    source $HOME/vim/vimrc/mac_gvim.vim
  endif
" }}}
