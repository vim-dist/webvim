dotvim
======

my vim based IDE

## Install (Debian/Ubuntu)

	aptitude install vim vim-runtime vim-gui-common

Or compile a recent version with `xterm_clipboard` support

	git clone https://github.com/krampstudio/dotvim.git ~/.vim
    cd ~/.vim && git submodule update --init --recursive

### Dependencies

Node.js and npm
    

## Content 

- [NerdTree](https://github.com/scrooloose/nerdtree) File system navigation
- [NerdCommenter](https://github.com/scrooloose/nerdcommenter) Smart comments
- [Vim-JsBeautify](https://github.com/maksimr/vim-jsbeautify) Format JS, CSS and HTML files
- [Mango](https://github.com/goatslacker/mango.vim) Color theme
- [Vim-Node](https://github.com/moll/vim-node) Node.js module navigation
- [Vim-JavaScript-Syntax](https://github.com/jelera/vim-javascript-syntax.git) JavaScript Syntax Improved

## Cheat Sheet


[Common usage cheat sheet](http://fprintf.net/vimCheatSheet.html)

### NERDTree

- open: `Ctrl-n`
- menu: `m`
- open in a tab: `t`
- tab nav: `Shift-left|right`
- switch  win: `Ctrl-w`
- horizontal split: `i`
- vertival split: `v`

### NerdComment

- toggle: `Ctrl-_`
- comment: ̀`\cn`
- alt comment: `\cs`
- uncomment: `\ci`

### JsBeautify
- beautify: `Ctrl-f`

### Vim-Node
- Use gf inside require("...") to jump to source and module files.
- Use [I on any keyword to look for it in the current and required files.
- Use :Nedit module_name to edit the main file of a module.
- Use :Nedit module_name/lib/foo to edit its lib/foo.js file.
- Use :Nedit . to edit your Node projects main (usually index.js) file.

<!--
Visual
Visual line : V
Visual block : Ctrl-V
Visual multi : Shift-V
All: ggVG

s&r
%s/OLD/NEW/g

Moov
word/token left : b 
word/token  right: w

Clipboard
copy line : "+yy
paste : "+p


base
effacer sour cursuer: x
effacer mot dw
effacer vers fin d$
-->
