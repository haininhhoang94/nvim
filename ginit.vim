"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
if exists('g:fvim_loaded')
    set guifont=Fira\ Code:h14
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>
    FVimDrawFPS v:true
    FVimCursorSmoothMove v:true
    FVimCursorSmoothBlink v:true
    FVimFontAntialias v:true
    FVimFontAutohint v:true
    FVimFontHintLevel 'full'
    FVimFontLigature v:true
    FVimFontSubpixel v:true
    FVimFontAutoSnap v:true
endif
