" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

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
    Plug 'RRethy/vim-illuminate'
    " Disable the usage of micro moving
    Plug 'takac/vim-hardtime'

    if exists('g:vscode')
        " Easy motion for VSCode
        " Plug 'asvetliakov/vim-easymotion'
        Plug 'ChristianChiarulli/vscode-easymotion'
        Plug 'machakann/vim-highlightedyank'
    else

        " Easymotion
        Plug 'easymotion/vim-easymotion'
        " Surround
        Plug 'tpope/vim-surround'
        " Have the file system follow you around
        Plug 'airblade/vim-rooter'
        " auto set indent setting
        Plug 'tpope/vim-sleuth'
        " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
        " Treesitter
        Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
        Plug 'nvim-treesitter/playground'
        " Cool Icons
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'ryanoasis/vim-devicons'
        " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        " Closetags
        Plug 'alvan/vim-closetag'
        " Themes
        Plug 'haininhhoang94/nvcode-color-schemes.vim'
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Status Line
        Plug 'glepnir/galaxyline.nvim'
        " Ranger
        Plug 'kevinhwang91/rnvimr'
        "fzf
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
        Plug 'junegunn/fzf.vim'
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
        " Interactive code
        Plug 'metakirby5/codi.vim'
        " REPL forwarding
        Plug 'jpalardy/vim-slime'
        " Combine with Tmux
        Plug 'christoomey/vim-tmux-navigator'
        " Better tabline
        Plug 'romgrk/barbar.nvim'
        " undo time travel
        Plug 'mbbill/undotree'
        " Find and replace
        Plug 'ChristianChiarulli/far.vim'
        " Auto change html tags
        Plug 'AndrewRadev/tagalong.vim'
        " live server
        Plug 'turbio/bracey.vim'
        " Smooth scroll
        Plug 'psliwka/vim-smoothie'
        " async tasks
        Plug 'skywind3000/asynctasks.vim'
        Plug 'skywind3000/asyncrun.vim'
        " Swap windows
        Plug 'wesQ3/vim-windowswap'
        " Markdown Preview
        Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
        " Easily Create Gists
        Plug 'mattn/vim-gist'
        Plug 'mattn/webapi-vim'
        " Colorizer
        Plug 'norcalli/nvim-colorizer.lua'
        " Intuitive buffer closing
        Plug 'moll/vim-bbye'
        " Auto refresh
        Plug 'djoshea/vim-autoread'
        " Set json to jsonc
        " Plug 'neoclide/jsonc.vim'
        Plug 'kevinoid/vim-jsonc'
        " Rainbow
        " Plug 'luochen1990/rainbow'
        " Async Linting Engine
        " TODO make sure to add ale config before plugin
        " Plug 'dense-analysis/ale'
        " Better Whitespace
        " Plug 'ntpeters/vim-better-whitespace'
        " Multiple Cursors
        " TODO add this back in change from C-n
        " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
        " Plug 'yuezk/vim-js'
        " Plug 'maxmellon/vim-jsx-pretty'
        " Plug 'jelera/vim-javascript-syntax'
        " Python jupyter
        " Plug 'goerz/jupytext.vim'
        " Neovim in Browser
        " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
        " " Markdown Image Paste
        " Plug 'ferrine/md-img-paste.vim'
        " Latex 
        " Plug 'lervag/vimtex'
        " Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
        " IaWriter
        Plug 'junegunn/limelight.vim', {'for': 'markdown'}
        Plug 'reedes/vim-colors-pencil', {'for': 'markdown'}
        Plug 'subnut/vim-iawriter', {'for': 'markdown'}
        " Plugin Graveyard

        " Debug
        " Plug 'mfussenegger/nvim-dap'
        " Plug 'nvim-dap-virtual-text'
        " Sneak
        " Plug 'justinmk/vim-sneak'
        " Files
        " Plug 'tpope/vim-eunuch'
        " Plug 'nvim-treesitter/nvim-treesitter-refactor'
        " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
        " Plug 'romgrk/nvim-treesitter-context'
        " Minimap
        " Plug 'wfxr/minimap.vim'
        " Plug 'romgrk/lib.kom'
        " Plug 'brooth/far.vim'
        " Typescript syntax
        " Plug 'HerringtonDarkholme/yats.vim'
        " Multiple Cursors
        " Plug 'terryma/vim-multiple-cursors'
        " Async Linting Engine
        " Plug 'tomasiser/vim-code-dark'
        " Plug 'mg979/vim-xtabline'
        " Vim Wiki
        " Plug 'https://github.com/vimwiki/vimwiki.git'
        " Better Comments
        " Plug 'jbgutierrez/vim-better-comments'
        " Echo doc
        " Plug 'Shougo/echodoc.vim'
        " Plug 'hardcoreplayers/spaceline.vim'
        " Plug 'vim-airline/vim-airline-themes'
        " Plug 'kaicataldo/material.vim', { 'branch': 'main' }
        " Ranger
        " Plug 'francoiscabrol/ranger.vim'
        " Plug 'rbgrouleff/bclose.vim'
        " Making stuff
        " Plug 'neomake/neomake'
        " Plug 'mhinz/vim-signify'
        " Plug 'preservim/nerdcommenter'
        " Plug 'atishay/far.vim'
        " Plug 'cjrh/vim-conda'
        " Debugging
        " Plug 'puremourning/vimspector'
        " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
        " Themes
        " Plug 'kyazdani42/blue-moon'
        " Plug 'NLKNguyen/papercolor-theme'
        " Plug 'morhetz/gruvbox'
        " Plug 'phanviet/vim-monokai-pro'
     endif

"Add Plug end here
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
