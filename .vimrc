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

" folding manual
set foldmethod=manual

" mouse
set mouse=a

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

" nerdcommenter
map <C-_> :call NERDComment(0, "Toggle")<CR>

" js beautify
map <C-f> :call JsBeautify()<CR>

" on vim enter opens nerd tree
" autocmd vimenter * NERDTree
autocmd vimenter * NERDTreeFind

" nerdtree autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" nerdtree window resize
let NERDTreeWinSize = 35

" airline smarttab extension
let g:airline#extensions#tabline#enabled = 1

" airline always opened
set laststatus=2

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" override scss filetype to fix mess with css validator
au BufRead,BufNewFile *.scss	set filetype=scss
au BufRead,BufNewFile *.tpl	set filetype=html
au BufRead,BufNewFile *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs,*.hbt,*.tpl set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
" js libraries used
let g:used_javascript_libs = 'jquery,underscore,requirejs'

" mustache abbr
let g:mustache_abbreviations = 1

" Syntax checkers
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_html_checkers=['jshint']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_conf='~/.vim/.jshintrc'
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_scss_checkers=['sass']
let g:syntastic_css_checkers=['csslint']
let g:syntastic_handlebars_checkers=['handlebars']
let g:syntastic_tpl_checkers=['handlebars']

" Custom 
" If you want to add new configurations, you can put them into the file .vim-user
let s:userconf = $HOME . '/.vim/.vim-user'
if filereadable(s:userconf)
    exec ":source ". s:userconf 
endif
