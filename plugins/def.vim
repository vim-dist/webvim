
function! InstallYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
    !cd ./third_party/ycmd/third_party/tern_runtime && npm install
  endif
endfunction

" Start plugins definition
call plug#begin($HOME.'/.vim/plugins/plugged')

Plug 'scrooloose/nerdtree',                       { 'commit' : '334fb0e68797cf56d17db42bf56f39030f226cf8' } | Plug 'https://gist.github.com/1f40e70e615f2fa2212bf5423662277d.git', { 'dir' : g:vimDir . '/nerdtree_plugin' }

Plug 'scrooloose/nerdcommenter',                  { 'commit' : '97cb982f1f0d0631b34b71b065e162916bee4036' }
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
Plug 'elzr/vim-json',                             { 'commit' : 'f5e3181d0b33a9c51377bb7ea8492feddca8b503'}
Plug 'othree/yajs.vim',                           { 'commit' : '138fa604d06d4e975c16d616c3c8a82d555c79fe'}
Plug 'othree/javascript-libraries-syntax.vim',    { 'commit' : '07293176a2c8f088189ff27382fa57c218a5b9a3'}
Plug 'hail2u/vim-css3-syntax',                    { 'commit' : '02bd1421344d9c242b3044e5cd9f3a92793c79ee'}
Plug 'cakebaker/scss-syntax.vim',                 { 'commit' : '4461789d02f81fd328afbdf27d6404b6c763c25f'}
Plug 'othree/html5.vim',                          { 'commit' : 'bc7faabe7a4dfc0d963d6d8a406c3b7284e2866f'}
Plug 'Valloric/YouCompleteMe',                    { 'commit' : 'ddf18cc6ec3bb0108bb89ac366fd74394815f2c6', 'do': function('InstallYCM') }
Plug 'moll/vim-node',                             { 'commit' : '13b31218447335e176d46dd5f497b274f7f49595'}
Plug 'syngan/vim-vimlint',                        { 'commit' : 'c8b9cd9d8a0fb6dc69667d32819aeef503cff55c'}
Plug 'ynkdir/vim-vimlparser',                     { 'commit' : '2fff43c58968a18bc01bc8304df68bde01af04d9'}
Plug 'mattn/emmet-vim',                           { 'commit' : '5b217264dde398699849a0211bbe1a917d8b2f7a'}

call plug#end()
