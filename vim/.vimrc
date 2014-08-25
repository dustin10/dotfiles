
" bootstrap pathogen
execute pathogen#infect()

" turn on syntax highlighting
syntax on 

" try to detect file type and turn on plugins
filetype on
filetype plugin on
filetype indent on

" reload file if it was edited outside of vim
set autoread

" set the font
set guifont=Consolas\ 10

" turn on line numbers and ruler
set number
set ruler

" windows like clipboard
let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

" Tab and Shift+Tab will will tab selection in visual
vmap <Tab> >gv
vmap <S-Tab> <gv

" indentation
set expandtab     " use spaces for tabs
set smartindent   " smarter indent for some languages
set tabstop=4     " tab is four spaces
set shiftwidth=4  " when reading, tab is 4 spaces
set softtabstop=4 " in insert, tab is 4 spaces

" searching
set ignorecase " ignore case
set incsearch  " find as we type
set hlsearch   " highlight matched terms

" this makes pressing ESC remove the highlighting
nnoremap <esc> :noh<return><esc>

" ignore patterns
set wildignore+=*/tmp/*,*.so,*.swp,*~,*.zip,*.class,*.exe

" more ignores for CtrlP
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|build|target)$'

" if running GUI
if has("gui_running")
  colorscheme solarized
  set background=dark
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r  
  set guioptions-=L
endif

set vb t_vb=

" set , as mapleader
let mapleader = ","

" buffer cycling
map <leader>q :bp<CR>
map <leader>w :bp<CR>

