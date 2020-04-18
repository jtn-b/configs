

call plug#begin('~/local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'rakr/vim-one'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'

"...

call plug#end()

syntax enable

set noerrorbells
set smartindent
set autoindent 
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set termguicolors
set smartindent
set nu
set nowrap
set noswapfile
set incsearch


"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"let g:airline_theme = palenight

"let g:airline_theme='one'
"colorscheme one
"set background=dark 


if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext


"For proper tabbing and bracket insertion"
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
