set nocompatible                   " be iMproved, required
filetype off                       " required
set rtp+=~/.vim/bundle/Vundle.vim  " Vundle Runtime Path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'      " Plugin manager

" PLUGIN LIST

" VIM GUI
Plugin 'mhinz/vim-startify'                       " Fancy VIM start screen
Plugin 'vim-airline/vim-airline'                  " Better status bar
Plugin 'vim-airline/vim-airline-themes'           " Status bar themes
Plugin 'scrooloose/nerdtree.git'                  " File browser sidebar
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'                   " Git Diff in sidebar
Plugin 'tpope/vim-fugitive'                       " Visualize Git branches in Powerline
Plugin 'junegunn/goyo.vim'                        " Distraction free editing
Plugin 'ryanoasis/vim-devicons'                   " File type UI font icons
Plugin 'sjl/gundo.vim'                            " Undo tree vizualization
Plugin 'mkitt/tabline.vim'                        " Succinct tabline
Plugin 'chriskempson/base16-vim'                  " Awesome Base16 color schemes
Plugin 'ctrlpvim/ctrlp.vim'

" Editor Control
Plugin 'edsono/vim-matchit'                       " Jump to matching XML tag with %
Plugin 'terryma/vim-multiple-cursors'             " Multi-select and edit
Plugin 'tpope/vim-commentary'                     " Comment/Uncomment w/ Cmd + Backslash
Plugin 'osyo-manga/vim-over'                      " Realtime search/replace highlighting
Plugin 'vim-scripts/PreserveNoEOL'                " Don't add \n to EOF
Plugin 'tpope/vim-repeat'                         " Add . repeat support for plugins
Plugin 'Valloric/YouCompleteMe'                   " Intellisense-like word completion
Plugin 'docunext/closetag.vim.git'                " close html tags
Plugin 'bruno-/vim-alt-mappings'

" Syntax
Plugin 'scrooloose/syntastic'                     " Syntax/error checking
Plugin 'pangloss/vim-javascript'                  " JavaScript Syntax Addons
Plugin 'othree/javascript-libraries-syntax.vim'   " Syntax highlighting for Angular
Plugin 'genoma/vim-less'                          " Less syntax support
Plugin 'chrisbra/colorizer'                       " Highlight CSS/Less Colors in the editor
Plugin 'elzr/vim-json'                            " Get quotes back for JSON (why VIM removes!?)
Plugin 'maksimr/vim-jsbeautify'                   " JS/JSON Beautifier

" " Markdown / Writing
Plugin 'suan/vim-instant-markdown'                " Realtime Markdown browser output
Plugin 'hallison/vim-markdown'                    " Markdown syntax, underline links, etc




" VUNDLE (Required)

call vundle#end()            " required
filetype plugin indent on    " required


" BASIC EDITOR SETUP

set number                " Line Numbers
set nowrap                " Start withou wrapping
set cursorline            " Highlight the current line
set laststatus=2          " Always display status bar
set nocursorcolumn        " Cursor column highlight is slow
set noswapfile            " Comment our rather than add to .gitignore
set encoding=utf-8        " Unicode
set hlsearch              " Highlight searched words
set autochdir             " New files are automatically saved in dir of current file
syntax enable             " Enable syntax highlighting
set autoread              " Auto-reload file on change
set relativenumber
set undofile

" Fix VIMs Regex Formatting for searches
nnoremap / /\v
vnoremap / /\v

" Case Insensitive Seach
set ignorecase
set smartcase

" Substitute globally by default
set gdefault

" Show results as typing
set incsearch
set showmatch
set hlsearch

" Clear the Search
nnoremap <leader><space> :noh<cr>

" Change Cursor Shape for Different Modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Jump to Match w/ Tab
nnoremap <tab> %
vnoremap <tab> %

" set autoindent noexpandtab tabstop=2 shiftwidth=2

" Spaces
set autoindent expandtab shiftwidth=2 tabstop=2
retab


" FONT SETTINGS

" set noantialias      " Turn on/off Anti-Aliased Fonts
set linespace=0       " Space between each line (pixels I think)

if has("gui_macvim")
  set guicursor=a:blinkon0  " Disable cusor blink
  set transparency=2
  " set guifont=ProggyCleanTTSZ\ Nerd\ Font\ Complete:h16
  " set guifont=Sauce\ Code\ Pro\ Light\ Nerd\ Font\ Complete:h14
  " set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h16
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h13

  " Hide MacVim chrome (inc. scrollbars)
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
endif


" COLOR SCHEME

" colorscheme solarized
" colorscheme scripty
colorscheme base16-flat
set background=dark


" OTHER SETTINGS

