
" Author Bertrand Chevrier <chevrier.bertrand@gmail.com>
" Vim configuration


" echo something welcome message
if !filereadable('./plugins/plugged')
    echom ">^.^<"
endif

" Basic edition settings -------------------- {{{

" wrap end of line
set wrap

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

" }}}


" Plugins  ------------------------------- {{{

filetype plugin on
filetype indent on

let s:pluginconf = './plugins/def.vim'
if filereadable(s:pluginconf)
    exec ":source ".s:pluginconf
endif

" }}}

" Key mappings ------------------------------- {{{

" leader
let mapleader = ","
let localmapleader = "\\"

" move the current line below
nnoremap <leader>- ddp

" move the current line above
nnoremap <leader>_ ddkP

" insert mode uppercase the current word
"  <esc> : go to normal mode
"  v 	 : visual mode
"  iw 	 : select the current word
"  U 	 : uppercase selection
"  i 	 : back to insert mode
inoremap <c-u> <esc>viwUi

" Wrap a word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Wrap a word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Open MYVIMRC in a vsplit
nnoremap <leader>ev :split $MYVIMRC<cr>

" Source MYVIMRC 
nnoremap <leader>sv :source $MYVIMRC<cr>

" Leave insert mode (like <esc>) and disable <esc>
inoremap jk <esc>
inoremap <esc> <nop>

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Operator-pendings 

" select inside parents
onoremap in( :<c-u>normal! f(vi(<cr>

" }}}


" Abbreviations ------------------------------- {{{

" my email
iabbrev @@ chevrier.bertrand@gmail.com

" }}}


" JavaScrip ------------------------------- {{{

augroup javascript 
    autocmd!
    " comment a line  
    autocmd FileType javascript :nnoremap <buffer> <localleader>c I//<esc>
    
    " If snippet
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END

" }}}


" Bash ------------------------------- {{{

augroup bash 
    autocmd!
    " Comment a line in bash
    autocmd FileType bash       :nnoremap <buffer> <localleader>c I#<esc>
augroup END

" }}}


" HTML  ------------------------------- {{{

augroup filetype_html
    autocmd!
    " Fold
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf<esc>
augroup END

" }}}


" Vimscript  ---------------------- {{{
"  this makes vimscript foldable using this wrapping comment (fold/unfold za)
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}} 


exit

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

let s:pluginconf = './plugins/def.vim'
if filereadable(s:pluginconf)
    exec ":source ".s:pluginconf
endif

"spell checking
" zg to add a word into dic
" z= for autocomplete
"set spell spelllang=en_us
"set complete+=kspell

" nerdtree also remapped on after
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

" airline:
"  smarttab extension
" let g:airline#extensions#tabline#enabled = 1
"  pwerline font
let g:airline_powerline_fonts=1

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
let g:used_javascript_libs = 'jquery,underscore,requirejs,chai,handlebars'

" tern mapping like <Leader> tR for rename
let g:tern_map_keys=1

" tern type hints
let g:tern_show_argument_hints='on_hold'

" mustache abbr
let g:mustache_abbreviations = 1

" Syntax checkers
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_html_checkers=['jshint']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_args = '--config ~/.vim/.jshintrc'
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_scss_checkers=['scss_lint']
let g:syntastic_css_checkers=['csslint']
let g:syntastic_handlebars_checkers=['handlebars']
let g:syntastic_tpl_checkers=['handlebars']

" phpcomplete
let g:phpcomplete_parse_docblock_comments=1

" ctrl-p mapped to something else than ctrl-p...
let g:ctrlp_map = '<C-I>'
let g:ctrlp_cmd = 'CtrlP'

" jsdoc
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_underscore_private=1
let g:jsdoc_allow_shorthand=1

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
let g:easy_align_ignore_groups = ['Comment']

" multiple cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Custom
" If you want to add new configurations, you can put them into the file .vim-user
let s:userconf = $HOME . '/.vim/.vim-user'
if filereadable(s:userconf)
    exec ":source ". s:userconf
endif
