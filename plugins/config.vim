"
" WebVim Configuration : Plugins configuration
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"

" TODO split by plugin ?


" [> NERDTree <]

" on vim enter opens nerd tree
function! OpenNerdTree()
    if match(expand('%t'), 'COMMIT_EDITMSG') < 0
        NERDTreeFind
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
"autocmd VimEnter * call OpenNerdTree()

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


" [> NERDCommenter <]

noremap <c-_> :call NERDComment(0, "Toggle")<cr>


" [> Airline <]

" status line always opened
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

"  powerline font
let g:airline_powerline_fonts=1


" [> EditorConfig <]

" to avoid issues with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


" [> Syntastic <]

"" Syntax checkers
function! GetJslinters()
    let l:linters = [ ['eslint', '.eslintrc'], ['jshint', '.jshintrc'] ]
    let l:linter = ''
    let l:available = []
    for l:linter in l:linters
       if executable(l:linter)
            echom l:linter . ' found'
            call add(l:available, l:linter)
       endif
    endfor
    return l:available
endfunction

function! Jslinter(path, linters)
    let l:linter = ''
    let l:selected = []
    let l:dir = fnamemodify(a:path, ':p:h')

    if(l:dir == '/')
        return
    endif

    for l:linter in l:linters
        echom 'checking ' . l:dir . '/' . get(l:linter, 1)
        if(filereadable(l:cwd . '/' j. get(l:linter, 1)))
            return get(l:linter, 0)
        endif
    endfor
    "elseif(filereadable(l:cwd . '/.eslintrc'))
        "echom 'has eslint'
    "else
        "call Jslinter(fnamemodify(l:cwd, ':h'))
    "endif
endfunction


call Jslinter(expand('%p'), GetJslinters())


let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_html_checkers=['tidy']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_js_checkers=['eslint']
"let g:syntastic_javascript_jshint_args = '--config ~/.vim/.jshintrc'
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_yaml_checkers=['js-yaml']
let g:syntastic_scss_checkers=['scss-lint']
let g:syntastic_css_checkers=['csslint']
let g:syntastic_handlebars_checkers=['handlebars']
let g:syntastic_tpl_checkers=['handlebars']


" [> EasyAlign <]

" select paragraph and start easyalign on the left
nnoremap <leader>a vip<Plug>(EasyAlign)<cr>

" Start interactive align to the right
vnoremap <leader>a <Plug>(EasyAlign)<cr><right>

let g:easy_align_ignore_groups = ['Comment']


" [> multiple cursor <]

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<esc>'


" [> JsBeautify <]

" format selection
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer>  <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" format the whole file
autocmd FileType javascript nnoremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json nnoremap <buffer>  <c-f> :call JsonBeautify()<cr>
autocmd FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>

" [> YankStack <]

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" [> Javascript libraries syntax <]

let g:used_javascript_libs = 'jquery,underscore,requirejs,chai,handlebars'