" HANDLED IN COLOR SCHEME NOW
"" WHITESPACE LIST CHARS
set listchars=eol:˼,tab:»·,trail:.,extends:>,precedes:<,nbsp:_

" INDENT GUIDE LINES
let g:indentLine_char = '│'  " Options: │┆⏐┊╽▏⠇⠅  ፧ │
let g:indentLine_enabled = 0

" " DRAW 100 CHAR RULER
" if exists('+colorcolumn')
"   set colorcolumn=100
" else
"   au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
" endif

" Line Wrapping
set nowrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=100

let g:airline_powerline_fonts=1
let g:WebDevIconsNerdTreeGitPluginForceVAlign=1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" UNDO LEVELS
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Don't open markdown files in the browser automatically
let g:instant_markdown_autostart = 0
" Make markdown updates to page slower (better text editor performance)
let g:instant_markdown_slow = 1



" let g:ycm_path_to_python_interpreter="/usr/local/bin/python"

" AIRLINE (STATUS BAR)
let g:airline_powerline_fonts=1
let g:airline_theme='base16_flat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#tabline#show_splits = 0

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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '☠'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_enable_highlighting=1

" JSHint
" let g:syntastic_javascript_checkers=['jscs', 'jshint']  " npm install jshint jscs -g
" let g:syntastic_javascript_checkers=['jshint']  " npm install jshint jscs -g

" XO
" let g:syntastic_javascript_eslint_generic = 1
" let g:syntastic_javascript_eslint_exec = 'xo'
" let g:syntastic_javascript_eslint_args = '--reporter=compact'
" let g:syntastic_javascript_checkers = ['eslint']

" Babel ESLint
let g:syntastic_javascript_checkers = ['eslint']    " npm install -g eslint babel-eslint (+rc file)
let g:syntastic_javascript_eslint_exec = 'eslint_d' " npm install -g eslint_d

" Ignore certain kinds of HTML errors (re: Angular)
" let g:syntastic_html_tidy_ignore_errors=['proprietary attribute', 'is not recognized!']

" Extended syntax highlighting
" let g:used_javascript_libs = 'angularjs,requirejs,jasmine,angularuirouter'

filetype plugin on
au BufNewFile,BufRead * if &ft == '' | set ft=javascript | endif


" WRAP MODE
let b:wrapmode = "no"
function! ToggleWrapMode()
  if exists("b:wrapmode") && b:wrapmode == "yes"
    let b:wrapmode = "no"
    set nowrap
    set nolinebreak
    set nobreakindent
    Goyo!
  else
    let b:wrapmode = "yes"
    set wrap
    set linebreak
    set breakindent
    Goyo 60x100%
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



" REMOVE TRAILING WHITESPACE ON SAVE
" function! StripTrailingWhitespace()
"   let l:chars = col("$")
"   %s/\s\+$//e
"   "if (line("'Z") != line(".")) || (l:chars != col("$"))
"     "echo "Trailing whitespace stripped\n"
"   "endif
"   normal `Z
" endfunction

" :autocmd BufWritePre * :call StripTrailingWhitespace()



highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
" autocmd BufWritePre     *.* :call TrimWhiteSpace()




" REMOVE \N FROM EOL
" But preserve EOL if one already exists in the file
setlocal noeol | let b:PreserveNoEOL = 1



" MAP THE LEADER KEY
let mapleader=","
set timeout timeoutlen=1500

" DON'T HIDE DOUBLE-QUOTES (JSON)
" ================================================================================================
let g:vim_json_syntax_conceal = 0


" STARTIFY HEADER
" ================================================================================================

let g:startify_custom_header = readfile(expand('~/.vim/ascii-art/panther.txt'))

" Go Continuous Scroll-Binding
" Vertically split the current buffer into two windows which will stay
" scroll-bound together.  Allows you to see twice as much as before!
" (disables the wrap setting and expands folds to work better)
" (PS: this is kind of janky, but I like it anyway)
nnoremap <silent> gcsb :<c-u>let @z=&so<cr>:set so=0 noscb nowrap nofen<cr>:bo vs<cr>Ljzt:setl scb<cr><c-w>p:setl scb<cr>:let &so=@z<cr>

set splitright


" YouCompleteMe Settings
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_add_preview_to_completeopt = 0

" " Base16 Color Definition (Flat)

" " GUI color definitions
" let s:gui00 = "#2C3E50"
" let s:gui01 = "#34495E"
" let s:gui02 = "#7F8C8D"
" let s:gui03 = "#95A5A6"
" let s:gui04 = "#BDC3C7"
" let s:gui05 = "#e0e0e0"
" let s:gui06 = "#f5f5f5"
" let s:gui07 = "#ECF0F1"
" let s:gui08 = "#E74C3C"
" let s:gui09 = "#E67E22"
" let s:gui0A = "#F1C40F"
" let s:gui0B = "#2ECC71"
" let s:gui0C = "#1ABC9C"
" let s:gui0D = "#3498DB"
" let s:gui0E = "#9B59B6"
" let s:gui0F = "#be643c"

