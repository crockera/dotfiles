"" ============================================================================
""    Name          :   pluginit.vim
""    Description   :   plugin declaration as part of neovim configurations
""    Path          :   ${HOME}/.vim/pluginit.vim
""    Author        :   crockera
""    Email         :   alexcrocker128@gmail.com
"" ============================================================================

" Check whether vim-plug is installed and install it if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" ======================================================= "
"                     EDITING PLUGINS                     "
" ======================================================= "

" Auto-close plugin
Plug 'rstacruz/vim-closer'

" Auto-close tags
Plug 'alvan/vim-closetag'

" ======================================================= "
"                     SYNTAX PLUGINS                      "
" ======================================================= "

" i3 config syntax
Plug 'PotatoesMaster/i3-vim-syntax'

" ======================================================= "
"                    UI/THEME PLUGINS                     "
" ======================================================= "

" File explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Colorschemes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }

" Dev icons
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


