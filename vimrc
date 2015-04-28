
"----------------------------------------------------------------------------------------------
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-surround'
Plugin 'AndrewRadev/switch.vim'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------------------------------------------------------
"
"

let g:switch_mapping = ","
let b:switch_custom_definitions = [
            \   {
            \     '\<[a-z0-9]\+_\k\+\>': {
            \       '_\(.\)': '\U\1'
            \     },
            \     '\<[a-z0-9]\+[A-Z]\k\+\>': {
            \       '\([A-Z]\)': '_\l\1'
            \     },
            \   }
            \ ]
"
"
"Colorscheme stuff
set background=dark
colorscheme base16-default
"let base16colorspace=256
"Airline Settings
set t_Co=256
set encoding=utf-8
set laststatus=2

" Begin my config
set nocompatible
filetype plugin indent on
set smartindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

set wildmenu
set cursorline
set backspace=2 "need for proper backspace behavoir in neovim

syntax on
set nojoinspaces
set nowrap
set nu
"set rnu
" Custom mappings
nnoremap  ; :
inoremap jk <esc>
inoremap kj <esc>
"Use minus to jump to end of line.
nnoremap - $
onoremap - $
nnoremap j gj
nnoremap k gk
cnoremap q1 q!
autocmd BufNewFile *.c 0r ~/config/skeleton.c
autocmd BufNewFile *.tex 0r ~/config/skeleton.tex
autocmd BufNewFile *.java 0r ~/config/skeleton.java

autocmd BufNewFile,BufNew,BufRead *.txt set spell
autocmd BufNewFile,BufNew,BufRead *.txt set wrap
autocmd BufNewFile,BufNew,BufRead *.txt set linebreak

