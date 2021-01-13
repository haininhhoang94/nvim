call plug#begin('~/AppData/Local/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Convert binary, hex, etc..
    Plug 'glts/vim-radical'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting 
    Plug 'suy/vim-context-commentstring'
    " highlight all matches under cursor
    " Plug 'RRethy/vim-illuminate'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
        Plug 'machakann/vim-highlightedyank'
    else
        " Sneak
        Plug 'justinmk/vim-sneak'
        " Surround
        Plug 'tpope/vim-surround'
        " Files
        Plug 'tpope/vim-eunuch'
        " Have the file system follow you around
        Plug 'airblade/vim-rooter'
        " auto set indent setting
        Plug 'tpope/vim-sleuth'
        " Better Syntax Support
        " Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'sheerun/vim-polyglot'
        " Cool Icons
        Plug 'ryanoasis/vim-devicons'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        " Closetags
        Plug 'alvan/vim-closetag'
        " Themes
        " Plug 'christianchiarulli/nvcode.vim'
        " Themes
        Plug 'christianchiarulli/nvcode-color-schemes.vim'
        " Plug 'ChristianChiarulli/nv-code'
        " Plug 'kyazdani42/blue-moon'
        Plug 'NLKNguyen/papercolor-theme'
        Plug 'morhetz/gruvbox'
        Plug 'phanviet/vim-monokai-pro'
        " Status Line
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'
        " Git
        Plug 'airblade/vim-gitgutter'
        Plug 'tpope/vim-fugitive'
        Plug 'tpope/vim-rhubarb'
        Plug 'junegunn/gv.vim'
        Plug 'rhysd/git-messenger.vim'
        " Terminal
        Plug 'voldikss/vim-floaterm'
        " Start Screen
        Plug 'mhinz/vim-startify'
        " Vista
        Plug 'liuchengxu/vista.vim'
        " See what keys do like in emacs
        Plug 'liuchengxu/vim-which-key'
        " Zen mode
        Plug 'junegunn/goyo.vim'
        " Snippets
        Plug 'honza/vim-snippets'
        Plug 'mattn/emmet-vim'
        Plug 'mg979/vim-xtabline'
        " Markdown Preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
        " Markdown Image Paste
        Plug 'ferrine/md-img-paste.vim'
        " Auto refresh
        Plug 'djoshea/vim-autoread'

    endif

"Add Plug end here
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
