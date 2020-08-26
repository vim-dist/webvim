
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
Plug 'NLKNguyen/papercolor-theme',                { 'commit' : 'c4a4dfdc21c14f58c12d077242ae33b729c894b2' }
Plug 'bling/vim-airline',                         { 'commit' : '1c3ae6077af76927f82f87e05a7b9fdfba47ce2c', 'do' : $HOME.'/.vim/fonts/install' }
Plug 'vim-airline/vim-airline-themes',            { 'commit' : '3bfe1d00d48f7c35b7c0dd7af86229c9e63e14a9' }
Plug 'tpope/vim-fugitive',                        { 'commit' : '2564c37d0a2ade327d6381fef42d84d9fad1d057' }
Plug 'tpope/vim-rhubarb',                         { 'commit' : '57a350e6327af0074c4bc0d30b62662dfdb993af' }
Plug 'airblade/vim-gitgutter',                    { 'commit' : '7eeea63e62b1cc088a75c7a7c244fc774d82e5bb' }
Plug 'editorconfig/editorconfig-vim',             { 'commit' : '68f8136d2b018bfa9b23403e87d3d65bc942cbc3' }
Plug 'bronson/vim-trailing-whitespace',           { 'commit' : '733fb64337b6da4a51c85a43450cd620d8b617b5' }
Plug 'scrooloose/syntastic',                      { 'commit' : '6ffba7395c562e152cb84bc8f7906de2b1ed0b8a' }
Plug 'gcorne/vim-sass-lint',                      { 'commit' : 'b9ff33141294c7af143f12687e9b1cf9a3a54e0f' }
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
Plug 'Valloric/YouCompleteMe',                    { 'commit' : 'bcfd153813ac1f99947b706991eba2861f54a8a2', 'do': function('InstallYCM') }
Plug 'moll/vim-node',                             { 'commit' : 'ede047791792b9530ba1ae73ed86e9671cdd96b8'}
Plug 'syngan/vim-vimlint',                        { 'commit' : 'c8b9cd9d8a0fb6dc69667d32819aeef503cff55c'}
Plug 'ynkdir/vim-vimlparser',                     { 'commit' : '2fff43c58968a18bc01bc8304df68bde01af04d9'}
Plug 'mattn/emmet-vim',                           { 'commit' : 'd698f1658770ca5fa58c87e80421c8d65bbe9065'}
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'evanleck/vim-svelte',                       { 'commit' : 'c2a94c878aadf6b7ae16a2c8a30a35b6e04bd09d'}
Plug 'prettier/vim-prettier',                     { 'commit' : '427ef6830294c722f04cd3799f2c27a6629976a6', 'do': 'yarn install' }
call plug#end()
