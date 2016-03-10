" VUNDLE (Required)
" ================================================================================================
set nocompatible                   " be iMproved, required
filetype off                       " required
set rtp+=~/.vim/bundle/Vundle.vim  " Vundle Runtime Path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'      " Plugin manager


" PLUGIN LIST
" ================================================================================================
Plugin 'pangloss/vim-javascript'                  " JavaScript Syntax Addons
Plugin 'scrooloose/nerdtree.git'                  " File browser sidebar
Plugin 'scrooloose/syntastic'                     " Syntax/error checking
Plugin 'airblade/vim-gitgutter'                   " Git Diff in sidebar
Plugin 'tpope/vim-fugitive'                             " Visualize Git branches in Powerline
Plugin 'mhinz/vim-startify'                       " Fancy VIM start screen
" Plugin 'jistr/vim-nerdtree-tabs'                  " Open the same NERDTree in all tabs
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-airline/vim-airline'
Plugin 'F1LT3R/vim-airline-themes'
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax highlighting for Angular
Plugin 'edsono/vim-matchit'                       " Jump to matching XML tag with %
Plugin 'terryma/vim-multiple-cursors'             " Multi-select and edit
Plugin 'scrooloose/nerdcommenter'                 " Comment Block Highlighting
Plugin 'ctrlpvim/ctrlp.vim'                       " File list on steriods (like Sublime Ctrl+P)
Plugin 'osyo-manga/vim-over'                      " Realtime search/replace highlighting
" Plugin 'nathanaelkane/vim-indent-guides'          " Indent level guides (Ugly but fast)
Plugin 'Yggdroot/indentLine'                      " Indent level guide lines (pretty but slower)
Plugin 'junegunn/goyo.vim'                        " Distraction free editing
Plugin 'suan/vim-instant-markdown'                " Realtime Markdown browser output
Plugin 'genoma/vim-less'                          " Less syntax support
Plugin 'hallison/vim-markdown'                    " Markdown syntax, underline links, etc
Plugin 'ap/vim-css-color'                         " Support for hex/rgb color highlighting (slow)
Plugin 'vim-scripts/PreserveNoEOL'                " Don't add \n to EOF
Plugin 'elzr/vim-json'                            " Get quotes back for JSON (why VIM removes!?)
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-surround'

" VUNDLE (Required)
" ================================================================================================
call vundle#end()            " required
filetype plugin indent on    " required
" ================================================================================================


" BASIC EDITOR SETUP
" ================================================================================================

set number            " Line Numbers
set shiftwidth=2      " Width to shift over
set nowrap            " Start without wrapping
set cursorline        " Highlight the current line
set tabstop=2         " 2 Spaces Per Tab
set expandtab         " Insert spaces with tab key
set laststatus=2      " Always display status bar
set linespace=0       " Space between each line (pixels I think)
set nocursorcolumn    " Cursor column highlight is slow
set guioptions-=T     " - Hide Scrollbars in MacVim
set guioptions-=r     " - Hide Scrollbars in MacVim
set guioptions-=L     " Hide scrollbars in NERDTree
set noswapfile        " Comment our rather than add to .girignore
set encoding=utf-8    " Unicode
set hlsearch          " Highlight searched words
set autochdir         " New files are automatically saved in dir of current file
syntax enable         " Enable syntax highlighting
retab                 " Convert tabs to spaces on load


" FONT SETTINGS
" ================================================================================================

set noantialias       " Turn on/off Anti-Aliased Fonts

if has("gui_running")
  set transparency=2
  if has("gui_gtk2")
    set guifont=Inconsolata:12
  elseif has("gui_macvim")
    set guifont=Source\ Code\ Pro\ for\ Powerline:h15
    "set guifont=ProggyCleanTTSZ:h16
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


" COLOR SCHEME
" ================================================================================================

"let g:molokai_original = 1   " Use classic style Molokai (Sublime~ish)
"colorscheme molokai-clean    " Custom version of Molokai w/o italics, etc.
colorscheme solarized
set background=dark
" let g:rehash256 = 1:s         " Terminal only colors


" OTHER SETTINGS
" ================================================================================================

" HANDLED IN COLOR SCHEME NOW
"" WHITESPACE LIST CHARS
"set listchars=eol:˼,tab:»·,trail:.,extends:>,precedes:<,nbsp:_
":hi Specialkey guibg=#FB0082 guifg=#1c1c1c
":hi NonText guifg=#FB0082 guibg=#1c1c1c

" INDENT GUIDE LINES
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#30525c'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_char = '│'  " Options: │┆⏐┊╽▏⠇⠅  ፧ │

"" DRAW 100 CHAR RULER
"if exists('+colorcolumn')
  "set colorcolumn=100
"else
  "au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
"endi


" UNDO LEVELS
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000




" AIRLINE (STATUS BAR)
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'






" NERDTREE
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" DISABLED TERMINAL BELL
autocmd! GUIEnter * set vb t_vb=

" SYTASTIC SETTINGS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height=3
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_enable_highlighting=1
let g:syntastic_javascript_checkers=['jscs', 'jshint']  " npm install jshint -g

" Ignore certain kinds of HTML errors (re: Angular)
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute', 'is not recognized!']

" Extended syntax highlighting
let g:used_javascript_libs = 'angularjs,requirejs,jasmine,angularuirouter'


" WRITE MODE
let b:write = "no"
function! ToggleWrite()
  if exists("b:write") && b:write == "yes"
    let b:write = "no"
    set nolinebreak
    set textwidth=0
    set wrapmargin=0
    set nobreakindent
    Goyo!
    if has('gui_running')
      " set nofullscreen
      set linespace=0
    endif
    set nowrap
    set nospell
  else
    let b:write = "yes"
    " set linebreak
    set textwidth=50
    set wrapmargin=0
    " set nolist  " I already have this set
    set breakindent
    Goyo 50x100%
    if has('gui_running')
      " set fullscreen
      set linespace=0
    endif
    set wrap
    set spell
  endif
