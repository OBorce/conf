set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set incsearch

" set tab to 2 spaces
set tabstop=2
" set indent >> to 2 spaces
set shiftwidth=2
" expand tab to spaces
set expandtab

call plug#begin('~/.vim/plugged')

" our plugins
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
" show airline when only one pane
set laststatus=2

" replace multiple variants of a word e.g. foo, FOO, Foo with bar, BAR, Bar
Plug 'tpope/vim-abolish'

" OpenGL syntax
Plug 'beyondmarc/opengl.vim'

" clang format from C++
Plug 'rhysd/vim-clang-format'

" all we need for GO
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" TypeScript syntax
Plug 'leafgarland/typescript-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" fzf shortcuts
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g>g :Ag<CR>
nnoremap <C-g>c :Commands<CR>
nnoremap <C-f>l :BLines<CR>
nnoremap <C-p> :Files<CR>

" Initialize plugin system
call plug#end()

" set indent for html
au FileType html setl sw=2 sts=2 et
filetype plugin indent on

colorscheme wombat256

set path=$PWD/**
