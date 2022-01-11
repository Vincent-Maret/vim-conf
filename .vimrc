set nocompatible

" ----------------
" General settings
" ----------------
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" ----------------
" Automatic vim-plug installation
" ----------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------
" Plugins
" ----------------
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Use pale night theme
set background=dark
colorscheme palenight
