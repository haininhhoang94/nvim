" nnoremap <silent> <space>/ :Commentary<CR>
vnoremap <silent> <space>/ :Commentary<CR>
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType *.json setlocal commentstring={//\ %s\ //}
autocmd FileType *.data setlocal commentstring={/*\ %s\ */}
