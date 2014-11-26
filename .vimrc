set nocompatible

colorscheme elflord
syntax enable
filetype indent on

set tabstop=4 " visual
set softtabstop=4 " inserted
set expandtab
set autoindent

set wildmenu
set lazyredraw
set showmatch
set incsearch

:highlight ExtraWhitespace ctermbg=red guibg=red
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
