
---
title: vimrc
date: 2019-05-27 12:00:00
tags: etc
category: etc
---

```
"中文乱码 下两行“
"set termencoding=utf-8
"set encoding=prc

set number
set autoindent
set tabstop=4
set shiftwidth=4
set pastetoggle=<F9>
syntax on

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ddollar/nerdcommenter'
"Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Raimondi/delimitMate'
"Plugin 'pugjs/pug'
"Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"autocmd vimenter * NERDTree
```
