"" ============================================================================
""    Name          :   init.vim
""    Description   :   neovim configuration file
""    Path          :   ${HOME}/.config/nvim/init.vim
""    Author        :   crockera
""    Email         :   alexcrocker128@gmail.com
"" ============================================================================

scriptencoding utf-8
source ~/.config/nvim/pluginit.vim

" =========================================================================== "
" ===                            EDITING CONFIGS                          === "
" =========================================================================== "

" Remap leader key to ,
let g:mapleader=","

" Enable line numbers (relative)
set number relativenumber

" Yand and paste with the system clipboard
set clipboard=unnamed

" Hide buffers instead of closing them
set hidden

" Use the filetype plugin
filetype plugin on

" Use the filetype plugin to determine intentation rules
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Copy indent from current line when starting a new line
set autoindent

" Disable automatic commenting on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable the wildmenu
set wildmenu

" --------------------------------------------- "
"               TAB/SPACE SETTINGS              "
" --------------------------------------------- "

" Insert spaces when TAB is pressed
set expandtab

" Show existing tabs with a width of two spaces
set tabstop=2

" Insert two spaces for <Tab>
set softtabstop=2

" Indent amount for < and > commands
set shiftwidth=2

" Do not wrap long lines by default
set nowrap

" Don't highlight current cursor line
set nocursorline

" Only one line for command line
set cmdheight=1

" =========================================================================== "
" ===                             PLUGIN SETUP                            === "
" =========================================================================== "

" Wrap in try/catch to avoid error on before plugin is available

" ============================================= "
"                   NERDTree                    "
" ============================================= "
try " NERDTree settings

  " Show hidden files/directories
  let g:NERDTreeShowHidden = 1

  " Remove bookmarks and help text from NERDTree
  let g:NERDTreeMinimalUI = 1

  " Custom icons for expandable/expanded directories
  let g:NERDTreeDirArrowExpandable = '⬏'
  let g:NERDTreeDirArrowCollapsible = '⬎'

  " Hide certain files and directories from NERDTree
  let g:NERDTreeIgnore = [ '^\.DS_Store$', '^tags$', 
        \ '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$' ]

endtry " NERDTree settings

" ============================================= "
"                    VimWiki                    "
" ============================================= "
try " VimWiki settings
  let g:vimwiki_list = [{'path': '~/usr/vimwiki/',
        \ 'syntax': 'markdown', 'ext': '.md'}]
endtry " VimWiki settings

" ============================================================================ "
" ===                            KEY MAPPINGS                              === "
" ============================================================================ "

" Split pane navigation remapping
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" ============================================================================ "
" ===                                 UI                                   === "
" ============================================================================ "

" Enable true color support
set termguicolors

" Editor theme
set background=dark

" Colorscheme
try
  colorscheme onehalfdark
  "colorscheme challenger_deep
  "colorscheme PaperColor
catch
  colorscheme slate
endtry

" Change vertical split character to the space character (hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow

" ============================================================================ "
" ===                            KEY MAPPINGS                              === "
" ============================================================================ "

" ============================================= "
"              NERDTree shortcuts               "
" ============================================= "
"   <leader>n - Toggle NERDTree on/off
"   <leader>f - Opens current file location in NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" ============================================= "
"         Page navigation shortcuts             "
" ============================================= "
"   <Space> - PageDown
"   -       - PageUp
noremap <Space> <PageDown>
noremap - <PageUp>

" ============================================================================ "
" ===                                MISC.                                 === "
" ============================================================================ "

" Ignore case when searching
set ignorecase

" If the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread

" Set backups
if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif

" Don't put backups in current dir
set backupdir=~/.local/share/nvim/backup
set backup
set noswapfile

" If the desired backup directory (above) doesn't exist, create it
if empty(glob('~/.local/share/nvim/backup'))
	!mkdir ~/.local/share/nvim/backup
endif

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" Autoreload nvim configuration on write
augroup myinithooks
  au!
  autocmd bufwritepost init.vim source ~/.config/nvim/init.vim
augroup END

