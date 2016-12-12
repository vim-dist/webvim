![WebVim](resources/WebVim.png "WebVim")
===============================

WebVim is a Vim based distribution targeting JavaScript and Web development.

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
 - hardcore mode (for real Vim users)
 - Emmet support
 - jsdoc generation (coming soon)
 - debugging (coming soon)
 - grunt/gulp support (coming soon)
 - all the awesomeness from Vim

> The WebVim idea is to provide you a vim distribution: something that comes prepackaged, preconfigured, built on a kernel to serve a goal. WebVim is to vim what Debian is to Linux, a vim distribution for the web.

## Install

__Only tested on Linux__

### Dependencies (the long story)

On Ubuntu (from 15.04)

 1. A modern version of Vim

```sh
apt-get install vim vim-runtime vim-gui-common
```

or compile a recent version with `xterm_clipboard` and `ruby` or `python` support.

 2. Some tools to compile YouCompleteMe

```sh
apt-get install build-essential cmake python-dev exuberant-ctags libclang-3.4-dev
```

 3. Node.js and npm

```sh
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs
```

 4. Some npm packages

```sh
npm install -g eslint csslint jshint jsonlint handlebars
```

### Dependencies (the short story)

> Please report me what you did to make it work on your OS

#### Fedora 23/24

```sh
sudo dnf install cmake python-devel npm vim
npm install -g npm eslint csslint jshint jsonlint handlebars
```

### Install it:

```sh
git clone https://github.com/krampstudio/webvim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tern-project ~/.tern-project
vim
```

The plugins install can take some times, especially since there's a compilation made by YouCompleteMe. If you've the feeling the install has frozen, you can finish the install after by entering the command `:PlugInstall`.

## Hardcore mode

The hardcore mode remap some keys to force you use Vim in a productive way:
 - no arrow keys for moving instead use the common Vim movement commands.
 - in insert mode, use `jk` to switch back to normal mode instead of `<esc>`

Restricting commands is the best way to make your fingers learn. After one or two days, you should be more productive and have learned lots of Vim commands.

You can disable the hardcore mode by setting the value of `g:hardcoreMode` to `0` in `.vimrc`. You can also change the mappings.

## Usage

### Vim

WebVim is only a Vim distribution with plugins and configuration, so all common Vim commands and basic mapping are available. You must know how to use Vim before using this IDE. If you're not comfortable with Vim enough I suggest you to take the interactive Vim tutorial (run `vimtutor` in a terminal), and keep a [common usage cheat sheet](http://fprintf.net/vimCheatSheet.html) close to you until your fingers get all the mappings in memory.

### WebVim

