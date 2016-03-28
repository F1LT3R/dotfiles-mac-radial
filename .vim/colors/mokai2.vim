" Molokai
let s:bgdark  ="#1B1D1E"
let s:bglight ="#272822"
"#293739
"#75715E
"#7E8E91
"#BCBCBC
"#D4D4D1
let b:text="#F8F8F2"
"#E6DB74
"#FD971F
"#ef5939
"#F92672
"#7070F0
"#70F0F0
"#66D9EF
"#A6E22E experimental



" Vim color file
" Maintainer:   Your name <youremail@something.com>
" Last Change:
" URL:

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=dark " or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mokai2"

exe "hi! Normal     guibg=".s:bgdark
"hi Normal          guifg=s:text guibg=s:bgdark

" OR

" highlight clear Normal
" set background&
" highlight clear
" if &background == "light"
"   highlight Error ...
"   ...
" else
"   highlight Error ...
"   ...
" endif

" A good way to see what your colorscheme does is to follow this procedure:
" :w
" :so %
"
" Then to see what the current setting is use the highlight command.
" For example,
"   :hi Cursor
" gives
" Cursor         xxx guifg=bg guibg=fg

" Uncomment and complete the commands you want to change from the default.

"hi Cursor
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
"hi VertSplit
"hi Folded
"hi FoldColumn
"hi IncSearch
"hi LineNr guifg=#7E8E91 guibg=#
"hi ModeMsg
"hi MoreMsg
"hi NonText
"hi Question
"hi Search
"hi SpecialKey
"hi StatusLine
"hi StatusLineNC
"hi Title
"hi Visual
"hi VisualNOS
"hi WarningMsg
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment guifg=#7E8E91
hi Constant guifg=#AE81FF
"hi Identifier
"hi Statement
"hi PreProc
"hi Type
"hi Special
"hi Underlined
"hi Ignore
"hi Error
"hi Todo


"" Colorize line numbers in insert and visual modes
"" ------------------------------------------------
"function! SetCursorLineNrColorInsert(mode)
    "" Insert mode: blue
    "if a:mode == "i"
        ""highlight CursorLineNr ctermfg=4 guifg=#268bd2

    "" Replace mode: red
    "elseif a:mode == "r"
        ""highlight CursorLineNr ctermfg=1 guifg=#dc322f
    "endif
"endfunction

"function! SetCursorLineNrColorVisual()
  "set updatetime=0
  "highlight Cursor guifg=#FB0082 guibg=#FFFFFF
  "highlight LineNr guifg=#FB0082 guibg=#58164b
  "highlight CursorLineNr guifg=#58164b guibg=#FB0082
  "highlight SignColumn guifg=#FB0082 guibg=#58164b
  "highlight GitGutterAdd guifg=#FB0082 guibg=#58164b
  "highlight GitGutterChange guifg=#FB0082 guibg=#58164b
  "highlight GitGutterDelete guifg=#FB0082 guibg=#58164b
  "highlight GitGutterChangeDelete guifg=#FB0082 guibg=#58164b
  "hi SyntasticErrorSign guibg=#58164b guifg=#FB0082
  "hi SyntasticWarningSign guibg=#58164b guifg=#FB0082
  "return ''
"endfunction


"function! ResetCursorLineNrColor()
  "set updatetime=4000
  "highlight Cursor guifg=#FFFFFF guibg=#268bd2
  "highlight LineNr guifg=#657b83 guibg=#073642
  "highlight SignColumn guibg=#073642
  "highlight CursorLineNr guifg=#657b83 guibg=#073642
  "highlight GitGutterAdd guibg=#073642 guifg=#5f8700
  "highlight GitGutterChange guibg=#073642 guifg=#b58900
  "highlight GitGutterDelete guibg=#073642 guifg=#d70000
  "highlight GitGutterChangeDelete guibg=#073642 guifg=#5f5faf
  "hi SyntasticErrorSign guibg=#073642 guifg=#d70000
  "hi SyntasticWarningSign guibg=#073642 guifg=#5f5faf
