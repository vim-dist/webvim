"
" WebVim Configuration : autocommands
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"


" Force filetype

autocmd BufRead,BufNewFile .eslintrc setfiletype json
autocmd BufRead,BufNewFile .jshintrc setfiletype json


" Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

