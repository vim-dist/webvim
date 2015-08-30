"
" WebVim Configuration entry point
"  
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
" 



" You won't find any configuration here directly,
" please look at files under the config folder for global config
" and under plugins for plugins configuration


filetype plugin on

let s:vimDir = $HOME.'/.vim'

let s:pluginDir = s:vimDir.'/plugins/plugged'
let s:pluginDef = s:vimDir.'/plugins/def.vim'
let s:pluginConf = s:vimDir.'/plugins/config.vim'

let s:configSetting = s:vimDir.'/config/setting.vim'
let s:configMapping = s:vimDir.'/config/mapping.vim'
let s:configAbbrev = s:vimDir.'/config/abbrev.vim'


if !isdirectory(s:pluginDir)
    " Welcome message when plugins are not yet installed
    echom " "
    echom "Welcome to WebVim"
    echom " > the vim IDE for web dev <"
    echom " "
    echom "Before getting started, you need to run the install : "
    echom " 1. :PlugInstall"
    echom " 2. take a coffee"
    echom " 3. reload vim"
    echom " 4. enjoy WebVim"
    echom " "
    
    exec ":source ".s:pluginDef
else

    exec ":source ".s:configSetting
    exec ":source ".s:configMapping
    exec ":source ".s:configAbbrev

    exec ":source ".s:pluginDef
    exec ":source ".s:pluginConf
    exec ":source ".s:pluginDef

endif




" JavaScript ------------------------------- {{{

"augroup javascript 
    "autocmd!
    "" If snippet
    "autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
"augroup END

" }}}


" Bash ------------------------------- {{{

"augroup bash 
    "autocmd!
    "" Comment a line in bash
    "autocmd FileType bash       :nnoremap <buffer> <localleader>c I#<esc>
"augroup END

" }}}


" HTML  ------------------------------- {{{

"augroup filetype_html
    "autocmd!
    "" Fold
    "autocmd FileType html nnoremap <buffer> <localleader>f Vatzf<esc>
"augroup END

" }}}


" Vimscript  ---------------------- {{{
"  this makes vimscript foldable using this wrapping comment (fold/unfold za)
"augroup filetype_vim
    "autocmd!
    "autocmd FileType vim setlocal foldmethod=marker
    "autocmd FileType vim setlocal foldlevel=99
"augroup END

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
