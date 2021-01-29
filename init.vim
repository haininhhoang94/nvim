"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/
" For Windows

" General Settings
source ~/AppData/Local/nvim/vim-plug/plugins.vim
source ~/AppData/Local/nvim/general/settings.vim
source ~/AppData/Local/nvim/general/functions.vim
source ~/AppData/Local/nvim/keys/mappings.vim

" Source depending on if VSCode is our client
" VSCode extension config
source ~/AppData/Local/nvim/vscode/settings.vim

source ~/AppData/Local/nvim/plug-config/easymotion.vim
source ~/AppData/Local/nvim/plug-config/highlightyank.vim
source ~/AppData/Local/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/AppData/Local/nvim/paths.vim"))
  source ~/AppData/Local/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
