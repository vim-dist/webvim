" Author Bertrand Chevrier <chevrier.bertrand@gmail.com>
" Vim configuration


" Basic edition settings -------------------- {{{

" wrap end of line
set nowrap

" show line numbers
set number

" syntax highlighting
syntax on
set background=dark
set t_Co=256
color mango

"indent
set smartindent
set autoindent    
set copyindent 
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

"search
set showmatch
set smartcase

set hlsearch
set incsearch


" copy/paste
"set paste
set clipboard=unnamedplus

" folding manual
set foldmethod=manual

" mouse
set mouse=a

" }}}


" Plugins  ------------------------------- {{{

filetype plugin indent on

let s:pluginconf = $HOME.'/.vim/plugins/def.vim'
if filereadable(s:pluginconf)
    exec ":source ".s:pluginconf
else
    echom "unable to load ".s:pluginconf
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

" switch tab
nnoremap <S-right> :tabn<CR>
nnoremap <S-left> :tabp<CR>

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
inoremap <special> <esc> <nop>

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


" NerdTree config  ------------------------------- {{{

" on vim enter opens nerd tree
function! OpenNerdTree()
    if match(expand('%t'), 'COMMIT_EDITMSG') < 0
        NERDTreeFind
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
autocmd VimEnter * call OpenNerdTree()

" nerdtree autoclose if it is the last opened buffer
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" nerdtree window resize
let NERDTreeWinSize = 35

" show hidden files
let NERDTreeShowHidden=1

" single click to open nodes
let NERDTreeMouseMode=3

" ignored files
let NERDTreeIgnore=['\.swp$', '\~$']
nnoremap <c-n> :NERDTreeToggle<cr> 

" }}}


" NerdComment config  ------------------------------- {{{

noremap <c-_> :call NERDComment(0, "Toggle")<cr> 

" }}}


" Abbreviations ------------------------------- {{{

" my email
iabbrev @@ chevrier.bertrand@gmail.com

" }}}


" JavaScript ------------------------------- {{{

augroup javascript 
    autocmd!
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
    autocmd FileType vim setlocal foldlevel=99
augroup END

" }}} 


" show line numbers
"set number

" syntax highlighting
"syn on
"set background=dark
"set t_Co=256
"color mango


"indent
"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab

" copy/paste
"set paste
"set clipboard=unnamedplus

" folding manual
" set foldmethod=manual

" mouse
" set mouse=a


"spell checking
" zg to add a word into dic
" z= for autocomplete
"set spell spelllang=en_us
"set complete+=kspell

" nerdtree also remapped on after
"nnoremap <C-n> :NERDTreeToggle<CR>
"nnoremap <S-Right> :tabn<CR>
"nnoremap <S-Left> :tabp<CR>
"
"" nerdcommenter
"map <C-_> :call NERDComment(0, "Toggle")<CR>
"
"" js beautify
"map <C-f> :call JsBeautify()<CR>
"
"" on vim enter opens nerd tree
"" autocmd vimenter * NERDTree
"autocmd vimenter * NERDTreeFind
"
"" nerdtree autoclose
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"
"" nerdtree window resize
"let NERDTreeWinSize = 35
"
"" airline:
""  smarttab extension
"" let g:airline#extensions#tabline#enabled = 1
""  pwerline font
"let g:airline_powerline_fonts=1
"
"" airline always opened
"set laststatus=2
"
"" If you prefer the Omni-Completion tip window to close when a selection is
"" made, these lines close it on movement in insert mode or when leaving
"" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
"" override scss filetype to fix mess with css validator
"au BufRead,BufNewFile *.scss	set filetype=scss
"au BufRead,BufNewFile *.tpl	set filetype=html
"au BufRead,BufNewFile *.mustache,*.handlebars,*.hbs,*.hogan,*.hulk,*.hjs,*.hbt,*.tpl set filetype=html syntax=mustache | runtime! ftplugin/mustache.vim ftplugin/mustache*.vim ftplugin/mustache/*.vim
"" js libraries used
"let g:used_javascript_libs = 'jquery,underscore,requirejs,chai,handlebars'
"
"" tern mapping like <Leader> tR for rename
"let g:tern_map_keys=1
"
"" tern type hints
"let g:tern_show_argument_hints='on_hold'
"
"" mustache abbr
"let g:mustache_abbreviations = 1
"
"" Syntax checkers
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"let g:syntastic_html_checkers=['jshint']
"let g:syntastic_javascript_checkers=['jshint']
"let g:syntastic_javascript_jshint_args = '--config ~/.vim/.jshintrc'
"let g:syntastic_json_checkers=['jsonlint']
"let g:syntastic_scss_checkers=['scss_lint']
"let g:syntastic_css_checkers=['csslint']
"let g:syntastic_handlebars_checkers=['handlebars']
"let g:syntastic_tpl_checkers=['handlebars']
"
"" phpcomplete
"let g:phpcomplete_parse_docblock_comments=1
"
"" ctrl-p mapped to something else than ctrl-p...
"let g:ctrlp_map = '<C-I>'
"let g:ctrlp_cmd = 'CtrlP'
"
"" jsdoc
"let g:jsdoc_allow_input_prompt=1
"let g:jsdoc_underscore_private=1
"let g:jsdoc_allow_shorthand=1
"
"" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
"vmap <Enter> <Plug>(EasyAlign)
"
"" Start interactive EasyAlign for a motion/text object (e.g. gaip)
"nmap ga <Plug>(EasyAlign)
"let g:easy_align_ignore_groups = ['Comment']
"
"" multiple cursor
"let g:multi_cursor_use_default_mapping=0
"let g:multi_cursor_next_key='<C-m>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"
"" Custom
"" If you want to add new configurations, you can put them into the file .vim-user
"let s:userconf = $HOME . '/.vim/.vim-user'
"if filereadable(s:userconf)
"    exec ":source ". s:userconf
"endif
