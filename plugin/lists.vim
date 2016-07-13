" 插件管理插件
  Plugin 'gmarik/Vundle.vim'                                                                " 插件管理插件Vundle

" 语法高亮插件列表
" Plugin 'zaiste/tmux.vim'                                                                  " tmux语法高亮
" Plugin 'etaoins/vim-volt-syntax'                                                          " volt语法高亮
" Plugin 'evanmiller/nginx-vim-syntax'                                                      " nginx语法高亮
" Plugin 'tpope/vim-markdown'                                                               " markdown语法插件
" Plugin 'plasticboy/vim-markdown'                                                          " markdown语法高亮
" Plugin 'hallison/vim-markdown'                                                            " markdown语法高亮
" Plugin 'vim-scripts/actionscript.vim'                                                     " actionscript语法高亮
" Plugin 'leshill/vim-json'                                                                 " json语法高亮
" Plugin 'skammer/vim-css-color'                                                            " css语法高亮
"
" 快速开发插件
" Plugin 'kien/ctrlp.vim'                                                                   " 快速查找插件
" Plugin 'kana/vim-textobj-entire'                                                          " 新增两种整个文件的文本对象
" Plugin 'terryma/vim-multiple-cursors'                                                     " 多行选中插件(类似sublimetext)
" Plugin 'scrooloose/syntastic'                                                             " 及时语法检测插件
" Plugin 'nathanaelkane/vim-indent-guides'                                                  " 语法缩进高亮图形表示插件,用来帮助缩进对齐的插件，需要的时候会很好用
  Plugin 'kshenoy/vim-signature'                                                            " marks显示插件
  Plugin 'godlygeek/tabular'                                                                " 万能格式过滤与对齐插件
" Plugin 'vim-scripts/snipMate'                                                             " 代码块补全插件
" Plugin 'drmingdrmer/xptemplate'                                                           " 代码块补全插件
  Plugin 'SirVer/ultisnips'                                                                 " 提供超强的快速生成代码段的功能(超越snipmate)
  Plugin 'honza/vim-snippets'                                                               " 单独的snippets引擎，与ultisnips配合使用
" Plugin 'vim-scripts/AuthorInfo'                                                           " 自动生成/更新文件的作者信息
" Plugin 'tomtom/checksyntax_vim'                                                           " 一个通用的语法检查插件，支持c,js,等等
" Plugin 'vim-scripts/The-NERD-Commenter'                                                   " 注释插件
  Plugin 'scrooloose/nerdcommenter'                                                         " 注释插件
" Plugin 'tpope/vim-commentary'                                                             " 注释插件
" Plugin 'vim-scripts/DoxygenToolkit.vim'                                                   " 由注释生成文档，并且能够快速生成函数标准注释
" Plugin 'vim-scripts/AuthorInfo'                                                           " 自动识别文件类型添加相对应的作者信息
" Plugin 'vim-scripts/load_template'                                                        " 可自定义载入模版插件
" Plugin 'xolox/vim-easytags'                                                               " ctags自动生成与高亮插件
" Plugin 'xolox/vim-misc'                                                                   " 依赖插件(Miscellaneous auto-load)
" Plugin 'vim-scripts/vcscommand.vim'                                                       " svn插件
" Plugin 'terryma/vim-multiple-cursors'                                                     " True Sublime Text style multiple selections for Vim
"
" c/c++
" Plugin 'vim-scripts/a.vim'                                                                " .cpp和.h文件之间快速切换
" Plugin 'vim-scripts/OmniCppComplete'                                                      " 实现写C/C++语言时自动补全 
"
" markdown
  Plugin 'plasticboy/vim-markdown'
"
" python
" Plugin 'kevinw/pyflakes-vim'                                                              " 提供实时检查python代码语法的功能（强烈推荐！）
" Plugin 'fs111/pydoc.vim'                                                                  " 在vim中查找python文档
" Plugin 'davidhalter/jedi-vim'                                                             " 提供很好的python代码提示，以及shift+k 提供 __doc__ 展示功能
" Plugin 'vim-scripts/python.vim'                                                           " python语法高亮
"
" PHP
" Plugin 'StanAngeloff/php.vim'                                                             " php语法高亮
" Plugin '2072/PHP-Indenting-for-VIm'                                                       " 官方PHP缩进插件
" Plugin 'shawncplus/phpcomplete.vim'                                                       " php补全插件
" Plugin 'dsawardekar/wordpress.vim'                                                        " wordpress插件
" Plugin 'tyru/open-browser.vim'                                                            " wordpress官方api查询插件
" Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'                                           " php doc
" Plugin 'vim-scripts/CodeCommenter'                                                        " php doc
"
" js
" Plugin 'beautify-web/js-beautify'                                                         " js代码整理插件
  Plugin 'maksimr/vim-jsbeautify'                                                           " js代码格式化
" Plugin 'einars/js-beautify'                                                               " js代码美化
" Plugin 'vim-scripts/jQuery'                                                               " jquery语法高亮
" Plugin 'pangloss/vim-javascript'                                                          " js语法高亮
" Plugin 'jelera/vim-javascript-syntax'                                                     " js语法高亮
" Plugin 'burnettk/vim-angular'                                                             " angular语法
"                                                                                           " for jsx 一下4个插件，后两个可选
" Plugin 'othree/yajs.vim'
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'othree/es.next.syntax.vim'
"
  Plugin 'isRuslan/vim-es6'                                                                 " for js es6 标准
" html/xml
  Plugin 'othree/html5.vim'                                                                 " html5语法高亮
