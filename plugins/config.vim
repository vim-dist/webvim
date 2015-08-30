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


" [> Airline <] 

" [> Airline <] 


" [> Airline <] 


" [> Airline <] 

