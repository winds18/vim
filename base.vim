" chinese identify
  set encoding=utf-8
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,cp936
  set fileformats=unix,mac,dos                      " 文件的格式类型
  set nobomb                                        " 不让vim自动设置字节序标记
"
  syntax on                                         " 语法高亮
"
" Vundle相关设置
  set nocompatible                                  " 关闭vi兼容模式
  filetype off                                      " 关闭自动检测文件类型
  source $HOME/vim/manager.vim                      " 载入插件管理Vundle设置
  filetype plugin indent on                         " indent based on filetype
"
" open the same file, vim will remeber the last edit position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ execute "normal! g'\"" |
    \ endif

" ususl config {{{
" colorscheme default                               " set colorscheme
  set autowrite                                     " Automatically save before :next, :make etc.
  set laststatus=2                                  " always show the statusbar
  set showcmd                                       " show command
  set t_Co=256                                      " 指定配色为256色
" set number                                        " 显示行号
  set relativenumber                                " 显示相对行号
  set hlsearch                                      " 高亮显示搜索结果
  set incsearch                                     " 搜索时，时时匹配
  set ignorecase                                    " 搜索时大小写不敏感
  set smartcase                                     " 开启智能搜索
  set backspace=indent,eol,start whichwrap+=<,>,[,] " allow use backspace key
  set history=700                                   " 历史纪录行数设置
  set autoread                                      " 外部文件改动时自动载入
  set scrolloff=7                                   " 光标距离上下边界保留7行
  set cmdheight=1                                   " 设置命令行高度
  set wildmenu                                      " 打开增强菜单
" set wildmode=longest,list                         " 自定义补全行为类似（bash shell）工作方式
  set wildmode=full                                 " 自定义补全行为类似（zsh）工作方式
" set ruler                                         " 显示当前坐标
  set hidden                                        " 隐藏被中断的缓存
  set lazyredraw                                    " 当执行宏指令时关闭反复重绘
  set magic                                         " 开启魔术设置
  set matchtime=2                                   " 括号匹配显示保留时间(0.2)
  set foldenable                                    " 开启代码折叠
  set foldmethod=marker                             " 根据标记自动折叠
  set foldcolumn=0                                  " 折叠区域的宽度
  set textwidth=200                                 " 200个字符处才断行
  set list                                          " 显示特殊字符
" set listchars=tab:▸\ ,eol:¬                       " 自定义显示符号
  set listchars=eol:┘,tab:∙∙,trail:-,extends:⇒,precedes:⇐,conceal:ψ
  set splitright                                    " 垂直分割窗口在右
  set splitbelow                                    " 水平分割窗口在下
  set confirm                                       " 未保存文件退出vim时提醒
  set shortmess=atI                                 " close welcome info when vim startup
  set nrformats=alpha,octal,hex                     " <C-A>与<C-X>增减计数包含的进制
  set tags=./tags                                   " 设置默认标签路径
  set path=$PWD/**                                  " 默认搜索路径当前路径，上级路径，工作目录所在路径
  set autochdir                                     " 自动切换当前目录为当前文件所在的目录
" }}}

" Splitting{{{
  set splitright                                    " Open new vertical panes in the right rather than left.
  set splitbelow                                    " Open new horizontal panes in the bottom rather than top.
" }}}
"
" Indention and formatting.{{{
  set autoindent                                    " Indent a new line according to the previous one.
  set copyindent                                    " Copy (exact) indention from the previous line.
  set nopreserveindent                              " Do not try to preserve indention when indenting.
  set nosmartindent                                 " Turn off smartindent.
  set nocindent                                     " Turn off C-style indent.
  set fo+=q                                         " Allow formatting of comments with 'gq'.
  set fo-=r fo-=o                                   " Turn off automatic insertion of comment characters.
  set fo+=j                                         " Remove a comment leader when joining comment lines.
  filetype indent off                               " Turn off indention by filetype.

  " Override the previous settings for all file types (some filetype plugins set these options to different values, which is really annoying).
  autocmd FileType * set autoindent nosmartindent nocindent fo+=q fo-=r fo-=o fo+=j
" }}}
"
" Whitespace{{{
  set tabstop=4                                     " one tab = four spaces
  set shiftwidth=4                                  " 每一级缩进的长度
  set shiftround                                    " Round indent to multiple of shiftwidth.
  set softtabstop=4                                 " 退格键退回缩进的长度
  set expandtab                                     " change tab to space
" set noexpandtab                                   " not change tab to space
" }}}
"
" Wrapping.{{{
  set nowrap                                        " 不自动换行
" set wrap                                          " Enable text wrapping.
  set linebreak                                     " 不在单词中间断行
  set display+=lastline                             " Show as much as possible from the last shown line.
  set textwidth=0                                   " Don't automatically wrap lines.

" Disable automatic wrapping for all files (some filetype plugins set this to a different value, which is really annoying).
  autocmd FileType * set textwidth=0
" }}}
"
" 关闭备份 {{{
  set nobackup
  set nowb
  set noswapfile
" }}}

" No annoying sound on errors {{{
  set noerrorbells
  set novisualbell
  set t_vb=
  set tm=500
" }}}

  source $HOME/vim/theme/config.vim                 " load the theme

" 当前所在光标高亮显示 {{{
" set cursorline
" highlight CursorLine cterm=NONE ctermbg=23 ctermfg=green guibg=NONE guifg=NONE
" set cursorcolumn
" highlight CursorColumn cterm=NONE ctermbg=23 ctermfg=green guibg=NONE guifg=NONE
" }}}

" 设置listchars显示颜色 {{{
" highlight NonText cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" highlight SpecialKey cterm=NONE ctermbg=red ctermfg=NONE guibg=NONE guifg=NONE
" }}}

" font config {{{
" font settings
  set guifont=Monaco\ for\ Powerline                " 空格用下划线代替
" set gfw=
" }}}

" 自定义设置行号背景
  highlight LineNr ctermfg=None ctermbg=None cterm=None
" 自定义标记列背景
  highlight SignColumn ctermfg=None ctermbg=None cterm=None

" 设置vim下拉菜单配色
" highlight Pmenu guibg=brown gui=bold
" highlight PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
" highlight MatchParen ctermfg=7 ctermbg=4

" 个性化状态栏设置
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" source other config vim {{{
  source $HOME/vim/map.vim                          " load the costom map setting
  source $HOME/vim/function/config.vim              " load the costom function setting
" source $HOME/vim/autocomplete/config.vim
" }}}

  runtime macros/matchit.vim                        " 开启vim自带的增强％命令的插件
