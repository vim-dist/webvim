" start Pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin on

" show line numbers
set number

"syntax highlighting
syn on
set background=dark

"indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" copy/paste
set paste
set clipboard=unamedplus

" nerdtree
map <C-n> :NERDTreeToggle<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

" nerdtree autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

