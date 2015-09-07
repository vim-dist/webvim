WebVim
======

![WebVim](https://raw.githubusercontent.com/krampstudio/dotvim/master/resources/WebVim.svg)

WebVim is my vim based IDE for web development.

It targets :
 - JavaScript development (ES5, ES6, node.js)
 - HTML5
 - CSS3 and SCSS

And contains the features you expect from a modern code editor :

 - syntax highighting
 - syntax and error checking
 - autocompletion
 - multi cursor
 - git support
 - code format
 - support coding conventions (editorconfig)
 - hardcore mode (for real vim users)
 - jsdoc generation (coming soon)
 - debugging (coming soon)
 - grunt/gulp support (coming soon)
 - all the awesomess from Vim


## Install

__Only tested on linux__ (Ubuntu and Debian)

### Dependencies

 1. A modern version of vim

	apt-get install vim vim-runtime vim-gui-common

or compile a recent version with `xterm_clipboard` and `ruby` or `python` support.

 2. Some tools to compile YouCompleteMe

    apt-get install build-essential cmake python-dev exuberant-ctags libclang3.4-dev

 3. Node.js and npm

    curl -sL https://deb.nodesource.com/setup_0.12 | bash -
    apt-get install -y nodejs

 4. Some npm packages

    npm install -g eslint csslint jshint jsonlint scss-lint handlebars

### Install it:

	git clone https://github.com/krampstudio/webvim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vi

Then run in webvim `:PlugInstall`


### Usage

|                                                 | Command           | Mode | Context   |
|-------------------------------------------------|-------------------|:----:|-----------|
|                                                                                        |
| __Plugins__                                                                            |
|                                                                                        |
| Install Plugins                                  | `:PlugInstall`   | n    |           |
| Update Plugins                                   | `:PlugUpdate`    | n    |           |
|                                                                                        |
| __Config__                                                                             |
|                                                                                        |
| Edit .vimrc                                      | `<leader>e`      | n    |           |
| Reload .vimrc                                    | `<leader>s`      | n    |           |
|                                                                                        |
| __File Tree (NERDTree)__                                                               |
|                                                                                        |
| Toggle Tree                                      | `<c-n>`          | n    |           |
| Open a node in a new tab                         | `t`              |      | Tree Node |
| Tree menu                                        | `m`              |      | Tree Node |
| Add a file                                       | `a`              |      | Tree Menu |
| Delete a file                                    | `d`              |      | Tree Menu |
| Move a file                                      | `m`              |      | Tree Menu |
| Copy a file                                      | `c`              |      | Tree Menu |
| Move to right tab                                | `<s-right>`      | n    |           |
| Move to right tab                                | `<s-right>`      | n    |           |
| Change window (ie. tree to tab)                  | `<c-w><c-w>`     |      |           |
|                                                                                        |
| __Comment__                                                                            |
|                                                                                        |
| Toggle comments                                  | `<c-/>`          | nv   |           |
|                                                                                        |
| __Git__                                                                                |
|                                                                                        |
| git diff                                         | `:Gdiff`        | n     |           |
| git status                                       | `:Gstatus`      | n     |           |
| git commit                                       | `:Gcommit`      | n     |           |
| git blame                                        | `:Gblame`       | n     |           |
| git mv                                           | `:Gmove`        | n     |           |
| git rm                                           | `:Gremove`      | n     |           |
| Open the current file in Github                  | `:Gbrowse`      | n     |           |
|                                                                                        |
| __Spell Check__                                                                        |
|                                                                                        |
| Enable checking                                  | `set spell`      | n    |           |
| move to the next mispelled word                  | `]s`             | n    |           |
| move to the previous mispelled word              | `[s`             | n    |           |
| add a word to the dictionary                     | `zg`             | n    |           |
| undo the addition of a word to the dictionary    | `zug`            | n    |           |
| view spelling suggestions for a mispelled word   | `z=`             | n    |           |
|                                                                                        |
| _Next sections to come soonk_                                                          |


_Modes_ :
 - `n` normal
 - `i` insert
 - `v` visual

_Commands_ :
 - `:command` a vim command
 - `:set somthing` can also be replaced by `:setlocal something` to apply it to the current buffer only
 - `<c-m>a` or `a` a keyboard command
   - `<c-/>` means `CTRL and `/` (this is the vim notation)
   - `<s-left>` means `Shift` and `left arrow`
   - `<c-a>b` means `CTRL` and `a`, then `b`
   - `<leader>` is mapped to `,`
   - `<localleader>` is mapped to `\`

   - `<localleader>` is mapped to `\`


[Common usage cheat sheet](http://fprintf.net/vimCheatSheet.html)

<!--

### NERDTree

- open: `Ctrl-n`
- menu: `m`
  - then `g` to grep, `a` to add, `c` to copy, `m` to moven, `d` to delete
- open in a tab: `t`
- tab nav: `Shift-left|right`
- switch  win: `Ctrl-w`
- horizontal split: `i`
- vertival split: `v`

### NerdComment

- toggle: `Ctrl-_` or `Ctrl-Shift-/`
- comment: ̀`\cn`
- alt comment: `\cs`
- uncomment: `\ci`

### YankRing

Paste then:
- move backwards through the yankring : `Ctrl-P`
- move forwards through the yankring : `Ctrl-PN`

### JsBeautify

- beautify: `Ctrl-f`

### Vim-Node

- Inside require("...") to jump to source and module files: `gf`
- Use [I on any keyword to look for it in the current and required files: `[I`
- Edit the main file of a module: `:Nedit module_name`
- Edit its lib/foo.js file: `:Nedit module_name/lib/foo`
- Edit your Node projects main (usually index.js) file: `:Nedit .`

### Syntastic

- Checkers infos: `:SyntasticInfo`
- Check:  `:SyntasticCheck`
- Toggle check: `:SyntasticToggleMode`
- Error window: `:Errors`
- Jump next/previous error: `:help :lnext` or `:help :lprev`

### YouCompleteMe

- `TAB` and `Shift-TAB`

### Tern

- Jump to the definition of the thing under the cursor: `:TernDef`
- Look up the documentation of something: `:TernDoc`
- Find the type of the thing under the cursor: `:TernType`
- Show all references to the variable or property under the cursor: `:TernRefs`
- Rename the variable under the cursor: `:TernRename`

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
