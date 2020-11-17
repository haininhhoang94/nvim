" syntax/ECLIPSE.vim


" Match language specific keywords
syntax keyword ECLIPSEInclude
      \ INCLUDE

syntax keyword ECLIPSEDefine
      \ RUNSPEC
      \ INIT
      \ EQUALS
      \ EDIT
      \ PROPS
      \ REGIONS
      \ COPY
      \ SOLUTION
      \ SUMMARY
      \ SCHEDULE
      \ NOECHO
      \ ECHO
      \ END
      \ FILEUNIT
      \ WELSPECS
      \ GRUPTREE
      \ DATES 
      \ GRID

syntax keyword ECLIPSEFunction
      \ TITLE
      \ START
      \ FIELD
      \ UNIFIN
      \ UNIFOUT
      \ GAS
      \ WATER
      \ NSTACK
      \ NUPCOL
      \ MONITOR
      \ RSSPEC
      \ NOINSPEC
      \ PARALLEL
      \ MSGFILE
      \ DIMENS
      \ EQLDIMS
      \ REGDIMS
      \ TABDIMS
      \ VFPPDIMS
      \ WELLDIMS
      \ MESSAGES
      \ NOSIM
      \ GRIDFILE
      \ TUNING
      \ RPTRST
      \ RPTSCHED
      \ MULTIPLY
      \ COMPDAT
      \ WCONPROD
      \ GCONPROD
      \ GRUPTARG
      \ WELTARG
      \ WECON
      \ BOX
      \ ACTNUM
      \ ENDBOX
      " PVT
      \ PVDG
      \ PVTW
      \ DENSITY
      \ ROCK
      \ SGWFN
      \ EQUIL
      \ RPTSOL
      \ WCONHIST
      \ OIL
      \ DISGAS
      \ RPTRUNSP
      \ INSPEC
      \ AQUADIMS
      \ VFPCHK
      \ VFPPROD             
      \ FAULTS

syntax keyword ECLIPSEDash
      \ \/

" Comment patterns
syntax match ECLIPSEComment "--.*$"

" Set highlights
highlight default link ECLIPSEComment Comment

highlight default link ECLIPSEDefine Define
highlight default link ECLIPSEFunction Function
highlight default link ECLIPSEDash Keyword
highlight default link ECLIPSEInclude Include
