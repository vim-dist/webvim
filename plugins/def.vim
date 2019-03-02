
function! InstallYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
    !cd ./third_party/ycmd/third_party/tern_runtime && npm install
  endif
endfunction

" Start plugins definition
call plug#begin($HOME.'/.vim/plugins/plugged')

Plug 'scrooloose/nerdtree', { 'commit' : '84737f2ebe533ffac9ebc21da8d1f57216962641' } | Plug 'https://gist.github.com/1f40e70e615f2fa2212bf5423662277d.git', { 'dir' : g:vimDir . '/nerdtree_plugin' } | Plug 'Xuyuanp/nerdtree-git-plugin', { 'commit' : '325a1298b0c9d8a4c61388a2f9956a534a9068cd' } | Plug 'MarSoft/nerdtree-grep-plugin', { 'commit' : '09e446ebe4770687a6283905d5ff461ea268bc14' }

Plug 'scrooloose/nerdcommenter',                  { 'commit' : '9a32fd2534427f7a1dcfe22e9c0ea6b67b6dbe78' }
Plug 'goatslacker/mango.vim',                     { 'commit' : '7af1e00e9068d4c1010a05626030eb0bf64365d7' }
Plug 'bling/vim-airline',                         { 'commit' : '89646038445ccfefc00724a9a860db2cbc4f1e70', 'do' : $HOME.'/.vim/fonts/install' }
Plug 'vim-dist/PaperColor.vim',                   { 'commit' : '9162696192a3c965d1bddef9b8500e5bc3e7c354' }
Plug 'tpope/vim-fugitive',                        { 'commit' : 'aac85a268e89a6c8be79341e130ac90256fadbd6' }
Plug 'airblade/vim-gitgutter',                    { 'commit' : '297678a08da0c2d1819d6cb98504f8a843395456' }
Plug 'editorconfig/editorconfig-vim',             { 'commit' : 'a459b8cfef00100da40fd69c8ae92c4d1e63e1d2' }
Plug 'bronson/vim-trailing-whitespace',           { 'commit' : '733fb64337b6da4a51c85a43450cd620d8b617b5' }
Plug 'scrooloose/syntastic',                      { 'commit' : '6ffba7395c562e152cb84bc8f7906de2b1ed0b8a' }
Plug 'junegunn/vim-easy-align',                   { 'commit' : '0cb6b98fc155717b0a56c110551ac57d1d951ddb' }
Plug 'terryma/vim-multiple-cursors',              { 'commit' : '51d0717f63cc231f11b4b63ee5b611f589dce1b3' }
Plug 'maksimr/vim-jsbeautify',                    { 'commit' : 'caffda66a2a8852ee132f95291115af67370c5e7', 'do' : 'git submodule update --init --recursive && npm install' }
Plug 'maxbrunsfeld/vim-yankstack',                { 'commit' : '157a659c1b101c899935d961774fb5c8f0775370' }
Plug 'tpope/vim-surround',                        { 'commit' : 'e49d6c2459e0f5569ff2d533b4df995dd7f98313'}
Plug 'elzr/vim-json',                             { 'commit' : '3727f089410e23ae113be6222e8a08dd2613ecf2'}
Plug 'othree/yajs.vim',                           { 'commit' : '437be4ccf0e78fe54cb482657091cff9e8479488'}
Plug 'othree/es.next.syntax.vim',                 { 'commit' : 'ad2d6a27073e43e41b8041b3655f2444a251c444'}
Plug 'othree/javascript-libraries-syntax.vim',    { 'commit' : '5ef435d8c28ebc3c9b52fb865f4c06db629857f7'}
Plug 'hail2u/vim-css3-syntax',                    { 'commit' : '3e40dde46c6a3bc4f0339248b000bbe96e39dc2d'}
Plug 'cakebaker/scss-syntax.vim',                 { 'commit' : '4461789d02f81fd328afbdf27d6404b6c763c25f'}
Plug 'othree/html5.vim',                          { 'commit' : 'bc7faabe7a4dfc0d963d6d8a406c3b7284e2866f'}
Plug 'Valloric/YouCompleteMe',                    { 'commit' : 'ddf18cc6ec3bb0108bb89ac366fd74394815f2c6', 'do': function('InstallYCM') }
Plug 'moll/vim-node',                             { 'commit' : 'ede047791792b9530ba1ae73ed86e9671cdd96b8'}
Plug 'syngan/vim-vimlint',                        { 'commit' : 'c8b9cd9d8a0fb6dc69667d32819aeef503cff55c'}
Plug 'ynkdir/vim-vimlparser',                     { 'commit' : '2fff43c58968a18bc01bc8304df68bde01af04d9'}
Plug 'mattn/emmet-vim',                           { 'commit' : 'd698f1658770ca5fa58c87e80421c8d65bbe9065'}

call plug#end()
