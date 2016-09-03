set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'fatih/vim-go'
call vundle#end()
filetype plugin indent on

colorscheme murphy
syntax enable

set tabstop=4 " visual
set softtabstop=4 " inserted
set shiftwidth=4 "something else
set expandtab
set autoindent

set wildmenu
set lazyredraw
set showmatch
set incsearch


:highlight ExtraWhitespace ctermbg=red guibg=red
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
