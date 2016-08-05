" Use this option to control how many indent levels to display guides for
" let g:indent_guides_indent_levels = 2
"
" Use this option to control whether or not the plugin automatically calculates the highlight colors. Will use the current colorscheme's background color as a base color
" let g:indent_guides_auto_colors = 1
"
  let g:indent_guides_auto_colors = 0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
" Use this option to control the percent at which the highlight colors will be lightened or darkened
" let g:indent_guides_color_change_percent = 10
"
" Use this option to customize the size of the indent guide
  let g:indent_guides_guide_size = 1
"
" Use this option to control which indent level to start showing guides from
  let g:indent_guides_start_level = 2
"
" Use this option to control whether the plugin considers spaces as indention
" let g:indent_guides_space_guides = 0
"
" Use this option to explicitly specify a pattern for soft indentation
" let g:indent_guides_soft_pattern = ' '
"
" Use this option to control whether the plugin is enabled on Vim startup
  let g:indent_guides_enable_on_vim_startup = 0
"
" Use this option to specify a list of filetypes to disable the plugin for
" let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"
" Use this option to control whether the default mapping (<Leader>ig) gets set
  let g:indent_guides_default_mapping = 0
  :nmap <silent> <Leader>gt <Plug>IndentGuidesToggle
  :nmap <silent> <Leader>ge <Plug>IndentGuidesEnable
  :nmap <silent> <Leader>gd <Plug>IndentGuidesDisable
"
" 
