" Map new leader
let mapleader=" "
" let mapleader=","
nnoremap <Space> <Nop>

" This session is for disable arrowkey in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Experimental
" Ctrl+ J when split a line
" nnoremap <NL> i<CR><ESC>

if exists('g:vscode')
    " Simulate same TAB behavior in VSCode
    nmap <Tab> :Tabnext <CR>
    nmap <S-TAB> :Tabprev <CR>
else
    " Tabbing out of brackets and quotes
    inoremap <expr> <Tab> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'    

    " I hate escape more than anything else
    inoremap jk <Esc>
    inoremap kj <Esc>

    " TAB in general mode will move to text buffer
    nnoremap <silent> <TAB> :bnext<CR>
    " SHIFT-TAB will go back
    nnoremap <silent> <S-TAB> :bprevious<CR>

    " " Insert newline without entering insert mode
    " nmap <C-o> O<Esc>
    " nmap <CR> o<Esc>

    " Alternative way to save
    nnoremap <silent> <C-s> :w<CR>
    nnoremap <silent> <C-Q> :wq! <CR>
    " <TAB>: completion
    inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

    " Better window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Terminal windows navigation
    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l

    inoremap <C-h> <C-\><C-N><C-w>h
    inoremap <C-j> <C-\><C-N><C-w>j
    inoremap <C-k> <C-\><C-N><C-w>k
    inoremap <C-l> <C-\><C-N><C-w>l

    tnoremap <Esc> <C-\><C-n>

    " Use alt + hjkl to resize windows
    nnoremap <silent> <M-j>     :resize -2 <CR>
    nnoremap <silent> <M-k>     :resize +2 <CR>
    nnoremap <silent> <M-h>     :vertical resize -2 <CR>
    nnoremap <silent> <M-l>     :vertical resize +2 <CR>

endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\C-n><")
inoremap <expr> <c-k> ("\C-p><")">")">")
