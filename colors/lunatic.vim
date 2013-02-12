" Name:     Lunatic vim colorscheme
" Author:   Bryan Richter <bryan.richter@gmail.com>
" URL:
" License:  WTFPL
" Created:  Under a new moon
" Modified: 2012 Nov 14
"           In the Scottish highlands
"

" TODO: Experiment with allowing user to set bg
set bg=dark
hi clear
let g:colors_name = expand('<sfile>:t:r')

let s:base03      = "8"
let s:base02      = "0"
let s:base01      = "10"
let s:base00      = "11"
let s:base0       = "12"
let s:base1       = "14"
let s:base2       = "7"
let s:base3       = "15"
let s:yellow      = "3"
let s:orange      = "9"
let s:red         = "1"
let s:magenta     = "5"
let s:violet      = "13"
let s:blue        = "4"
let s:cyan        = "6"
let s:green       = "2"

" These are the standard non-syntax items. These we steal from Solarized,
" mostly.


" ColorColumn
hi ColorColumn ctermbg=0
" Conceal
hi Conceal      ctermfg=none ctermbg=none
" Cursor
" CursorIM
" CursorColumn
hi CursorColumn cterm=none                   ctermbg=black
" CursorLine
hi CursorLine   cterm=none                   ctermbg=black
" Directory
hi Directory ctermfg=4
" DiffAdd
" DiffChange
" DiffDelete
" DiffText
hi DiffAdd        cterm=none   ctermfg=2 ctermbg=0
hi DiffChange     cterm=none   ctermfg=3 ctermbg=0
hi DiffDelete     cterm=none   ctermfg=1 ctermbg=0
hi DiffText       cterm=none   ctermfg=2 ctermbg=0
" ErrorMsg
hi ErrorMsg cterm=reverse ctermfg=1 ctermbg=none
" VertSplit
hi VertSplit ctermfg=11
" Folded
hi Folded cterm=underline ctermfg=11 ctermbg=8
" FoldColumn
hi FoldColumn ctermfg=12 ctermbg=0
" SignColumn
hi SignColmn ctermfg=0 cterm=none
" IncSearch
hi IncSearch cterm=reverse ctermfg=9 ctermbg=0
" LineNr
hi LineNr ctermfg=10 ctermbg=0
" MatchParen
hi MatchParen cterm=bold ctermfg=1 ctermbg=10
" ModeMsg
hi ModeMsg cterm=none ctermfg=4
" MoreMsg
hi MoreMsg ctermfg=4
" NonText
hi NonText cterm=reverse ctermfg=11 ctermbg=none
" Normal
hi Normal       ctermfg=12
" Pmenu
" PmenuSel
" PmenuSbar
" PmenuThumb
hi Pmenu          cterm=reverse   ctermfg=12  ctermbg=0 " .s:fmt_revbb
hi PmenuSel       cterm=reverse   ctermfg=10 ctermbg=7  " .s:fmt_revbb
hi PmenuSbar      cterm=reverse   ctermfg=7  ctermbg=02 "  .s:fmt_revbb
hi PmenuThumb     cterm=reverse   ctermfg=12  ctermbg=8 " .s:fmt_revbb
" Question
hi Question cterm=bold ctermfg=6
" Search
hi Search ctermbg=3 ctermfg=0
" SpecialKey
hi SpecialKey cterm=bold ctermfg=11 ctermbg=0
" SpellBad
" SpellCap
" SpellLocal
" SpellRare
" StatusLine
" StatusLineNC
" TabLine
" TabLineFill
" TabLineSel
" Title
hi Title          cterm=bold   ctermfg=9 ctermbg=none
" Visual
" VisualNOS
hi WarningMsg   cterm=bold   ctermfg=1
" WildMenu

" These are the the things set by syncolor.vim when you set 'bg'
" *Comment      any comment
hi Comment      term=none cterm=none         ctermfg=10 ctermbg=0

" *Constant     any constant
hi Constant     ctermfg=6
" String                a string constant: "this is a string"
" Character     a character constant: 'c', '\n'
" Number                a number constant: 234, 0xff
" Boolean       a boolean constant: TRUE, false
" Float         a floating point constant: 2.3e10

