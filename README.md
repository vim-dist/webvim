![WebVim](resources/WebVim.png "WebVim")
===============================

WebVim is a vim based IDE for web development.

It targets :
 - JavaScript development (ES5, ES6, node.js)
 - HTML5
 - CSS3 and SCSS

And contains the features you expect from a modern code editor :

 - syntax highlighting
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
 - all the awesomeness from Vim


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

    npm install -g eslint csslint jshint jsonlint handlebars

### Install it:

	git clone https://github.com/krampstudio/webvim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vi

## Hardcore mode

The hardcore mode remap some keys to force you use vim in a productive way:
 - no arrow keys for moving instead use the common vim movement commands.
 - in insert mode, use `jk` to switch back to normal mode instead of `<esc>`

Restricting commands is the best way to make your fingers learn. After one or two days, you should be more productive and have learned lots of vim commands.

You can disable the hardcore mode by setting the value of `g:hardcoreMode` to `0` in `.vimrc`. You can also change the mappings.

## Usage

|                                                 | Command                | Mode | Context          |
|-------------------------------------------------|------------------------|:----:|------------------|
|                                                                                                    |
| __Plugins__                                                                                        |
|                                                                                                    |
| Install Plugins                                  | `:PlugInstall`        | n    |                  |
| Update Plugins                                   | `:PlugUpdate`         | n    |                  |
|                                                                                                    |
| __Config__                                                                                         |
|                                                                                                    |
| Edit .vimrc                                      | `<leader>e`           | n    |                  |
| Reload .vimrc                                    | `<leader>s`           | n    |                  |
|                                                                                                    |
| __File Tree (NERDTree)__                                                                           |
|                                                                                                    |
| Toggle Tree                                      | `<c-n>`               | n    |                  |
| Open a node in a new tab                         | `t`                   |      | Tree Node        |
| Change Root                                      | `C`                   |      | Tree Node        |
| Tree menu                                        | `m`                   |      | Tree Node        |
| Add a file                                       | `a`                   |      | Tree Menu        |
| Delete a file                                    | `d`                   |      | Tree Menu        |
| Move a file                                      | `m`                   |      | Tree Menu        |
| Copy a file                                      | `c`                   |      | Tree Menu        |
| Move to right tab                                | `<s-right>`           | n    |                  |
| Move to right tab                                | `<s-right>`           | n    |                  |
| Change window (ie. tree to tab)                  | `<c-w><c-w>`          |      |                  |
| Help                                             | `?`                   |      | Tree             |
| Documentation                                    | `:help NERDTree`      |      |                  |
|                                                                                                    |
| __Comment__                                                                                        |
|                                                                                                    |
| Toggle comments                                  | `<c-/>`               | nv   |                  |
| Comments                                         | `<leader>cc`          | nv   |                  |
| Sexy Comments                                    | `<leader>cs`          | nv   |                  |
| UnComments                                       | `<leader>cu`          | nv   |                  |
| Yank and Comments                                | `<leader>cy`          | nv   |                  |
| Documentation                                    | `:help NERDCommenter` |      |                  |
|                                                                                                    |
| __Align__                                                                                          |
|                                                                                                    |
| Start interactive alignment                      | `EasyAlign`           | v    | selection        |
| Align next paragraph on =                        | `<leader>a=`          | n    |                  |
| Align next paragraph on :                        | `<leader>a:`          | n    |                  |
| Align next paragraph on delimiter _x_            | `<leader>ax`          | n    |                  |
| Right align selection on =                       | `<leader>a=`          | v    |                  |
| Right align selection on :                       | `<leader>a:`          | v    |                  |
| Right align selection on _x_                     | `<leader>ax`          | v    |                  |
| Documentation                                    | `:help :EasyAlign`    |      |                  |
|                                                                                                    |
| __Format__                                                                                         |
|                                                                                                    |
| Format the file                                  | `<c-f>`               | n    | js,json,html,css |
| Format the selection                             | `<c-f>`               | n    | js,json,html,css |
|                                                                                                    |
| __Multiple Cursor__                                                                                |
|                                                                                                    |
| Start multiple cursor                            | `<c-m>`               | v    | Visual Bloc      |
| Multiple cursor insert                           | `i`                   |      | multiple cursor  |
| Multiple cursor remove                           | `x`                   |      | multiple cursor  |
| Leave multiple cursor                            | `<esc>`               |      | multiple cursor  |
|                                                                                                    |
| __AutoCompletion__                                                                                 |
|                                                                                                    |
| Select next proposal in menu                     | `<tab>`               | i    |                  |
|                                                                                                    |
| __Git__                                                                                            |
|                                                                                                    |
| git diff                                         | `:Gdiff`              | n    |                  |
| git status                                       | `:Gstatus`            | n    |                  |
| git commit                                       | `:Gcommit`            | n    |                  |
| git blame                                        | `:Gblame`             | n    |                  |
| git mv                                           | `:Gmove`              | n    |                  |
| git rm                                           | `:Gremove`            | n    |                  |
| Open the current file in Github                  | `:Gbrowse`            | n    |                  |
|                                                                                                    |
| __Spell Check__                                                                                    |
|                                                                                                    |
| Enable checking                                  | `set spell`            | n   |                  |
| move to the next misspelled word                  | `]s`                   | n   |                  |
| move to the previous misspelled word              | `[s`                   | n   |                  |
| add a word to the dictionary                     | `zg`                   | n   |                  |
| undo the addition of a word to the dictionary    | `zug`                  | n   |                  |
| view spelling suggestions for a misspelled word   | `z=`                   | n   |                  |
|                                                                                                    |
| _Next sections to come soon_                                                                       |


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


