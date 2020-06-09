
call plug#begin('~/local/share/nvim/plugged')

"<------- UI Plugins -------------->"

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim' 
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'altercation/vim-colors-solarized'

"<---------Utils------------------>"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar'
"...


call plug#end()

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set title
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=50                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
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
set noswapfile
set incsearch
set clipboard=unnamedplus               " Copy paste between vim and everything else

"<--------- UI Settings ---------------->"

let g:airline_theme='oceanic'
set background=dark
colorscheme OceanicNext 

"<----------------------------------------->


au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
source $HOME/local/share/nvim/plugged/coc.vim


"<---------- Leader Key ------------->"

let g:mapleader="\<Space>"
let g:user_emmet_leader_key=','


" <---------- Key Bindings ------------------->
"TagBar Toggler
nmap <F8> :TagbarToggle<CR>
"NERDCommentor
map <C-_> <Leader>c<Leader>
"NERDTreeToggle 
nnoremap <Leader>n :NERDTreeToggle<CR> 
nnoremap <Leader>m :NERDTreeFind<CR>
"For proper tabbing and bracket insertion"
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

"_______BUFFERS________
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>G

"_______SPLITS__________"
"nnoremap <Leader><TAB> <C-w>w
nnoremap <C-Right> <C-w>l
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Left> <C-w>h
nmap <Leader>t :r ~/Templates/cptemp2.cpp