endfunction


" Toggle Transparency
let b:trans = "no"
function! ToggleTrans()
  if exists("b:trans") && b:trans == "yes"
    let b:trans = "no"
    set transparency=2
  else
    let b:trans = "yes"
    set transparency=30
  endif
endfunction




" REMOVE TRAILING WHITESPACE
"function! TrimWhiteSpace()
  "%s/\s*$//''
":endfunction

"set list listchars=trail:.,extends:>
"autocmd FileWritePre * :call TrimWhiteSpace()
"autocmd FileAppendPre * :call TrimWhiteSpace()
"autocmd FilterWritePre * :call TrimWhiteSpace()
"autocmd BufWritePre * :call TrimWhiteSpace()

function! StripTrailingWhitespace()
  normal mZ
  let l:chars = col("$")
  %s/\s\+$//e
  "if (line("'Z") != line(".")) || (l:chars != col("$"))
    "echo "Trailing whitespace stripped\n"
  "endif
  normal `Z
endfunction

:autocmd BufWritePre * :call StripTrailingWhitespace()

" REMOVE \N FROM EOL
:SetNoEOL
" setlocal noeol | let b:PreserveNoEOL = 1



" MAP THE LEADER KEY
let mapleader=","
set timeout timeoutlen=1500


"" SCREENMOVEMENT
"" (move by screenlines in softwrap)
"let b:gmove = "yes"
"function! ScreenMovement(movement)
  "if &wrap && b:gmove == 'yes'
    "return "g" . a:movement
  "else
    "return a:movement
  "endif
"endfunction


"" SCREENMOVE MAP VIM MOVEMENT KEYS
"onoremap <silent> <expr> j ScreenMovement("j")
"onoremap <silent> <expr> k ScreenMovement("k")
"onoremap <silent> <expr> 0 ScreenMovement("0")
"onoremap <silent> <expr> ^ ScreenMovement("^")
"onoremap <silent> <expr> $ ScreenMovement("$")
"nnoremap <silent> <expr> j ScreenMovement("j")
"nnoremap <silent> <expr> k ScreenMovement("k")
"nnoremap <silent> <expr> 0 ScreenMovement("0")
"nnoremap <silent> <expr> ^ ScreenMovement("^")
"nnoremap <silent> <expr> $ ScreenMovement("$")
"vnoremap <silent> <expr> j ScreenMovement("j")
"vnoremap <silent> <expr> k ScreenMovement("k")
"vnoremap <silent> <expr> 0 ScreenMovement("0")
"vnoremap <silent> <expr> ^ ScreenMovement("^")
"vnoremap <silent> <expr> $ ScreenMovement("$")
"vnoremap <silent> <expr> j ScreenMovement("j")


"" SCREENMOVE MAP HOME KEYS
"onoremap <silent> <expr> <C-h> ScreenMovement("0")
"nnoremap <silent> <expr> <C-h> ScreenMovement("0")
"vnoremap <silent> <expr> <C-h> ScreenMovement("0")
"onoremap <silent> <expr> <C-l> ScreenMovement("$")
"nnoremap <silent> <expr> <C-l> ScreenMovement("$")
"vnoremap <silent> <expr> <C-l> ScreenMovement("$")


"" SCREENMOVE MAP ARROW KEYS
"onoremap <silent> <expr> <C-Left> ScreenMovement("0")
"nnoremap <silent> <expr> <C-Left> ScreenMovement("0")
"vnoremap <silent> <expr> <C-Left> ScreenMovement("0")
"onoremap <silent> <expr> <C-Right> ScreenMovement("$")
"nnoremap <silent> <expr> <C-Right> ScreenMovement("$")
"vnoremap <silent> <expr> <C-Right> ScreenMovement("$")


"" MOVE N-LINES IN SOFTWRAP
"nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
"nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
"nnoremap <expr> <Up> (v:count == 0 ? 'gk' : 'k')
"nnoremap <expr> <Down> (v:count == 0 ? 'gj' : 'j')

" DON'T HIDE DOUBLE-QUOTES (JSON)
" ================================================================================================
let g:vim_json_syntax_conceal = 0


" STARTIFY HEADER
" ================================================================================================

let g:startify_custom_header = readfile(expand('~/.vim/ascii-art/panther.txt'))


" KEYBOARD MAPPING
" ================================================================================================

" Comment Toggle
map <D-Bslash> <plug>NERDCommenterToggle
" Transparent mode toggle
nmap <D-u> :call ToggleTrans()<cr>
" Write Mode (distraction free
nmap ,w :call ToggleWrite()<cr>
" Toggle Search Highlight
nnoremap <F3> :set hlsearch!<CR>
" Normal Lazy Move Down
nnoremap <D-j> :m .+1<CR>==
" Normal Lazy Move Up
nnoremap <D-k> :m .-2<CR>==
" Insert Lazy Move Down
inoremap <D-j> <ESC>:m .+1<CR>==gi
" Insert Lazt Move Up
inoremap <D-k> <ESC>:m .-2<CR>==gi
" Visual Lazy Move Down
vnoremap <D-j> :m '>+1<CR>gv=gv
" Visual Lazy Move Up
vnoremap <D-k> :m '<-2<CR>gv=gv
" Toggle Indent Guidlines
map <C-i> :IndentLinesToggle<CR>
" Begin live highlight with Vim-Over
map <F8> :OverCommandLine<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>
" Toggle NERDTree Sidebar with F10
map <F10> :NERDTreeToggle<CR>
" Toggle Show Whitespace Chars
noremap <F2> :set list!<CR>
