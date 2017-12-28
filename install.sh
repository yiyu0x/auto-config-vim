#!/bin/bash

sudo apt-get -y install git vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "
set nocompatible              \" be iMproved, required
filetype off                  \" required

\" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gmarik/Vundle.vim'

call vundle#end()            \" required
filetype plugin indent on    \" required

\"airline theme
let g:airline_theme = 'light'
" >> ~/.vimrc


vim -c "PluginInstall" -c "q" -c "q"