" Plugin 'vim-scripts/matchit.zip'                                                          " 使%不仅能够匹配简单的<>()，还能匹配<html></html>之类标签的功能
" Plugin 'othree/xml.vim'                                                                   " 提供快速编写xml/html的能力，如标签自动闭合等
  Plugin 'mattn/emmet-vim'                                                                  " html快速开发插件
" Plugin 'groenewege/vim-less'                                                              " less语法高亮
"
" lisp
" Plugin 'kovisoft/slimv'                                                                   " Superior Lisp Interaction Mode for Vim
"
" 自动补全插件
" Plugin 'Shougo/neocomplete.vim'                                                           " 自动补全插件
" Plugin 'Valloric/YouCompleteMe'                                                           " 补全插件YCM
" Plugin 'vim-scripts/AutoComplPop'                                                         " 补全插件ACP
" Plugin 'vim-scripts/CmdlineComplete'                                                      " 提供命令模式下的补全，可以补全缓冲区中出现过的单词，很好用(另一个选择是cmdline completion)
" Plugin 'vim-scripts/cmdline-completion'                                                   " cmdline completion
"
" 缓存相关插件
" Plugin 'bling/vim-bufferline'                                                             " 命令栏显示缓存文件列表插件
"
" 个性化状态栏插件
  Plugin 'powerline/powerline', {'rtp' : 'powerline/bindings/vim/'}                         " 状态栏插件powerline
" Plugin 'bling/vim-airline'                                                                " 状态栏插件airline
"
" 窗口相关插件
" Plugin 'vim-scripts/winmanager'                                                           " 窗口管理插件
" Plugin 'scrooloose/nerdtree'                                                              " 树形文件浏览插件
" Plugin 'mbbill/undotree'                                                                  " 图形显示撤销历史纪录
" Plugin 'sjl/gundo.vim'                                                                    " 图形显示撤销历史纪录
" Plugin 'vim-scripts/taglist.vim'                                                          " 显示源代码文件函数列表插件
" Plugin 'majutsushi/tagbar'                                                                " 标签显示插件
"
" 版本控制插件
" Plugin 'tpope/vim-fugitive'                                                               " git插件
" Plugin 'airblade/vim-gitgutter'                                                           " git文件差异对比插件
"
" 检索插件
" Plugin 'Shougo/unite.vim'                                                                 " 万能检索插件unite
" Plugin 'vim-scripts/FuzzyFinder'                                                          " 很强大的文件查找工具，需要依赖L9
"
" 其他类型好用的插件列表
" Plugin 'mbbill/fencview'                                                                  " 自动识别编码插件
" Plugin 'myusuf3/numbers.vim'                                                              " 行号个性化插件
" Plugin 'vim-scripts/vim-auto-save'                                                        " 自动文档保存插件
" Plugin 'bronson/vim-trailing-whitespace'                                                  " 多余空格高亮提示(红色)
" Plugin 'junegunn/goyo.vim'                                                                " 简约写作插件
" Plugin 'vim-scripts/Conque-Shell'                                                         " vim下的终端插件
" Plugin 'Shougo/vimshell.vim'                                                              " Powerful shell implemented by vim
" Plugin 'Shougo/vimproc.vim'                                                               " Interactive command execution in Vim
" Plugin 'vim-scripts/DrawIt'                                                               " vim画图插件
" Plugin 'scwbin/csExplorer'                                                                " 提供列出配色列表的功能，就不用一个个手工去敲配色名字了
" Plugin 'itchyny/calendar.vim'                                                             " 提供强大的日历的功能
" Plugin 'vim-scripts/VisIncr'                                                              " 提供生成数列的功能
" Plugin 'vimwiki/vimwiki'                                                                  " 用vim来打造个人wiki
" Plugin 'vim-scripts/auto_mkdir'                                                           " 用 :w写入文件的时候会自动创建目录
  Plugin 'tpope/vim-surround'                                                               " 快速给单词/句子两边增加符号（包括html标签），缺点是不用用”.”来重复命令，repeat.vim可以解决这个问题
" Plugin 'tpope/vim-repeat'                                                                 " enable repeating supported plugin maps with '.'
" Plugin 'vim-scripts/VimRepress'                                                           " 用vim来查看、发布、修改、删除博客
" Plugin 'vim-scripts/VOoM'                                                                 " 提供outline功能，功能非常强大
" Plugin 'vim-scripts/Align'                                                                " 提供对齐文字的功能，不同于indent插件，一旦用到就会非常方便
" Plugin 'vim-scripts/weibo.vim'                                                            " 在Vim中发腾讯微博
" Plugin 'vim-scripts/colorsel.vim'                                                         " 可视化配色插件
  Plugin 'mhinz/vim-startify'                                                               " vim启动的时候显示一个启动画面
"
" 主题列表
  Plugin 'altercation/solarized', {'rtp' : 'vim-colors-solarized'}
" Plugin 'altercation/vim-colors-solarized'                                                 " 配色主题solarized
" Plugin 'vim-scripts/desertEx'                                                             " 配色主题desertEx
" Plugin 'junegunn/seoul256.vim'                                                            " 配色主题seoul256
" Plugin 'junegunn/limelight.vim'                                                           " 配色主题limelight
" Plugin 'nanotech/jellybeans.vim'                                                          " 配色主题jellybeans
" Plugin 'tomasr/molokai'                                                                   " 配色主题molokai
" Plugin 'chriskempson/base16-vim'                                                          " 配色主题base16
" Plugin 'chriskempson/tomorrow-theme'                                                      " 配色主题tomorrow
"
" 调试插件
" Plugin 'joonty/vdebug'                                                                    " Multi-language DBGP debugger client for Vim (PHP, Python, Perl, Ruby, etc.)
