set nocompatible
filetype off

set relativenumber number
set hidden

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'

call vundle#end()
syntax enable
filetype plugin indent on

" hard time https://github.com/takac/vim-hardtime
Bundle 'takac/vim-hardtime'
let g:hardtime_default_on = 1

set undodir=~/.vim/undo_dir
set undofile
"set clipboard=unnamedplus
set ignorecase smartcase

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

""nnoremap <j> <k>
""nnoremap <k> <j>