[Common usage cheat sheet](http://fprintf.net/vimCheatSheet.html)


## Plugins

WebVim is only a distribution that contains plugins. The plugin authors have made the hard work. _Plugin authors, you rocks!_

### User interface

 - [Mango](https://github.com/goatslacker/mango.vim) A nice color scheme
 - [VimAirline](https://github.com/bling/vim-airline) Lean and mean statusbars

### Manage your project

 - [NERDTree](https://github.com/scrooloose/nerdtree) Manage your project files
 - [VimFugitive](https://github.com/tpope/vim-fugitive) Git integration
 - [VimGitGutter](https://github.com/airblade/vim-gitgutter) Git diff in the gutter
 - [EditorconfigVim](https://github.com/editorconfig/editorconfig-vim) Shared coding conventions

### Code writing

 - [NERDCommenter](https://github.com/scrooloose/nerdcommenter) Comments made easy
 - [VimTrailingWhitespace](https://github.com/bronson/vim-trailing-whitespace) Highlight trailing spaces
 - [Syntastic](https://github.com/scrooloose/syntastic) Syntax check and validation
 - [VimEasyAlign](https://github.com/junegunn/vim-easy-align) Realign pieces of code
 - [VimMultipleCursors](https://github.com/terryma/vim-multiple-cursors) Write on multiple lines easily
 - [VimJsBeautify](https://github.com/maksimr/vim-jsbeautify) Reformat JavaScript, HTML and JSON files
 - [VimYankStack](https://github.com/maxbrunsfeld/vim-yankstack) Iterate over yanked stack on paste
 - [VimSurround](https://github.com/tpope/vim-surround) Quoting and parenthesizing
 - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) Autocompletion engine
 - [VimForTern](https://github.com/marijnh/tern_for_vim) Smart JavaScript autocompletion
 - [VimNode](https://github.com/moll/vim-node) Navigate through node.js code/modules

### Code reading

 - [VimJson](https://github.com/elzr/vim-json) JSON highlighting and quote concealing
 - [YaJS](https://github.com/othree/yajs.vim) JavaScript syntax (ES5 and ES6)
 - [JavaScriptLibrariesSyntax](https://github.com/othree/javascript-libraries-syntax.vim) Syntax highlighting for well-known JS libraries
 - [VimCSS3](https://github.com/hail2u/vim-css3-syntax) CSS3 syntax
 - [ScssSyntax](https://github.com/cakebaker/scss-syntax.vim) SCSS syntax
 - [HTML5](https://github.com/othree/html5.vim) HTML5 syntax

## History

## Contributing

Every contribution is more than welcomed. You can:
 - [report issues](https://github.com/krampstudio/webvim/issues)
 - Fix, improve the configuration, add new features. The best is to fork and submit a pull request.
 - Fix my English mistakes
 - Update the documentation
 - Create a better logo
 - [Offer me a coffee](https://gratipay.com/~krampstudio/)

## License

The content of this repository is licensed under the [GPLv3](http://www.gnu.org/licenses/gpl-3.0.txt)

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
