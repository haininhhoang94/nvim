"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


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
endif

" Add paths to node and python here
if !empty(glob("~/AppData/Local/nvim/paths.vim"))
  source ~/AppData/Local/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
