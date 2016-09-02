" Vim colorscheme Scripty
" Author: Alistair MacDonald // changetest


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


" Extended Color Definition

let g:text         ="#F8F8F2"
let g:orchid_dark  ="#841331"
let g:henink_dark  ="#5f8700"
let g:spice_medium ="#C9640C"
let g:spice_dark   ="#320004"
" let g:skye_dark    ="#2285AB"
let g:skye_medium  ="#004167"
let g:skye_dark    ="#053040"
let g:coffee_dark  ="#424027"
let g:white        ="#FFFFFF"
let g:black        ="#000000"
let g:red          ="#ef5939"


" Experimental Colors
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
let g:neon  ="#7070F0"
"#70F0F0
let g:skyblue   ="#66D9EF"
"#A6E22E experimental


" Error / Diff

let g:diff_add = g:henink_dark
let g:diff_delete = g:red
let g:diff_change = g:sherbert
let g:diff_changedelete = g:neon
let g:error_fg = g:red
let g:error_bg = g:black

" Normal

let g:cursor_fg_normal = g:darkchoc
let g:cursor_bg_normal = g:text

let g:gutter_bg_normal = g:black
let g:gutter_fg_normal = g:coffee
let g:gutter_cursorlinenr_fg_normal = g:white
let g:gutter_cursorlinenr_bg_normal = g:coffee

let g:gutter_error_fg_normal = g:black
let g:gutter_error_bg_normal = g:error_fg
let g:gutter_warning_fg_normal= g:black
let g:gutter_warning_bg_normal = g:neon

let g:gutter_diff_add_fg_normal = g:diff_add
let g:gutter_diff_change_fg_normal = g:diff_change
let g:gutter_diff_delete_fg_normal = g:diff_delete
let g:gutter_diff_changedelete_fg_normal = g:diff_changedelete


" Insert

let g:ins_col_a = g:skye
let g:ins_col_b = g:skye_dark
let g:ins_col_c = g:skye_dark

let g:cursor_fg_insert = g:white
let g:cursor_bg_insert = g:ins_col_a
let g:cursorline_bg_insert = g:ins_col_c

let g:gutter_bg_insert = g:ins_col_b
let g:gutter_fg_insert = g:ins_col_a
let g:gutter_cursorlinenr_fg_insert = g:ins_col_b
let g:gutter_cursorlinenr_bg_insert = g:ins_col_a

let g:gutter_error_fg_insert = g:ins_col_a
let g:gutter_error_bg_insert = g:ins_col_b
let g:gutter_warning_fg_insert= g:ins_col_a
let g:gutter_warning_bg_insert = g:ins_col_b

let g:gutter_diff_add_fg_insert = g:ins_col_a
let g:gutter_diff_change_fg_insert = g:ins_col_a
let g:gutter_diff_delete_fg_insert = g:ins_col_a
let g:gutter_diff_changedelete_fg_insert = g:ins_col_a


" Visual

let g:select_fg_visual = g:black
let g:select_bg_visual = g:henink
let g:cursor_fg_visual = g:henink_dark
let g:cursor_bg_visual = g:white

let g:gutter_bg_visual = g:henink_dark
let g:gutter_fg_visual = g:henink
let g:gutter_cursorlinenr_fg_visual = g:henink_dark
let g:gutter_cursorlinenr_bg_visual = g:henink

let g:gutter_error_fg_visual = g:henink
let g:gutter_error_bg_visual = g:henink
let g:gutter_warning_fg_visual= g:henink
let g:gutter_warning_bg_visual = g:henink

let g:gutter_diff_add_fg_visual = g:henink
let g:gutter_diff_change_fg_visual = g:henink
let g:gutter_diff_delete_fg_visual = g:henink
let g:gutter_diff_changedelete_fg_visual = g:henink


" Menu

let g:menu_fg = g:text
let g:menu_bg = g:coffee
let g:menu_select_fg = g:black
let g:menu_select_bg = g:henink
let g:menu_bar_bg = g:darkchoc
let g:menu_bar_fg = g:henink_dark


" Match

let g:match_paren_bg = g:orchid
let g:match_paren_fg = g:white


highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="scripty"

set background=dark



" Editor settings

