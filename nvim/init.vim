"" ################################################################
""   Name	 :  init.vim
""   Description :  neovim configuration file
""   Path	 :  ${HOME}/.config/nvim/init.vim
""   Author	 :  crockera
""   Email	 :  alexcrocker128@gmail.com
"" ################################################################


"" **************************** "
""      Auto-Load Vim-Plug      "
"" **************************** "
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/bundle')
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"" -------------------- "
"" theming settings "
"" -------------------- "
colorscheme onehalfdark
let g:airline_theme = 'onehalfdark'




"" **************************** "
""       General Settings       "
"" **************************** "

" enable syntax highlighting
syntax on

" enable true colors
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" highlight the current line
set cursorline

" allow backspacing over autoindent, line breaks, and insert start
set backspace=indent,eol,start

" maintain the indent position of the previous line; enabled when
" no other filetype specific indenting is enabled
set autoindent

" display the cursor position on the last line of the screen or in
" the status line of the window
set ruler

" display line numbers; relative to assist with movement
set number relativenumber
set laststatus=2

" window switching command remapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



