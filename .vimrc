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

" Nerdtree used to access a file tree into vim 
Plug 'preservim/nerdtree'
" Plugin for Dockerfile syntax highlighting
Plug 'ekalinin/Dockerfile.vim'
" Color theme
Plug 'kyoz/purify', { 'rtp': 'vim' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ----------------
" General settings
" ----------------

set nocompatible
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" Switch cursor for insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"use Purify colorscheme
colorscheme purify"

" ----------------
" Plugin specific settings 
" ----------------

" NERDTREE
" Bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
