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

" Syntax checkers
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_conf='~/.vim/.jshintrc'
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_css_checkers=['csslint']

