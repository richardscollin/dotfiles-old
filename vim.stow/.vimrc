"----------------------------------------------------------------------------------------------
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
    Plugin 'noahfrederick/vim-skeleton'
    Plugin 'scrooloose/NERDTree'
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
    " shift-w, shift-b, shift-e
    " to move by camelcase word
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
    "

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

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

filetype plugin indent on
set nocompatible
set smartindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd BufNewFile,BufNew,BufRead *.html,*.css,*.js,*.vue,*.rb,*.html.erb set shiftwidth=2 softtabstop=2

"File specific settings
autocmd BufNewFile,BufNew,BufRead *.txt,*.html,*.md set wrap linebreak
autocmd BufNewFile,BufNew,BufRead *.c set colorcolumn=80
autocmd FileType c,cpp setlocal equalprg=clang-format

set mouse=a
set wildmenu
set nocursorline "decreases latency on large files

syntax on
set nojoinspaces
set nowrap
set number
"set rnu

set encoding=utf-8
set laststatus=2

" Begin my config
let mapleader = ","
let g:mapleader = ","

"
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

"change line wrap down cursor behavior
nnoremap j gj
nnoremap k gk

"fix common typo
cnoremap q1 q!

"Ctags settings
set tags=./tags,tags,~/.vim/ctags/tags

if has("xterm_clipboard")
    set clipboard=unnamedplus
endif

color peachpuff
