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
Plugin 'jistr/vim-nerdtree-tabs' " Open the same NERDTree in all tabs
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax highlighting for Angular
Plugin 'edsono/vim-matchit' " Jumps to matchin XML tags with %
Plugin 'terryma/vim-multiple-cursors'

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
set runtimepath^=~/.vim/bundle/ctrlp.vim " http://ctrlpvim.github.io/ctrlp.vim/#installation

syntax on

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Line Numbers
:set number

" Tabs to Spaces
:set expandtab

" 2 Spaces Per Tab
:set tabstop=2

:retab

:set shiftwidth=4

:set nowrap

:set laststatus=2

" Line/Column Highlighting
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
" se cursorcolumn

" Solarized Color Scheme
" let g:solarized_termcolors=256
"colorscheme solarized

" Molokai Color Scheme
colorscheme molokai
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
    set guifont=Source\ Code\ Pro\ for\ Powerline:h14
    " set guifont=ProggyCleanTTSZ:h16
    " set guifont=Menlo\ for\ Powerline:h15
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Anti-Aliased Fonts
" set noantialias

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

vmap <C-c> "*y     " Yank current selection into system clipboard
nmap <C-c> "*Y     " Yank current line into system clipboard (if nothing is selected)
nmap <C-v> "*p     " Paste from system clipboard


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
autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif


" Always add NERDTree to new tabs 
let g:nerdtree_tabs_open_on_console_startup=1

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


highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
