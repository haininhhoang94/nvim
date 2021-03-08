set iskeyword+=-                                                                " treat dash separated words as a word text object

set formatoptions-=cro                                                          " Stop newline continution of comments
let g:python3_host_prog = expand('$HOME/anaconda3/envs/pyds/bin/python3.6')     " Python location

syntax enable               " Enables syntax highlighting
set hidden                  " Required to keep multiple buffers open multiple buffers
set nowrap                  " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set encoding=utf-8          " The encoding written to file
set pumheight=10            " Makes popup menu smaller
set fileencoding=utf-8      " The encoding written to file
set ruler                   " Show the cursor position all the time
set cmdheight=2             " More space for displaying messages
set mouse=a                 " Enable your mouse
set splitbelow              " Horizontal splits will automatically be below
set splitright              " Vertical splits will automatically be to the right
set t_Co=256                " Support 256 colors
set conceallevel=0          " So that I can see `` in markdown files
set tabstop=2               " Insert 2 spaces for a tab
" set softtabstop=0           " Change the number 
set expandtab               " Convert tabs to space
set shiftwidth=2            " Change the number of space characters inserted for indentation
set smarttab                " Makes tabbing smarter will realize you have 2 vs 4
set smartindent             " Makes indenting smart
set autoindent              " Good auto indent
set laststatus=2            " Always display the status line
set number                  " Line numbers
set relativenumber          " Set relative line number
set cursorline              " Enable highlighting of the current line
set background=dark         " Set background in vim to be always dark
set showtabline=2           " Always show tabs
set noshowmode              " We don't need to see things like -- INSERT -- anymore
set nobackup                " This is recommended by coc
set nowritebackup           " This is recommended by coc
set shortmess+=c            " Don't pass messages to /ins-completion-menu/.
set signcolumn=yes          " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300          " Faster completion
set timeoutlen=100          " By default timeoutlen is 1000 ms
set clipboard=unnamedplus   " Copy paste between vim and everything else
set incsearch
set ignorecase
" set autochdir
set tw=79                     " Autoset new line when reach 79 characters
set lcs+=space:·            " Change space to dot when toggle (like VSCode)
set list

set guifont=Fira\ Code\ Nerd\ Font

" New stuff
" Integrate zz into moving motion
nmap L Lzz                    
nmap H Hzz                    
nmap G Gzz                    
" set notimeout nottimeout
" set scrolloff=1
" set sidescroll=1
" set sidescrolloff=1
" set display+=lastline
" set backspace=eol,start,indent
" set nostartofline
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
cmap w!! w !sudo tee %
