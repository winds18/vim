" setting for vundle required. vundle is a vim plugin manager.
" set nocompatible              " required
" filetype off                  " required
"
" set the runtime path to include Vundle and initialize
  set runtimepath+=$HOME/vim/Bundles/Vundle.vim
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
  call vundle#begin('$HOME/vim/Bundles')
"
" plugin lists
  source $HOME/vim/plugin/lists.vim
"
  call vundle#end()             " required
" filetype plugin indent on     " required
"
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
  source $HOME/vim/plugin/config.vim