hi Normal          guifg=#FFFFFF guibg=#272822
" hi Cursor          guifg=#000000 guibg=#FFFFFF
" hi CursorLine                    guibg=#000000
" exe "hi LineNr          guifg=".g:coffee." guibg=".g:darkchoc
" exe "hi CursorLineNR    guifg=".g:text." guibg=#000000"
hi NonText         guifg=#FFFFFF


" Variable types

exe "hi Constant   guifg=".g:skye
exe "hi String     guifg=".g:sherbert
hi StringDelimiter guifg=#FF0000
hi Character       guifg=#FF0000
exe "hi Number     guifg=".g:skye
exe "hi Float      guifg=".g:skye
exe "hi Boolean    guifg=".g:orchid
exe "hi Identifier guifg=".g:orchid
exe "hi Function   guifg=".g:henink


" Language constructs

exe "hi Statement       guifg=".g:orchid
exe "hi Conditional     guifg=".g:orchid
hi Repeat          guifg=#FF0000
hi Label           guifg=#FF0000
exe "hi Operator        guifg=".g:orchid
exe "hi Keyword         guifg=".g:orchid
exe "hi Exception       guifg=".g:orchid
exe "hi Comment         guifg=".g:coffee." gui=italic"

exe "hi Special         guifg=".g:orchid
hi SpecialChar     guifg=#FF0000
hi Tag             guifg=#FF0000
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
hi Structure       guifg=#FF0000
hi Typedef         guifg=#FF0000


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
exe "hi Underlined      guifg=".g:error_fg."'"
exe "hi Error           guifg=".g:error_fg." guibg=".g:error_bg."'"
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

exe "hi Pmenu           guifg=".g:menu_fg." guibg=".g:menu_bg."'"
exe "hi PmenuSel        guifg=".g:menu_select_fg." guibg=".g:menu_select_bg."'"
exe "hi PmenuSbar       guibg=".g:menu_bar_bg."'"
exe "hi PmenuThumb      guibg=".g:menu_bar_fg."'"


" Spelling (use default settings)

exe "hi SpellBad           guifg=".g:error_fg."'"
" exe "hi SpellCap            guifg=".g:error_fg."'"
" exe "hi SpellLocal           guifg=".g:error_fg."'"
" exe "hi SpellRare           guifg=".g:error_fg."'"








" Special Coloring
function! SetCursorLineNrColorInsert(mode)
    " Insert mode: blue
    if a:mode == "i"
        "highlight CursorLineNr guifg=#268bd2

    " Replace mode: red
    elseif a:mode == "r"
        "highlight CursorLineNr guifg=#dc322f
    endif
endfunction


" Indent
exe "let g:indentLine_color_gui='".g:coffee."'"

" Match parens
exe "hi MatchParen    guifg=".g:match_paren_fg." guibg=".g:match_paren_bg."'"

" Whitespace Characters

set listchars=eol:˼,tab:»·,trail:.,extends:>,precedes:<,nbsp:_
exe ":hi NonText guifg='".g:henink."'"
exe ":hi Specialkey guifg='".g:coffee."'"


function! NormalColorSet()

  " Cursor
  exe "highlight Cursor guifg=".g:cursor_fg_normal." guibg=".g:cursor_bg_normal."'"
  exe "hi CursorLine    guibg=".g:black."'"

  " Gutter
  exe "highlight LineNr guifg=".g:gutter_fg_normal." guibg=".g:gutter_bg_normal."'"
  exe "highlight CursorLineNr guifg=".g:gutter_cursorlinenr_fg_normal." guibg=".g:gutter_cursorlinenr_bg_normal."'"
  exe "highlight SignColumn guibg=".g:gutter_bg_normal."'"

  " Gutter Syntastic
  exe "hi SyntasticErrorSign guibg=".g:gutter_bg_normal." guifg=".g:gutter_error_fg_normal."'"
  exe "hi SyntasticWarningSign guibg=".g:gutter_bg_normal." guifg=".g:gutter_warning_fg_normal."'"

  " Gutter Git
  exe "highlight GitGutterAdd guibg=".g:gutter_bg_normal." guifg=".g:gutter_diff_add_fg_normal."'"
  exe "highlight GitGutterChange guibg=".g:gutter_bg_normal." guifg=".g:gutter_diff_change_fg_normal."'"
  exe "highlight GitGutterDelete guibg=".g:gutter_bg_normal." guifg=".g:gutter_diff_delete_fg_normal."'"
  exe "highlight GitGutterChangeDelete guibg=".g:gutter_bg_normal." guifg=".g:gutter_diff_changedelete_fg_normal."'"

