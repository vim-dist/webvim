"shove this in ~/.vim/nerdtree_plugin/grep_menuitem.vim
"
"A really rough integration of :grep with nerdtree. Adds a 'g' menu item that
"prompts the user for a search pattern to use with :grep. :grep is run on the
"selected dir (using the parent if a file is selected)
"
" Originally written by scrooloose
" (http://gist.github.com/205807)

if exists("g:loaded_nerdtree_grep_menuitem")
    finish
endif
let g:loaded_nerdtree_grep_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(g)rep directory',
            \ 'shortcut': 'g',
            \ 'callback': 'NERDTreeGrep' })

function! NERDTreeGrep()
    let dirnode = g:NERDTreeDirNode.GetSelected()

    let pattern = input("Enter the search pattern: ")
    if pattern == ''
        echo 'Aborted'
        return
    endif

    "use the previous window to jump to the first search result
    wincmd w

    "a hack for *nix to make sure the output of "grep" isnt echoed in vim
    let old_shellpipe = &shellpipe
    let &shellpipe='&>'

    try
        exec 'silent cd ' . dirnode.path.str()
        exec 'silent grep -rn ' . pattern . ' .'
        " exec 'silent grep -rn ' . pattern . ' ' . dirnode.path.str()
    finally
        let &shellpipe = old_shellpipe
    endtry

    let hits = len(getqflist())
    if hits == 0
        echo "No hits"
    elseif hits > 1
        copen
        " echo "Multiple hits. Jumping to first, use :copen to see them all."
    endif

endfunction
