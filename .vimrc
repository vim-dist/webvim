" start Pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin on

" show line numbers
set number

" syntax highlighting
syn on
set background=dark
set t_Co=256
color mango


"indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" copy/paste
set paste
set clipboard=unnamedplus

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

" nerdcommenter
map <C-_> :call NERDComment(0, "Toggle")<CR>

" js beautify
map <C-f> :call JsBeautify()<CR>

" nerdtree autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" js libraries used
let g:used_javascript_libs = 'jquery,underscore,requirejs'
