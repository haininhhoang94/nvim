autocmd BufRead,BufNewFile *.json set filetype=jsonc
" syn match jsoncComment "^\/\/.*$"
" syn match jsoncComment "^\/\*.*$"
" syn match jsoncComment "^.*\*\/$"

" syn region  jsoncLineComment    start=+\/\/+ end=+$+ keepend contains=@Spell

" hi def link jsoncLineComment        Comment
" hi def link jsoncComment            Comment
" au! BufNew, BufNewFile, BufRead *.json, *.md :set shiftwidth=2
