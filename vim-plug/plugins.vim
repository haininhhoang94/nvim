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

    endif

"Add Plug end here
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
