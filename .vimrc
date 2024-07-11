" Defaults
syntax on
filetype plugin indent on
set belloff=all
set nowrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile 
set incsearch
set background=dark

" Start Plugins
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

" End Plugins 
call plug#end()

" Keybindings
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
inoremap jk <ESC>
