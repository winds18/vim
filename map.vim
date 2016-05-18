" gloable map setting {{{
  map <C-J> <CR>
" nnoremap <C-B> <Left>
" nnoremap <C-F> <Right>
" nnoremap <C-A> <Home>
" nnoremap <C-E> <End>
  inoremap <C-B> <Left>
  inoremap <C-F> <Right>
  inoremap <C-A> <Home>
  inoremap <C-E> <End>
" vnoremap <C-B> <Left>
" vnoremap <C-F> <Right>
" vnoremap <C-A> <Home>
" vnoremap <C-E> <End>
  cnoremap <C-A> <Home>
  cnoremap <C-E> <End>
  cnoremap <C-B> <Left>
" cnoremap <C-D> <Del>
  cnoremap <C-F> <Right>
  cnoremap <C-N> <Down>
  cnoremap <C-P> <Up>
" cnoremap <Esc><C-B> <S-Left>
" cnoremap <Esc><C-F> <S-Right>
  cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" }}}

" map about indent {{{
" nnoremap <Tab> v>
" nnoremap <S-Tab> v<
" vnoremap <Tab> >gv
" vnoremap <S-Tab> <gv
" }}}

" map about fold {{{
" nnoremap <Space> za
" }}}