|                                                  | Command               | Mode | Context          |
|--------------------------------------------------|-----------------------|:----:|------------------|
| __Plugins__                                                                                        |
| Install Plugins                                  | `:PlugInstall`        | n    |                  |
| Update Plugins                                   | `:PlugUpdate`         | n    |                  |
|                                                                                                    |
| __Config__                                                                                         |
| Edit .vimrc                                      | `<leader>ev`           | n    |                  |
| Reload .vimrc                                    | `<leader>sv`           | n    |                  |
|                                                                                                    |
| __File Tree (NERDTree)__                                                                           |
| Toggle Tree                                      | `<c-n>`               | n    |                  |
| Open a node in a new tab                         | `t`                   |      | Tree Node        |
| Change Root                                      | `C`                   |      | Tree Node        |
| Tree menu                                        | `m`                   |      | Tree Node        |
| Add a file                                       | `a`                   |      | Tree Menu        |
| Delete a file                                    | `d`                   |      | Tree Menu        |
| Move a file                                      | `m`                   |      | Tree Menu        |
| Copy a file                                      | `c`                   |      | Tree Menu        |
| Search in files (grep)                           | `g`                   |      | Tree Menu        |
| Next match in grep                               | `:cn`                 |      | Grep > Quickfix  |
| Move to left tab                                 | `<s-left>`            | n    |                  |
| Move to right tab                                | `<s-right>`           | n    |                  |
| Change window (ie. tree to tab)                  | `<c-w><c-w>`          |      |                  |
| Help                                             | `?`                   |      | Tree             |
| Documentation                                    | `:help NERDTree`      |      |                  |
|                                                                                                    |
| __Comment__                                                                                        |
| Toggle comments                                  | `<c-/>`               | nv   |                  |
| Comments                                         | `<leader>cc`          | nv   |                  |
| Sexy Comments                                    | `<leader>cs`          | nv   |                  |
| UnComments                                       | `<leader>cu`          | nv   |                  |
| Yank and Comments                                | `<leader>cy`          | nv   |                  |
| Documentation                                    | `:help NERDCommenter` |      |                  |
|                                                                                                    |
| __Align__                                                                                          |
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
| Format the file                                  | `<c-f>`               | n    | js,json,html,css |
| Format the selection                             | `<c-f>`               | n    | js,json,html,css |
|                                                                                                    |
| __Multiple Cursor__                                                                                |
| Start multiple cursor                            | `<c-m>`               | v    | Visual Block     |
| Multiple cursor insert                           | `i`                   |      | multiple cursor  |
| Multiple cursor remove                           | `x`                   |      | multiple cursor  |
| Leave multiple cursor                            | `<esc>`               |      | multiple cursor  |
|                                                                                                    |
| __Paste__                                                                                          |
| cycle backward through your history of yanks     | `<leader>p`           | nv   | after paste `p`  |
| cycle forward through your history of yanks      | `<leader>P`           | nv   | after paste `p`  |
|                                                                                                    |
| __AutoCompletion__                                                                                 |
| Select next proposal in menu                     | `<tab>`               | i    | complete menu    |
| Select previous proposal in menu                 | `<shift><tab>`        | i    | complete menu    |
|                                                                                                    |
| __Syntax checking__                                                                                |
| Checkers infos                                   | `:SyntasticInfo`      | n    |                  |
| Check                                            | `:SyntasticCheck`     | n    |                  |
| Toggle check                                     | `:SyntasticToggleMode`| n    |                  |
| Error window                                     | `:Errors`             | n    |                  |
| Jump next error                                  | `:lnext`              | n    |                  |
| Jump previous error                              | `:lprev`              | n    |                  |
|                                                                                                    |
| __JavaScript__                                                                                     |
| Get type                                         | `<leader>gt`          | n    | under cursor     |
| Get documentation                                | `<leader>gd`          | n    | under cursor     |
| Go to                                            | `<leader>go`          | n    | under cursor     |
| Jump to definition                               | `<leader>gf`          | n    | under cursor     |
| Go to references                                 | `<leader>gr`          | n    | under cursor     |
| Rename                                           | `<leader>r`           | n    | under cursor     |
| Jump to the source of a `require`                | `gf`                  | n    | node.js, cursor  |
| Edit the main file of a CJS module               | `:Nedit module`       | n    | node.js          |
| Edit a file of a CJS module                      | `:Nedit module/foo.js`| n    | node.js          |
| Edit projects main (from package.json)           | `:Nedit`              | n    | node.js          |
|                                                                                                    |
| __Git__                                                                                            |
| git diff                                         | `:Gdiff`              | n    |                  |
| git status                                       | `:Gstatus`            | n    |                  |
| git commit                                       | `:Gcommit`            | n    |                  |
| git blame                                        | `:Gblame`             | n    |                  |
| git mv                                           | `:Gmove`              | n    |                  |
| git rm                                           | `:Gremove`            | n    |                  |
| Open the current file in Github                  | `:Gbrowse`            | n    |                  |
|                                                                                                    |
| __Spell Check__                                                                                    |
| Enable checking                                  | `set spell`            | n   |                  |
| move to the next misspelled word                 | `]s`                   | n   |                  |
| move to the previous misspelled word             | `[s`                   | n   |                  |
| add a word to the dictionary                     | `zg`                   | n   |                  |
| undo the addition of a word to the dictionary    | `zug`                  | n   |                  |
| view spelling suggestions for a misspelled word  | `z=`                   | n   |                  |
|                                                                                                    |
| __Search__                                                                                         |
| clear highlights                                 | `<c-l>`               | n    |                  |
|                                                                                                    |
| __Editing__                                                                                        |
| Move line up                                     | `<leader>-`           | nv   |                  |
| Move line down                                   | `<leader>_`           | nv   |                  |
| Wrap in single quote                             | `<leader>'`           | nv   |                  |
| Wrap in double quote                             | `<leader>"`           | nv   |                  |
|                                                                                                    |
| __Emmet__                                                                                          |
| Expand abbreviation                              | `kj`                  | i    | html,css,scss    |
|                                                                                                    |
| _Next sections to come soon_                                                                       |
|                                                                                                    |

