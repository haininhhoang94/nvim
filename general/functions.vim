" Random Useful Functions

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

" SuperSplitView
function! VimuxVerticalPer()
  :let g:VimuxOrientation = "h"
  :call VimuxPromptCommand()
endfunction

" Change color scheme to light (Papercolor)
function! Light()
  :colorscheme PaperColor
  :set background=light
endfunction

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system('cat |' . s:clip, @0) | endif
    augroup END
endif

" function! OpenLiveServer()
" 	echo 'live server is on'
" 	silent !live-server % &
" endfunction

command Serve :call OpenLiveServer()
nnoremap <silent>bs :call OpenLiveServer()<CR>

" augroup strip_ws
"   autocmd BufWritePre * call utils#stripTrailingWhitespaces()
" augroup END

" If one has a particular extension that one uses for binary files (such as exe,
" bin, etc), you may find it helpful to automate the process with the following
" bit of autocmds for your <.vimrc>.  Change that "*.bin" to whatever
" comma-separated list of extension(s) you find yourself wanting to edit:

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.RST let &bin=1
  au BufReadPost *.RST if &bin | %!xxd
  au BufReadPost *.RST set ft=xxd | endif
  au BufWritePre *.RST if &bin | %!xxd -r
  au BufWritePre *.RST endif
  au BufWritePost *.RST if &bin | %!xxd
  au BufWritePost *.RST set nomod | endif
augroup END
