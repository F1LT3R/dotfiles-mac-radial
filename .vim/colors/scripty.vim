" Vim colorscheme Scripty
" Author: Alistair MacDonald


" Experimental colors
let g:milkchoc  ="#272822"
"#293739
"#75715E
let g:slate     ="#7E8E91"
"#BCBCBC
"#D4D4D1
"let g:text      ="#F8F8F2"
let g:sherbert  ="#E6DB74"
let g:hibiscus  ="#FD971F"
"#ef5939
let g:salmon    ="#F92672"
let g:deeppurp  ="#7070F0"
"#70F0F0
let g:skyblue   ="#66D9EF"
"#A6E22E experimental




" Base Color Definition

let g:darkchoc  ="#1B1D1E"
let g:clay      ="#272822"
let g:mud       ="#293739"
let g:coffee    ="#75715E"
let g:orchid    ="#F92672"
let g:skye      ="#66D9EF"
let g:henink    ="#A6E22E"
let g:spice     ="#FD971F"
let g:sherbert  ="#E6DB74"
let g:text      ="#F8F8F2"



" Mode Colors

let g:v_lite = g:henink
let g:v_dark = g:darkchoc
let g:e_lite = "#FFAAAA"



highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="scripty"

set background=dark



" Editor settings

hi Normal          guifg=#FFFFFF guibg=#272822
hi Cursor          guifg=#000000 guibg=#FFFFFF
hi CursorLine                    guibg=#000000
exe "hi LineNr          guifg=".g:coffee." guibg=".g:darkchoc
exe "hi CursorLineNR    guifg=".g:text." guibg=#000000"
hi NonText         guifg=#FFFFFF


" Variable types

exe "hi Constant   guifg=".g:skye
exe "hi String     guifg=".g:sherbert
hi StringDelimiter guifg=#FFFFFF
hi Character       guifg=#FFFFFF
exe "hi Number     guifg=".g:skye
exe "hi Float      guifg=".g:skye
exe "hi Boolean    guifg=".g:orchid
exe "hi Identifier guifg=".g:orchid
exe "hi Function   guifg=".g:henink


" Language constructs

exe "hi Statement       guifg=".g:orchid
exe "hi Conditional     guifg=".g:orchid
hi Repeat          guifg=#FFFFFF
hi Label           guifg=#FFFFFF
exe "hi Operator        guifg=".g:orchid
hi Keyword         guifg=#FFFFFF
hi Exception       guifg=#FFFFFF
exe "hi Comment         guifg=".g:coffee." gui=italic"

exe "hi Special         guifg=".g:orchid
hi SpecialChar     guifg=#FFFFFF
hi Tag             guifg=#FFFFFF
exe "hi Delimiter       guifg=".g:spice
hi SpecialComment  guifg=#FFFFFF
hi Debug           guifg=#FFFFFF


" C like

exe "hi PreProc         guifg=".g:henink
hi Include         guifg=#FFFFFF
hi Define          guifg=#FFFFFF
hi Macro           guifg=#FFFFFF
hi PreCondit       guifg=#FFFFFF

exe "hi Type            guifg=".g:spice
"var"
exe "hi StorageClass    guifg=".g:orchid
hi Structure       guifg=#FFFFFF
hi Typedef         guifg=#FFFFFF


" Number column

hi CursorColumn    guifg=#FFFFFF
hi FoldColumn      guifg=#FFFFFF
hi SignColumn      guifg=#FFFFFF
hi Folded          guifg=#FFFFFF


" Window/Tab delimiters


" File Navigation, Search

hi Directory       guifg=#FFFFFF
exe "hi Search          guifg=".g:darkchoc." guibg=".g:sherbert
exe "hi IncSearch       guifg=".g:darkchoc." guibg=".g:henink


" Prompt/Status

hi StatusLine      guifg=#FFFFFF
hi StatusLineNC    guifg=#FFFFFF
hi WildMenu        guifg=#FFFFFF
hi Question        guifg=#FFFFFF
exe "hi Title           guifg=".g:henink
hi ModeMsg         guifg=#FFFFFF
hi MoreMsg         guifg=#FFFFFF


" Visual aid

exe "hi MatchParen      guifg=#FFFFFF guibg=".g:orchid
hi Visual          guifg=#FFFFFF
hi VisualNOS       guifg=#FFFFFF
hi NonText         guifg=#FFFFFF

hi Todo            guifg=#FFFFFF
exe "hi Underlined      guifg=".g:skye
exe "hi Error           guifg=".g:e_lite
hi ErrorMsg        guifg=#FFFFFF
hi WarningMsg      guifg=#FFFFFF
hi Ignore          guifg=#FFFFFF
hi SpecialKey      guifg=#FFFFFF


" Diff (user defaults)

"hi DiffAdd         guifg=#FFFFFF
"hi DiffChange      guifg=#FFFFFF
"hi DiffDelete      guifg=#FFFFFF
"hi DiffText        guifg=#FFFFFF


" Completion menu

exe "hi Pmenu           guifg=".g:text." guibg=".g:coffee
exe "hi PmenuSel        guifg=".g:v_dark." guibg=".g:v_lite
exe "hi PmenuSbar       guibg=".g:v_lite
exe "hi PmenuThumb      guibg=".g:v_dark


" Spelling (use default settings)

"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare



" Plugin Coloring

exe "let g:indentLine_color_gui='".g:coffee."'"