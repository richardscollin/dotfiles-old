"----------------------------------------------------------------------------------------------
let mapleader = ","
if filereadable(expand("~/.vim/bundle/Vundle.vim/.git/HEAD"))
    set nocompatible              " required
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'AndrewRadev/switch.vim'
    Plugin 'bkad/CamelCaseMotion'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'gmarik/Vundle.vim'
    Plugin 'mattn/emmet-vim'
    Plugin 'mileszs/ack.vim'
    Plugin 'noahfrederick/vim-skeleton'
    Plugin 'posva/vim-vue'
    Plugin 'scrooloose/NERDTree'
    "Plugin 'scrooloose/syntastic'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-vinegar'
    call vundle#end()            " required

    "Plugin Specific Settings

    "switch between this.that and this->that
    let g:switch_mapping = "<Leader>,"
    let b:switch_custom_definitions = [
                \   {
                \     '\(\k\+\)\.': '\1->',
                \     '\(\k\+\)->': '\1.',
                \    }
                \ ]

    "CamelCase Motion settings
    map <S-W> <Plug>CamelCaseMotion_w
    map <S-B> <Plug>CamelCaseMotion_b
    map <S-E> <Plug>CamelCaseMotion_e

    " NERDTree Settings
    let g:lasttab = 1
    nnoremap <silent> <Leader>n :NERDTreeToggle<CR>:silent NERDTreeMirror<CR>
    nnoremap <silent> <Leader>s :let g:lasttab = tabpagenr()<CR>:tabdo NERDTreeClose<CR>:exe "tabn ".g:lasttab<CR>:mksession!<CR>
    nnoremap <silent> <Leader>o :let g:lasttab = tabpagenr()<CR>:tabdo NERDTreeToggle \| silent NERDTreeMirror<CR>:tabdo windo echo<CR>:exe "tabn ".g:lasttab<CR>
    "autocmd VimEnter * :NERDTree
    "autocmd BufWinEnter * :NERDTreeMirror

    "TODO maybe integrate into plugin
    let g:skeleton_replacements = {}
    function! g:skeleton_replacements.UBASENAME()
        return toupper(fnamemodify(expand('%'), ':t:r'))
    endfunction
endif
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
"Disable powerline
"let g:powerline_loaded = 1
set rtp+=${POWERLINE_DIR}/bindings/vim

" Statusline
set t_Co=256
set encoding=utf-8
set laststatus=2

" Begin my config
let mapleader = ","
let g:mapleader = ","

filetype plugin indent on
set nocompatible
set smartindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd BufNewFile,BufNew,BufRead *.html,*.css,*.js,*.vue set shiftwidth=2 softtabstop=2

set mouse=a
set wildmenu
set nocursorline "decreases latency on large files
set backspace=2 "need for proper backspace behavoir in neovim

syntax on
set nojoinspaces
set nowrap
set number
"set rnu
" Custom mappings
nnoremap  ; :
inoremap jk <esc>
inoremap kj <esc>

"Change the keys for scrolling the entire screen                                                         
nnoremap <space> <C-d>
nnoremap <backspace> <C-u>

"Use minus to jump to end of line.
nnoremap - $
onoremap - $
nnoremap j gj
nnoremap k gk
cnoremap q1 q!

"File specific settings
autocmd BufNewFile Makefile 0r ~/.vim/templates/skel.mak
autocmd BufNewFile,BufNew,BufRead *.txt,*.html,*.md set wrap linebreak
autocmd BufNewFile,BufNew,BufRead *.c set colorcolumn=80
autocmd BufNewFile,BufNew,BufRead *.ml compiler ocaml
autocmd BufNewFile,BufNew,BufRead *.caml compiler ocaml

"let's you use :make for to pdflatex
autocmd FileType tex setlocal makeprg=pdflatex\ \ -synctex=1\ --shell-escape\ '%'

" shortcut to run shell commands
inoremap <c-e> <esc>:r!
nnoremap <c-e> <esc>:r!
nnoremap <Leader>r <esc>:r!

"Compile keybinding
nnoremap <F5> :make<CR>

"Ctags settings
set tags=./tags,tags,~/.vim/ctags/tags

"I prefer text formatted a width of 60 because that's how
"much a terminal taking up half of my screen can fit
set formatprg=fmt\ -60

"Autocomplete
inoreab if@ if () {<cr>}<esc>kf(a:call getchar()<cr>
inoreab for@ for (;;) {<cr>}<esc>kf(a:call getchar()<cr>
inoreab #i #include ""<left>:call getchar()<cr>
inoreab sop System.out.println

"Tab Shortcuts
nnoremap <Leader>j gT
nnoremap <Leader>l gt

"Search features
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!

if has("xterm_clipboard")
    set clipboard=unnamedplus
endif

