"
" WebVim Configuration entry point
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"



" You won't find any configuration here directly,
" please look at files under the config folder for global config
" and under plugins for plugins configuration


filetype plugin on

let s:vimDir = $HOME.'/.vim'

let g:hardcoreMode = 1

let s:pluginDir  = s:vimDir.'/plugins/plugged'
let s:pluginDef  = s:vimDir.'/plugins/def.vim'
let s:pluginConf = s:vimDir.'/plugins/config.vim'

let s:configSetting = s:vimDir.'/config/setting.vim'
let s:configMapping = s:vimDir.'/config/mapping.vim'
let s:configAbbrev  = s:vimDir.'/config/abbrev.vim'


if !isdirectory(s:pluginDir)

    " Welcome message when plugins are not yet installed

    echom " "
    echom "Welcome to WebVim"
    echom " > the vim IDE for web dev <"
    echom " "
    echom "Checking dependencies :"
    if !executable('node') || !executable('npm')
        echom " [ERR] node.js and npm are required, please install them before continuing."
    	echom " "
    else

        echom "  - eslint :" . executable('eslint') ? "ok" : "ko"
        echom "  - jsonlint :" . executable('eslint') ? "ok" : "ko"
        echom "  - csslint :" . executable('eslint') ? "ok" : "ko"
        echom " done."

        echom " "
        echom "Before getting started, you need to run the install : "
        echom " 1. :PlugInstall"
        echom " 2. take a coffee"
        echom " 3. reload vim"
        echom " 4. Envoy WebVim"
        echom " "

        exec ":source ".s:pluginDef
    endif
else

    " Loads the global config, mapping and settings
    exec ":source ".s:configSetting
    exec ":source ".s:configMapping
    exec ":source ".s:configAbbrev

    " Loads plugins def and config
    exec ":source ".s:pluginDef
    exec ":source ".s:pluginConf

endif


"spell checking
" zg to add a word into dic
" z= for autocomplete
"set spell spelllang=en_us
"set complete+=kspell

"

"" If you prefer the Omni-Completion tip window to close when a selection is
"" made, these lines close it on movement in insert mode or when leaving
"" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
