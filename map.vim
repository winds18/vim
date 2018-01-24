" gloable map setting {{{
  map <C-J> <CR>
  noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
  noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" nnoremap <C-B> <Left>
" nnoremap <C-F> <Right>
" nnoremap <C-A> <Home>
" nnoremap <C-E> <End>
  inoremap <C-B> <C-o>h
  inoremap <C-F> <C-o>l
  inoremap <C-A> <C-o>^
  inoremap <C-E> <C-o>$
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

" map about cmd {{{
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" }}}
