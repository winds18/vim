" denotes whether bufferline should automatically echo to the command bar
  let g:bufferline_echo = 0
"
" the separator used on the left side of a buffer
" let g:bufferline_active_buffer_left = '['
"
" the separator used on the right side of a buffer
" let g:bufferline_active_buffer_right = ']'
"
" the symbol to denote that a buffer is modified
" let g:bufferline_modified = '+'
"
" denotes whether buffer numbers should be displayed
" let g:bufferline_show_bufnr = 1
"
" denotes whether the bufferline should have rotation applied
" let g:bufferline_rotate = 0   "default, no rotate, no scrolling
" let g:bufferline_rotate = 1   "scrolling with fixed current buffer position
" let g:bufferline_rotate = 2   "scrolling without fixed current buffer position
"
" only valid when `g:bufferline_rotate` is set to 1
" let g:bufferline_fixed_index =  0 "always first
" let g:bufferline_fixed_index =  1 "always second (default)
" let g:bufferline_fixed_index = -1 "always last
"
" denotes how to display the filename of a buffer
" let g:bufferline_fname_mod = ':t'
"
" denotes the highlight group for inactive buffers
" let g:bufferline_inactive_highlight = 'StatusLineNC'
" let g:bufferline_inactive_highlight = 'Function'
"
" denotes the highlight group for the active buffer
" let g:bufferline_active_highlight = 'StatusLine'
"
" denotes whether the active highlight should be used when there is only one buffer
" let g:bufferline_solo_highlight = 0
"
" denotes any exclude patterns
" let g:bufferline_excludes = []
"
" STATUSLINE INTEGRATION
" let g:bufferline_echo = 0
" autocmd VimEnter *
" \ let &statusline='%{bufferline#refresh_status()}'
" \ .bufferline#get_status_string()
"
  let g:lightline = {
 \  'active' : {
 \      'left' : [ [ 'mode', 'paste' ], [ 'filename' ], ['bufferline'] ],
 \  },
 \  'component_function' : {
 \      'bufferline' : 'MyBufferline'
 \  }
 \}
"
  function! MyBufferline()
    call bufferline#refresh_status()
    let b = g:bufferline_status_info.before
    let c = g:bufferline_status_info.current
    let a = g:bufferline_status_info.after
    let alen = strlen(a)
    let blen = strlen(b)
    let clen = strlen(c)
    let w = winwidth(0) * 4 / 9
    if w < alen+blen+clen
        let whalf = (w - strlen(c)) / 2
        let aa = alen > whalf && blen > whalf ? a[:whalf] : alen + blen < w - clen || alen < whalf ? a : a[:(w - clen - blen)]
        let bb = alen > whalf && blen > whalf ? b[-(whalf):] : alen + blen < w - clen || blen < whalf ? b : b[-(w - clen - alen):]
        return (strlen(bb) < strlen(b) ? '...' : '') . bb . c . aa . (strlen(aa) < strlen(a) ? '...' : '')
    else
        return b . c . a
    endif
  endfunction
"
"
