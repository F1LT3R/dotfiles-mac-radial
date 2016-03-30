" Vim colorscheme Scripty
" Author: Alistair MacDonald

set background=dark
let g:darkchoc  ="#1B1D1E"


let g:milkchoc  ="#272822"
"#293739
"#75715E
let g:slate     ="#7E8E91"
"#BCBCBC
"#D4D4D1
let g:text      ="#F8F8F2"
let g:sherbert  ="#E6DB74"
let g:hibiscus  ="#FD971F"
"#ef5939
let g:salmon    ="#F92672"
let g:deeppurp  ="#7070F0"
"#70F0F0
let g:skyblue   ="#66D9EF"
"#A6E22E experimental

let g:clay = "#272822"
let g:mud = "#293739"
let g:coffee = "#75715E"
let g:orchid = "#F92672"
let g:cyan = "#66D9EF"
let g:henink = "#A6E22E"
let g:spice = "#FD971F"
let g:sherbert = "#E6DB74"


highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="scripty"


" Editor settings

hi Normal          guifg=#FFFFFF guibg=#272822
hi Cursor          guifg=#000000 guibg=#FFFFFF
hi CursorLine                    guibg=#000000
exe "hi LineNr          guifg=".g:coffee." guibg=".g:darkchoc
exe "hi CursorLineNR    guifg=".g:text." guibg=#000000"
hi NonText         guifg=#FFFFFF


" Variable types

exe "hi Constant   guifg=".g:cyan
exe "hi String     guifg=".g:sherbert
hi StringDelimiter guifg=#FFFFFF
hi Character       guifg=#FFFFFF
exe "hi Number     guifg=".g:cyan
exe "hi Float      guifg=".g:cyan
exe "hi Boolean    guifg=".g:orchid
hi Identifier      guifg=#FFFFFF
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
hi Delimiter       guifg=#FFFFFF
hi SpecialComment  guifg=#FFFFFF
hi Debug           guifg=#FFFFFF


" C like

exe "hi PreProc         guifg=".g:henink
hi Include         guifg=#FFFFFF
hi Define          guifg=#FFFFFF
hi Macro           guifg=#FFFFFF
hi PreCondit       guifg=#FFFFFF

exe "hi Type            guifg=".g:spice
hi StorageClass    guifg=#FFFFFF
hi Structure       guifg=#FFFFFF
hi Typedef         guifg=#FFFFFF


" Number column

hi CursorColumn    guifg=#FFFFFF
hi FoldColumn      guifg=#FFFFFF
hi SignColumn      guifg=#FFFFFF
hi Folded          guifg=#FFFFFF

" Window/Tab delimiters


" - File Navigation / Searching -

hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=none    ctermbg=none    cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none


" Prompt/Status

hi StatusLine      ctermfg=none    ctermbg=none    cterm=none
hi StatusLineNC    ctermfg=none    ctermbg=none    cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" Visual aid

hi MatchParen      ctermfg=none    ctermbg=none    cterm=none
hi Visual          ctermfg=none    ctermbg=none    cterm=none
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=none    ctermbg=none    cterm=none

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none


" Diff

hi DiffAdd         guifg=#FFFFFF
hi DiffChange      guifg=#FFFFFF
hi DiffDelete      guifg=#FFFFFF
hi DiffText        guifg=#FFFFFF


" Completion menu

hi Pmenu           guifg=#FFFFFF
hi PmenuSel        guifg=#FFFFFF
hi PmenuSbar       guifg=#FFFFFF
hi PmenuThumb      guifg=#FFFFFF


" Spelling

hi SpellBad        guifg=#FFFFFF
hi SpellCap        guifg=#FFFFFF
hi SpellLocal      guifg=#FFFFFF
hi SpellRare       guifg=#FFFFFF


" Plugin Coloring

exe "let g:indentLine_color_gui='".g:coffee."'"