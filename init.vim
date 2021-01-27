"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
" For Windows

" General Settings
if !exists('g:vscode')
  source ~/AppData/Local/nvim/plug-config/polyglot.vim
endif
source ~/AppData/Local/nvim/vim-plug/plugins.vim
source ~/AppData/Local/nvim/general/settings.vim
source ~/AppData/Local/nvim/general/functions.vim
source ~/AppData/Local/nvim/keys/mappings.vim
source ~/AppData/Local/nvim/plug-config/quickscope.vim

" Source depending on if VSCode is our client
if exists('g:vscode')
  " VSCode extension
  source ~/AppData/Local/nvim/vscode/settings.vim
  source ~/AppData/Local/nvim/plug-config/easymotion.vim
  source ~/AppData/Local/nvim/plug-config/highlightyank.vim
else
  " Themes
  source ~/AppData/Local/nvim/themes/syntax.vim
  source ~/AppData/Local/nvim/themes/nvcode.vim
  " source ~/AppData/Local/nvim/themes/papercolor.vim
  " source ~/AppData/Local/nvim/themes/material.vim
  source ~/AppData/Local/nvim/themes/airline.vim
  " source ~/AppData/Local/nvim/themes/nord.vim


  " Plugin configuration
  source ~/AppData/Local/nvim/keys/which-key.vim
  source ~/AppData/Local/nvim/plug-config/vim-commentary.vim
  " source ~/AppData/Local/nvim/plug-config/rainbow.vim
  source ~/AppData/Local/nvim/plug-config/rnvimr.vim
  source ~/AppData/Local/nvim/plug-config/better-whitespace.vim
  source ~/AppData/Local/nvim/plug-config/fzf.vim
  source ~/AppData/Local/nvim/plug-config/sneak.vim
  source ~/AppData/Local/nvim/plug-config/codi.vim
  " source ~/AppData/Local/nvim/plug-config/coc.vim
  source ~/AppData/Local/nvim/plug-config/goyo.vim
  source ~/AppData/Local/nvim/plug-config/vim-rooter.vim
  source ~/AppData/Local/nvim/plug-config/start-screen.vim
  source ~/AppData/Local/nvim/plug-config/gitgutter.vim
  source ~/AppData/Local/nvim/plug-config/git-messenger.vim
  source ~/AppData/Local/nvim/plug-config/closetags.vim
  source ~/AppData/Local/nvim/plug-config/floaterm.vim
  source ~/AppData/Local/nvim/plug-config/xtabline.vim
  source ~/AppData/Local/nvim/plug-config/far.vim
  source ~/AppData/Local/nvim/plug-config/tagalong.vim
  " source ~/AppData/Local/nvim/plug-config/illuminate.vim
  source ~/AppData/Local/nvim/plug-config/bracey.vim
  " source ~/AppData/Local/nvim/plug-config~/Asynctask.vim
  source ~/AppData/Local/nvim/plug-config/window-swap.vim
  source ~/AppData/Local/nvim/plug-config/markdown-preview.vim
  " luafile ~/AppData/Local/nvim/lua/plug-colorizer.lua
  " source ~/AppData/Local/nvim/plug-config/semshi.vim
  " source ~/AppData/Local/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
  " source ~/AppData/Local/nvim/plug-config~/Ale.vim
  " source ~/AppData/Local/nvim/plug-config/jupytext.vim
  " source ~/AppData/Local/nvim/plug-config/vim-markdown.vim
  " source ~/AppData/Local/nvim/plug-config/pyshell-cellmode.vim
  " source ~/AppData/Local/nvim/plug-config/vimux.vim
  " source ~/AppData/Local/nvim/plug-config/leetcode.vim
  " source ~/AppData/Local/nvim/plug-config/vim-wiki.vim
  " source ~/AppData/Local/nvim/plug-config/vista.vim

endif

" Add paths to node and python here
if !empty(glob("~/AppData/Local/nvim/paths.vim"))
  source ~/AppData/Local/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