" " Mode Colors
" let s:NormalBG = s:gui0B
" let s:NormalFG = s:gui07
" let s:InsertBG = s:gui0D
" let s:InsertFG = s:gui01
" let s:InsertFG2 = s:gui07
" let s:VisualBG = s:gui0E
" let s:VisualFG = s:gui07


" " Completion menu Colors
" exe "hi Pmenu           guifg=".s:gui01." guibg=".s:gui05."'"
" exe "hi PmenuSel        guifg=".s:gui0F." guibg=".s:gui0B."'"
" exe "hi PmenuSbar       guibg=".s:gui04."'"
" exe "hi PmenuThumb      guibg=".s:gui08."'"

" KEYBOARD MAPPING
" ================================================================================================

" Can hit semi-colon as colon
nnoremap ; :

" Comment Toggle
map <C-Bslash> gcc<Esc>
" Transparent mode toggle
nmap <C-u> :call ToggleTrans()<cr>
" Normal Lazy Move Down
nnoremap <C-j> :m .+1<CR>==
" Normal Lazy Move Up
nnoremap <C-k> :m .-2<CR>==
" Insert Lazy Move Down
inoremap <C-j> <ESC>:m .+1<CR>==gi
" Insert Lazt Move Up
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual Lazy Move Down
vnoremap <C-j> :m '>+1<CR>gv=gv
" Visual Lazy Move Up
vnoremap <C-k> :m '<-2<CR>gv=gv
" Toggle Indent Guidlines
nnoremap <C-0> :call TrimWhiteSpace()<CR>
nnoremap <C-9> :ColorToggle<CR>

" " Ctrl + Dir: Move Between Tabs
" nnoremap <C-Left> :tabp<CR>
" nnoremap <C-Right> :tabn<CR>

" " Alt + Dir: Move Cursor Between Split
" nnoremap <Esc>[1;9D <C-w><Left>
" nnoremap <Esc>[1;9A <C-w><Up>
" NNOREMAP <ESC>[1;9B <C-w><Down>
" NNOREMAP <ESC>[1;9C <C-w><Right>

" SET ALT+SHIFT+DIR KEYs
let s:ALT_SHIFT_LEFT = "<Esc>[1;10D"
let s:ALT_SHIFT_RIGHT = "<Esc>[1;10C"

" SET ALT+DIR KEYS
let s:ALT_LEFT = "<ESC>[1;9D"
let s:ALT_UP = "<ESC>[1;9A"
let s:ALT_RIGHT = "<ESC>[1;9C"
let s:ALT_DOWN = "<ESC>[1;9B"

" SET CTL+DIR KEYS
let s:CTL_LEFT = "<C-LEft>"
let s:CTL_UP = "<C-UP>"
let s:CTL_RIGHT = "<C-Right>"
let s:CTL_DOWN = "<C-DOwn>"

" ALT + SHIFT + DIR: MOve Between Tabs
exe "nnoremap ".s:ALT_SHIFT_LEFT." :tabp<CR>"
exe "nnoremap ".s:ALT_SHIFT_RIGHT." :tabn<CR>"

" ALT + Dir: Move Between Buffers (User buffers, they are better, CTRLP!)
exe "nnoremap ".s:ALT_LEFT." :bprevious<CR>"
exe "nnoremap ".s:ALT_RIGHT." :bnext<CR>"

" CTL + Dir: Move Cursor Between Split
exec "nnoremap ".s:CTL_LEFT." <C-w><Left>"
exec "nnoremap ".s:CTL_UP." <C-w><Up>"
exec "nnoremap ".s:CTL_RIGHT." <C-w><Right>"
exec "nnoremap ".s:CTL_DOWN." <C-w><Down>"

" Enforce Vimish keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" nnoremap j gj
" nnoremap k gk

map <F1> :OverCommandLine<CR>                             " Vim-Over: search/replace/highlihght
noremap <F2> :set list!<CR>                               " Toggle Show Whitespace Chars
nnoremap <F3> :set hlsearch!<CR>                          " Toggle Search Highlight
nnoremap <F4> :GundoToggle<CR>                            " Map undo tree
nnoremap <F5> :InstantMarkdownPreview<CR>                 " Markdown Preview
nnoremap <F6> :call ToggleWrapMode()<cr>                  " Wrap/Write Mode
map <F8> <Plug>ToggleHexHighlight
map <F10> :NERDTreeTabsToggle<cr>