"endfunction

"vnoremap <silent> <expr> <SID>SetCursorLineNrColorVisual SetCursorLineNrColorVisual()
"nnoremap <silent> <script> v v<SID>SetCursorLineNrColorVisual<left><right>
"nnoremap <silent> <script> V V<SID>SetCursorLineNrColorVisual<left><right>
"nnoremap <silent> <script> <C-v> <C-v><SID>SetCursorLineNrColorVisual<left><right>

"augroup CursorLineNrColorSwap
    "autocmd!
    "autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
    "autocmd InsertLeave * call ResetCursorLineNrColor()
    "autocmd CursorHold * call ResetCursorLineNrColor()
"augroup END

"hi Visual guifg=#FB0082 guibg=#FFFFFF

"" Normal Mode Colors
"highlight CursorLine guibg=#073642
"highlight Cursor guifg=#FFFFFF guibg=#268bd2
"highlight LineNr guifg=#657b83 guibg=#073642
"" highlight SignColumn guibg=#073642
"hi SyntasticErrorSign guibg=#073642 guifg=#d70000
"hi SyntasticWarningSign guibg=#073642 guifg=#5f5faf


"" Inseirt Enter
"autocmd InsertEnter * highlight CursorLine guibg=#1c1c1c
"autocmd InsertEnter * highlight Cursor guifg=#FFFFFF guibg=#F9CD00
"autocmd InsertEnter * highlight CursorLineNr guibg=#F9CD00 guifg=#b58900
"autocmd InsertEnter * highlight LineNr guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * highlight SignColumn guibg=#b58900
"autocmd InsertEnter * highlight GitGutterAdd guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * highlight GitGutterChange guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * highlight GitGutterDelete guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * highlight GitGutterChangeDelete guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * hi SyntasticErrorSign guibg=#b58900 guifg=#F9CD00
"autocmd InsertEnter * hi SyntasticWarningSign guibg=#b58900 guifg=#F9CD00

""autocmd InsertEnter * highlight SyntasticErrorSign guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticWarningSign guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticStyleErrorSign guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticStyleWarningSign guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticErrorLine guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticWarningLine guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticStyleErrorLine guibg=#b58900 guifg=#F9CD00
""autocmd InsertEnter * highlight SyntasticStyleWarningLine  guibg=#b58900 guifg=#F9CD00

"" Insert Leave
"autocmd InsertLeave * highlight CursorLine guibg=#073642
"autocmd InsertLeave * highlight Cursor guifg=#FFFFFF guibg=#268bd2
"autocmd InsertLeave * highlight CursorLineNr guifg=#657b83 guibg=#073642
"autocmd InsertLeave * highlight LineNr guifg=#657b83 guibg=#073642
"autocmd InsertLeave * highlight SignColumn guibg=#073642
"autocmd InsertLeave * highlight GitGutterAdd guibg=#073642 guifg=#5f8700
"autocmd InsertLeave * highlight GitGutterChange guibg=#073642 guifg=#b58900
"autocmd InsertLeave * highlight GitGutterDelete guibg=#073642 guifg=#d70000
"autocmd InsertLeave * highlight GitGutterChangeDelete guibg=#073642 guifg=#5f5faf
"autocmd InsertLeave * hi SyntasticErrorSign guibg=#073642 guifg=#d70000
"autocmd InsertLeave * hi SyntasticWarningSign guibg=#073642 guifg=#5f5faf



"highlight MatchParen guibg=#b58900 guifg=#FFFFFF


"" WHITESPACE LIST CHARS  ↵
"set listchars=eol:˼,tab:»·,trail:.,extends:>,precedes:<,nbsp:_
"":hi Specialkey guibg=#FB0082 guifg=#1c1c1c
"":hi NonText guifg=#FB0082 guibg=#1c1c1c
":hi Specialkey guibg=#FB0082
":hi NonText guifg=#FB0082