" *Identifier   any variable name
hi clear Identifier
" Function      function name (also: methods for classes)

" *Statement    any statement
hi clear Statement
" hi Statement    cterm=none         ctermfg=2
" Conditional   if, then, else, endif, switch, etc.
" Repeat                for, do, while, etc.
" Label         case, default, etc.
" Operator      "sizeof", "+", "*", etc.
" Keyword       any other keyword
" Exception     try, catch, throw

" *PreProc      generic Preprocessor
hi clear PreProc
" Include       preprocessor #include
hi Include ctermfg=9
" Define                preprocessor #define
" Macro         same as Define
" PreCondit     preprocessor #if, #else, #endif, etc.

" *Type         int, long, char, etc.
hi clear Type
hi link Structure NONE
" StorageClass  static, register, volatile, etc.
" Structure     struct, union, enum, etc.
" Typedef       A typedef

" *Special      any special symbol
hi clear Special
" SpecialChar   special character in a constant
" Tag           you can use CTRL-] on this
" Delimiter     character that needs attention
" SpecialComment        special things inside a comment
" Debug         debugging statements

" *Underlined   text that stands out, HTML links
hi Underlined ctermfg=13

" *Ignore               left blank, hidden  |hl-Ignore|
hi Ignore ctermfg=8


" *Error                any erroneous construct
hi Error        cterm=bold         ctermfg=1 ctermbg=none

" *Todo         anything that needs extra attention; mostly the
               " keywords TODO FIXME and XXX

hi! link Operator NONE

hi Visual       cterm=underline              ctermbg=0
hi Todo         cterm=bold ctermfg=5 ctermbg=none
hi! link Number NONE
" Black                     0               0
" DarkBlue                  1              16
" DarkGreen                 2              32
" DarkCyan                  3              48
" DarkRed                           4              64
" DarkMagenta               5              80
" Brown, DarkYellow         6              96
" LightGray                 7             112
" DarkGray                  8             128 *
" Blue, LightBlue                   9             144 *
" Green, LightGreen        10             160 *
" Cyan, LightCyan                  11             176 *
" Red, LightRed            12             192 *
" Magenta, LightMagenta    13             208 *
" Yellow, LightYellow      14             224 *
" White                    15             240 *
"
" What syncolor does: 
" 
" if &background == "dark"
"   SynColor Comment     cterm=NONE ctermfg=Cyan ctermbg=NONE   
"   SynColor Constant    cterm=NONE ctermfg=Magenta ctermbg=NONE   
"   SynColor Special     cterm=NONE ctermfg=LightRed ctermbg=NONE   
"   SynColor Identifier  cterm=bold ctermfg=Cyan ctermbg=NONE   
"   SynColor Statement   cterm=NONE ctermfg=Yellow ctermbg=NONE   
"   SynColor PreProc     cterm=NONE ctermfg=LightBlue ctermbg=NONE   
"   SynColor Type                cterm=NONE ctermfg=LightGreen ctermbg=NONE   
"   SynColor Underlined  cterm=underline ctermfg=LightBlue  
"   SynColor Ignore      cterm=NONE ctermfg=black ctermbg=NONE   
" else
"   SynColor Comment     cterm=NONE ctermfg=DarkBlue ctermbg=NONE   
"   SynColor Constant    cterm=NONE ctermfg=DarkRed ctermbg=NONE   
"   SynColor Special     cterm=NONE ctermfg=DarkMagenta ctermbg=NONE   
"   SynColor Identifier  cterm=NONE ctermfg=DarkCyan ctermbg=NONE   
"   SynColor Statement   cterm=NONE ctermfg=Brown ctermbg=NONE   
"   SynColor PreProc     cterm=NONE ctermfg=DarkMagenta ctermbg=NONE   
"   SynColor Type                cterm=NONE ctermfg=DarkGreen ctermbg=NONE   
"   SynColor Underlined  cterm=underline ctermfg=DarkMagenta  
"   SynColor Ignore      cterm=NONE ctermfg=white ctermbg=NONE   
" endif
