set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-fugitive' " Visualize GIT branches in Powerline
Plugin 'mhinz/vim-startify' " Fancy VIM start screen
" Plugin 'jistr/vim-nerdtree-tabs' " Open the same NERDTree in all tabs
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax highlighting for Angular
Plugin 'edsono/vim-matchit' " Jumps to matchin XML tags with %
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'osyo-manga/vim-over'
Plugin 'nathanaelkane/vim-indent-guides'

" To help with Nerd Commenter
filetype plugin on
let mapleader=","
set timeout timeoutlen=1500

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Ctrl+P Menu Plugin
" set runtimepath^=~/.vim/bundle/ctrlp.vim " http://ctrlpvim.github.io/ctrlp.vim/#installation

" Vim-Over Substitute Highlight Plugin
" set runtimepath^=~/.vim/bundle/vim-over " https://github.com/osyo-manga/vim-over

" Begin live highlight with Vim-Over
map <F8> :OverCommandLine<CR>

" Enable Syntax Highlighting
syntax on

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Indent Guide Settings for: nathanaelkane/vim-indent-guides
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_start_level = 2
let g:indent_guides_indent_levels = 6
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Line Numbers
:set number

" Tabs to Spaces
:set expandtab

" 2 Spaces Per Tab
:set tabstop=2

" Change tabs to spaces on load
" :retab

:set shiftwidth=2





:set laststatus=2

" Line/Column Highlighting
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
" se cursorcolumn

" Solarized Color Scheme
" let g:solarized_termcolors=256
"colorscheme solarized

" Molokai Color Scheme
colorscheme molokai-clean
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1


syntax enable
set background=dark


" Set Fonts
if has("gui_running")
    set transparency=2
    if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:14
    " set guifont=Source\ Code\ Pro\ for\ Powerline:h15
    " set guifont=ProggyCleanTTSZ:h16
    set guifont=Menlo\ for\ Powerline:h13
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Anti-Aliased Fonts
set noantialias

" Space between each line (pixels I think)
set linespace=2

" Powerline patched font symbols
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

" Hide Scrollbars in MacVim
set guioptions-=T
set guioptions-=r

" Hide scrollbars in NERDTree
:set guioptions-=L


" autocmd vimenter * NERDTree

" Turn off Terminal Bell (BOINK sound when hitting edge of screen etc)
autocmd! GUIEnter * set vb t_vb=

" vmap <C-c> "*y     " Yank current selection into system clipboard
" nmap <C-c> "*Y     " Yank current line into system clipboard (if nothing is selected)
" nmap <C-v> "*p     " Paste from system clipboard


" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>

" Current file in nerdtree
map <F9> :NERDTreeFind<CR>


set noswapfile  "http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

" Display extra whitespace
set list listchars=tab:»·,trail:·

set encoding=utf-8


" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_enable_highlighting=1
let g:syntastic_javascript_checkers=['jscs', 'jshint']

" Ignore certain kinds of HTML errors (re: Angular)
let g:syntastic_html_tidy_ignore_errors=['proprietary attribute', 'is not recognized!']

" Make System Clipboard and registers one and the same
:set clipboard=unnamedplus


" Custom Startify Header
let g:startify_custom_header = [
  \'',
  \'',
  \'    _______ __ _      _______ ______________  ',
  \'   (_______)  | |    (_______|_______(_____ \ ',
  \'    _____ /_/ | |     _         ____  _____) ) ',
  \'   |  ___)  | | |    | |       (___ \(_____ ( ',
  \'   | |      | | |____| |_____ _____) )     | |',
  \'   |_|      |_|_______)______|______/      |_|',
  \' ',
  \' ',
  \' ',
\]

" When vim is opened with no file arg, show startify screen
" autocmd VimEnter *
"  \   if !argc()
"  \ |   Startify
"  \ |   NERDTree
"  \ |   wincmd w
"  \ | endif


" Always add NERDTree to new tabs
" let g:nerdtree_tabs_open_on_console_startup=1

" Extended syntax highlighting
let g:used_javascript_libs = 'angularjs,requirejs,jasmine,angularuirouter'

set runtimepath^=~/.vim/bundle/vim-matchit/matchit.vim

" Highlight searched words
set hlsearch

" Toggle highlighing of the last search
nnoremap <F3> :set hlsearch!<CR>

" Lazy Moving Lines - Ctrl-J/K to move up and down

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv



" Anything over 80 chars highlighted red
"highlight OverLength ctermbg=red guibg=#592929
"match OverLength /\%81v.\+/

" 80 character limit line
if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endi

" 80 Char limit line
" let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(400,999),",")

set wrap

" :set nowrap

:function ToggleWrap()
: if (&wrap == 1)
:   set nowrap
: else
:   set wrap  " enable "visual" wrapping
:    set textwidth=0 wrapmargin=0  " turn off \n insertion on wrapped lines
: endif
:endfunction

map <F7> :call ToggleWrap()<CR>
map! <F7> ^[:call ToggleWrap()<CR>
