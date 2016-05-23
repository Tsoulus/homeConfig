set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

execute pathogen#infect()
set autoindent
set background=dark
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
filetype plugin indent on
syntax on
set backupdir=~/.vim/tildeFiles//,.
set directory=~/.vim/tildeFiles//,.
set relativenumber
set number
set noswapfile
set ruler
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=3
set hidden
set wildmenu
set wildmode=longest:longest:list,full
set incsearch
"Fixes copy/paste on OS X
set clipboard=unnamedplus,unnamed,autoselect

"Beginner stuff for scrooloose
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

imap ij <Esc>

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