endfunction


function! InsertColorSet()

  " Cursor
  exe "highlight Cursor guifg=".g:cursor_fg_insert." guibg=".g:cursor_bg_insert."'"
  exe "hi CursorLine    guibg=".g:cursorline_bg_insert."'"

  " Gutter
  exe "highlight LineNr guifg=".g:gutter_fg_insert." guibg=".g:gutter_bg_insert."'"
  exe "highlight CursorLineNr guifg=".g:gutter_cursorlinenr_fg_insert." guibg=".g:gutter_cursorlinenr_bg_insert."'"
  exe "highlight SignColumn guibg=".g:gutter_bg_insert."'"

  " Gutter Syntastic
  exe "hi SyntasticErrorSign guibg=".g:gutter_bg_insert." guifg=".g:gutter_error_fg_insert."'"
  exe "hi SyntasticWarningSign guibg=".g:gutter_bg_insert." guifg=".g:gutter_warning_fg_insert."'"

  " Gutter Git
  exe "highlight GitGutterAdd guibg=".g:gutter_bg_insert." guifg=".g:gutter_diff_add_fg_insert."'"
  exe "highlight GitGutterChange guibg=".g:gutter_bg_insert." guifg=".g:gutter_diff_change_fg_insert."'"
  exe "highlight GitGutterDelete guibg=".g:gutter_bg_insert." guifg=".g:gutter_diff_delete_fg_insert."'"
  exe "highlight GitGutterChangeDelete guibg=".g:gutter_bg_insert." guifg=".g:gutter_diff_changedelete_fg_insert."'"

endfunction


function! VisualColorSet()

  " Selection Highlight Colors
  exe "hi Visual guifg=".g:select_fg_visual." guibg=".g:select_bg_visual."'"

  " Cursor
  exe "highlight Cursor guifg=".g:cursor_fg_visual." guibg=".g:cursor_bg_visual."'"

  " Gutter
  exe "highlight LineNr guifg=".g:gutter_fg_visual." guibg=".g:gutter_bg_visual."'"
  exe "highlight CursorLineNr guifg=".g:gutter_cursorlinenr_fg_visual." guibg=".g:gutter_cursorlinenr_bg_visual."'"
  exe "highlight SignColumn guibg=".g:gutter_bg_visual."'"

  " Gutter Syntastic
  exe "hi SyntasticErrorSign guibg=".g:gutter_bg_visual." guifg=".g:gutter_error_fg_visual."'"
  exe "hi SyntasticWarningSign guibg=".g:gutter_bg_visual." guifg=".g:gutter_warning_fg_visual."'"

  " Gutter Git
  exe "highlight GitGutterAdd guibg=".g:gutter_bg_visual." guifg=".g:gutter_diff_add_fg_visual."'"
  exe "highlight GitGutterChange guibg=".g:gutter_bg_visual." guifg=".g:gutter_diff_change_fg_visual."'"
  exe "highlight GitGutterDelete guibg=".g:gutter_bg_visual." guifg=".g:gutter_diff_delete_fg_visual."'"
  exe "highlight GitGutterChangeDelete guibg=".g:gutter_bg_visual." guifg=".g:gutter_diff_changedelete_fg_visual."'"

endfunction


" Set colors when entering/leaving insert mode
autocmd InsertEnter * call InsertColorSet()
autocmd InsertLeave * call NormalColorSet()

" Set normal colors when loading colorcheme
:call NormalColorSet()



function! SetCursorLineNrColorVisual()
  set updatetime=0
  :call VisualColorSet()
  return ''
endfunction


function! ResetCursorLineNrColor()
  set updatetime=4000
  :call NormalColorSet()
endfunction

vnoremap <silent> <expr> <SID>SetCursorLineNrColorVisual SetCursorLineNrColorVisual()
nnoremap <silent> <script> v v<SID>SetCursorLineNrColorVisual<left><right>
nnoremap <silent> <script> V V<SID>SetCursorLineNrColorVisual<left><right>
nnoremap <silent> <script> <C-v> <C-v><SID>SetCursorLineNrColorVisual<left><right>

augroup CursorLineNrColorSwap
    autocmd!
    autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
    autocmd InsertLeave * call ResetCursorLineNrColor()
    autocmd CursorHold * call ResetCursorLineNrColor()
augroup END