_Modes_ :
 - `n` normal
 - `i` insert
 - `v` visual

_Commands_ :
 - `:command` a Vim command
 - `:set something` can also be replaced by `:setlocal something` to apply it to the current buffer only
 - `<c-m>a` or `a` a keyboard command
   - `<c-/>` means `CTRL and `/` (this is the Vim notation)
   - `<s-left>` means `Shift` and `left arrow`
   - `<c-a>b` means `CTRL` and `a`, then `b`
   - `<leader>` is mapped to `,`
   - `<localleader>` is mapped to `\`




## Plugins

WebVim is only a distribution that contains plugins. The plugin authors have made the hard work.

_Plugin authors rocks!_

### Plugin
 - [vim-plug](https://github.com/junegunn/vim-plug) Minimalist Vim Plugin Manager

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
 - [VimNode](https://github.com/moll/vim-node) Navigate through node.js code/modules
 - [VimLint](https://github.com/syngan/vim-vimlint) Linter used by syntastic for VimL
 - [VimLParser](https://github.com/ynkdir/vim-vimlparser) VimL parser (required by VimLint)
 - [Emmet-vim](https://github.com/mattn/emmet-vim) Expanding abbreviations similar to [emmet](http://emmet.io/)

### Code reading

 - [VimJson](https://github.com/elzr/vim-json) JSON highlighting and quote concealing
 - [YaJS](https://github.com/othree/yajs.vim) JavaScript syntax (ES5 and ES6)
 - [JavaScriptLibrariesSyntax](https://github.com/othree/javascript-libraries-syntax.vim) Syntax highlighting for well-known JS libraries
 - [VimCSS3](https://github.com/hail2u/vim-css3-syntax) CSS3 syntax
 - [ScssSyntax](https://github.com/cakebaker/scss-syntax.vim) SCSS syntax
 - [HTML5](https://github.com/othree/html5.vim) HTML5 syntax

## History
 - __1.3.0__ Fixed dependencies, tern via YCM, Emmet, new theme, nerdtree grep, use local linters
 - __1.2.0__ Fix #28, support new esint config files, update installe
 - __1.1.0__ Add user config, autocmd file, fix easyalign mapping, update Nerdtree config, better mouse support in insert mode
 - __1.0.0__ Becomes `webvim` with an install process, a better configuration system, better plugins neighborhood
 - __0.1.0__ A basic `dotvim` repository with my own Vim configuration

## Contributing

Every contribution is more than welcomed. You can:
 - [report issues](https://github.com/krampstudio/webvim/issues)
 - Fix, improve the configuration, add new features. The best is to fork and submit a pull request
 - Test and adapt to other OS
 - Fix my English mistakes
 - Update the documentation
 - Create a better logo
 - [Offer me a coffee](https://gratipay.com/~krampstudio/)

[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/~krampstudio/)

## License

The content of this repository is licensed under the [GPLv3](http://www.gnu.org/licenses/gpl-3.0.txt)

