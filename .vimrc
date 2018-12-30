"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc - vim configuration file
"
" Maintainer:
" 	Alex Crocker
"
" Repository:
" 	https://github.com/crockera
"
" Version: 29/12/18 23:48:00
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" automatically install vim-plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" specify vim-plug plugin directory
call plug#begin('~/.vim/plugged')

" plugins
Plug 'tpope/vim-sensible'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vimwiki/vimwiki'

" initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" depricated with nvim
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set showcmd
set wildmenu			" sow command autocompletion menu
set incsearch			" search as characters are entered
set hlsearch			" highlight matches
set ruler			" show ruler

" disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" splits and split navigation
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" remove trailing whitespace on write
autocmd BufWritePre * %s/\s\+$//e

" merge xrdb on config update
autocmd BufWritePost ~/.Xresources,~/.Xdefauluts !xrdb %

" default tab spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4

