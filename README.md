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

- [NerdTree](https://github.com/scrooloose/nerdtree)
- [NerdCommenter](https://github.com/scrooloose/nerdcommenter)
- [Vim-JsBeautify](https://github.com/maksimr/vim-jsbeautify.git)

## Cheat Sheet


[Common usage cheat sheet](http://fprintf.net/vimCheatSheet.html)

### NERDTree
open: Ctrl-n
menu: m
tab: t
tab nav: Shift-left|right
switch  win: Ctrl-w
h split: i
v split: v

NerdComment
toggle: Ctrl-_
comment: \cn
alt \cs
uncomment \ci

JsBeautify
beautify: Ctrl-f

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
