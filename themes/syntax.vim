" Syntax highlighting
" let g:python_highlight_all=1

" Change this when you know where i3 will be
" aug i3config_ft_detection
  " au!
  " au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
" aug end
"
" au BufNewFile,BufRead *.py 
      " \ set foldmethod=indent
      " \ set textwidth=79

" autocmd BufNew, BufNewFile, BufRead *.json :setfiletype jsonc

" au! BufNew, BufNewFile, BufRead *.json, *.md :set shiftwidth=2
au BufNewFile, BufRead *.md 
    \ set tabstop=2
