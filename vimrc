
"----------------------------------------------------------------------------------------------
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'AndrewRadev/switch.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------------------------------------------------------
"
"CamelCase Motion settings
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

"Disable powerline
"let g:powerline_loaded = 1

function! FormatFile()
  let l:lines="all"
  if filereadable("/usr/share/clang/clang-format.py")
      pyf /usr/share/clang/clang-format.py
  endif
endfunction
command Format call FormatFile()

"switch between this.that and this->that
let g:switch_mapping = "<leader>,"
let b:switch_custom_definitions = [
            \   {
            \     '\(\k\+\)\.': '\1->',
            \     '\(\k\+\)->': '\1.',
            \    }
            \ ]
" Statusline
set t_Co=256
set encoding=utf-8
set laststatus=2

" Begin my config
let mapleader = " "
let g:mapleader = " "

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
set rnu
" Custom mappings
nnoremap  ; :
inoremap jk <esc>
inoremap kj <esc>

"Change the keys for scrolling the entire screen                                                         
nnoremap J L 
nnoremap K H 
nnoremap H J 
nnoremap L K 

"Use minus to jump to end of line.
nnoremap - $
onoremap - $
nnoremap j gj
nnoremap k gk
cnoremap q1 q!
autocmd BufNewFile *.c 0r ~/g/skel/skeleton.c
autocmd BufNewFile *.tex 0r ~/g/skel/skeleton.tex
autocmd BufNewFile *.java 0r ~/g/skel/skeleton.java
autocmd BufNewFile *.rs 0r ~/g/skel/skeleton.rs
autocmd BufNewFile Makefile 0r ~/g/skel/skeleton.mak

autocmd BufNewFile,BufNew,BufRead *.txt set spell
autocmd BufNewFile,BufNew,BufRead *.txt,*.html,*.md set wrap linebreak
autocmd BufNewFile,BufNew,BufRead *.c set colorcolumn=80

"Ctags settings
set tags=./tags,tags

"Autocomplete
inoreab if@ if () {<cr>}<esc>kf(a:call getchar()<cr>
inoreab #i #include ""<left>:call getchar()<cr>


if has("xterm_clipboard")
    set clipboard=unnamedplus
endif
