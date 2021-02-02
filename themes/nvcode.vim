" onedark.vim override: Don't set a background color when running in a terminal;
" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

"autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
let g:nvcode_termcolors=256

syntax on
" colorscheme nord
" colorscheme nvcode
colorscheme onedark
" colorscheme onedark
" colorscheme TSnazzy
" colorscheme aurora

" Group NameDescription
" IdentifierIt belongs to the variable names of the source code
" StatementIt belongs to any programming language statement, such as if, else, do, while etc.
" CommentIt belongs to the comments part of the program
" TypeThe datatype of the variables is defined by this group, such as int, double, string etc.
" PreProcIt belongs to any preprocessor statement, such as #include.
" ConstantIt belongs to any constant value, such as numbers, quoted strings,  true/false etc.
" SpecialIt belongs to any special symbol, such as \t, \n etc.
" UnderlinedIt belongs to any underlined text.
" ErrorIt belongs to any source code error
hi Comment cterm=italic guifg=#7F7663
hi Statement cterm=italic
hi PreProc cterm=italic

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
