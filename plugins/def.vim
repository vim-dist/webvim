" Start plugins definition 
call plug#begin($HOME.'/.vim/plugins/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'goatslacker/mango.vim'
Plug 'bling/vim-airline', { 'do' : $HOME.'/.vim/fonts/install' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'bronson/vim-trailing-whitespace'

call plug#end()
