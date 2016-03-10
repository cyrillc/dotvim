" GENERAL =================================================

set nocompatible              " be iMproved
set autoread
set history=700


" VUNDLE PACKAGE MANAGER ==================================
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive' "GIT Integration
Plugin 'scrooloose/syntastic' "Syntax highlighting

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" SYNTASTIC SETTINGS =======================================

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" REMAPS ==================================================
:imap jj <esc>
"remap backtick to apostroph
:nnoremap ' `
:nnoremap ` '
" use 33 to insert ; at the end of the line
:nmap 33 <ESC>mzA;<ESC>'z
:imap 33 <ESC>mzA;<ESC>'zli


" EDITOR SETTINGS =========================================
syntax on
set nu
set title
set noerrorbells
set incsearch
set showmatch
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅


" STATUSLINE ==============================================
"statusline setup
set statusline =%#identifier#
set statusline+=[%f]    "tail of the filename
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2


" VIMRC ADDITIONS =========================================
" source VIMRC file if it is saved
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Allows to open vimrc in a new tap with ,v
let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>


" HELPER FUNCTIONS ========================================


