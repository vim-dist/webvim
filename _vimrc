" base options
set number
syn on
set background=dark
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set paste

" start Pathogen
call pathogen#infect()
call pathogen#helptags()

" nerdtree open Ctrl-n
map <C-n> :NERDTreeToggle<CR>
" nerdtree autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
