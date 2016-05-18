" the separator used on the left side
" let g:airline_left_sep='>'
"
" the separator used on the right side
" let g:airline_right_sep='<'
"
" enable modified detection
" let g:airline_detect_modified=1
"
" enable paste detection
" let g:airline_detect_paste=1
"
" enable iminsert detection
" let g:airline_detect_iminsert=1
"
" determine whether inactive windows should have the left section collapsed to only the filename of that buffer
" let g:airline_inactive_collapse=1
"
" themes are automatically selected based on the matching colorscheme. this can be overridden by defining a value.
" let g:airline_theme=
"
" if you want to patch the airline theme before it gets applied, you can supply the name of a function where you can modify the palette
" let g:airline_theme_patch_func = 'AirlineThemePatch'
" function! AirlineThemePatch(palette)
"   if g:airline_theme == 'badwolf'
"       for colors in values(a:palette.inactive)
"           let colors[3] = 245
"       endfor
"   endif
" endfunction
"
" enable/disable automatic population of the `g:airline_symbols` dictionary with powerline symbols
" let g:airline_powerline_fonts=1
" let g:airline_symbols = {}
"
" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
"
" old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'
"
" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
"
" define the set of text to display for each mode
" let g:airline_mode_map = {}
" let g:airline_mode_map = {
"/  '__' : '-',
"/  'n'  : 'N',
"/  'i'  : 'I',
"/  'R'  : 'R',
"/  'c'  : 'C',
"/  'v'  : 'V',
"/  'V'  : 'V',
"/  '' : 'V',
"/  's'  : 'S',
"/  'S'  : 'S',
"/  '^S' : 'S'
"/}
"
" define the set of filename match queries which excludes a window from having its statusline modified
" let g:airline_exclude_filenames = []
"
" define the set of filetypes which are excluded from having its window statusline modified
" let g:airline_exclude_filetypes = []
"
" defines whether the preview window should be excluded from have its window statusline modified (may help with plugins which use the preview window heavily)
" let g:airline_exclude_preview = 0
"
"
