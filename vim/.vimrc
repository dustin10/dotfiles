
execute pathogen#infect()

syntax on 

filetype on

set guifont=Consolas\ 10
set number
set background=dark
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set guioptions-=m
set guioptions-=T
set guioptions-=r  
set guioptions-=L

set wildignore+=*/tmp/*,*.so,*.swp,*~,*.zip,*.class,*.exe
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|build|target)$'

if has("gui_running")
  colorscheme solarized
  set lines=77 columns=220
endif

