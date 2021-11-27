"----
" general settings
"----

set nu
set spell
set ignorecase
set scrolloff=10
set encoding=utf-8
set splitright
set redrawtime=10000 " large file
set nowrap

let mapleader = "\<space>"

" Respect Visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Quicker switching between windows
nmap <silent> <C-h> <C-w>h
"nmap <silent> <C-h> <C->
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l


set foldmethod=syntax
set foldlevel=3
set foldclose=all


" map gf to open non-existent file-path on cursor
map gf :edit <cfile><cr>

nmap <leader>x :!xdg-open %<cr><cr>


" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/dracula.vim
source ~/.config/nvim/commentary.vim
source ~/.config/nvim/fugitive.vim

call plug#end()
doautocmd User PlugLoaded

