"" ============================================================================
""    Name          :   pluginit.vim
""    Description   :   plugin declaration as part of neovim configurations
""    Path          :   ${HOME}/.config/nvim/pluginit.vim
""    Author        :   crockera
""    Email         :   alexcrocker128@gmail.com
"" ============================================================================

" Check whether vim-plug is installed and install it if necessary
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

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
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" VimWiki
Plug 'vimwiki/vimwiki'

" Colorschemes
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }

" Dev icons
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


