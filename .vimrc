" better safe than sorry
set nocompatible
" allow backspacing over everything in insert mode
set bs=indent,eol,start
" search while typing
set incsearch
" ignore case of search
set ignorecase
" but use smart case
set smartcase

" set tab to 2 spaces
set tabstop=2
" set indent >> to 2 spaces
set shiftwidth=2
" expand tab to spaces
set expandtab

" recursive gf, i.e. path is path + all subpaths
set path=$PWD/**

" some timeout preventing us from doing:
" insert mode -> Esc and ^O very fast
set timeoutlen=100

call plug#begin('~/.vim/plugged')

" our plugins
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
" show airline when only one pane
set laststatus=2

" using %S/foo/bar to replace multiple variants of a word e.g. foo, FOO, Foo with bar, BAR, Bar
Plug 'tpope/vim-abolish'

" OpenGL syntax
Plug 'beyondmarc/opengl.vim'

" clang format for C++
Plug 'rhysd/vim-clang-format'

" all we need for GO
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" TypeScript syntax
Plug 'leafgarland/typescript-vim'

autocmd FileType typescript :set makeprg=tsc

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" fzf shortcuts
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g>g :Ag<CR>
nnoremap <C-g>c :Commands<CR>
nnoremap <C-f>l :BLines<CR>
nnoremap <C-p> :Files<CR>

" Async linter
Plug 'w0rp/ale'

let g:ale_c_build_dir = $PWD . '/build'

" Set C++ ale compiler flags
let g:ale_linters = {'cpp': ['g++']}
" get our include libs
let paths = split(globpath('/usr/local/include', '*'), '\n')

" get our extern include libs
let extern = split(globpath($PWD . '/extern', '*'), '\n')
let extern_include = split(globpath($PWD . '/extern', '*/include'), '\n')

let paths = paths + extern + extern_include

" standard options and include current dir
let compile_options = '-std=c++2a -Wall -Wextra -I' . $PWD
" if we have libs added, add them to the include paths
if len(paths)
  let compile_options = compile_options . ' -I' . join(paths, ' -I')
endif

let gcc_extras = ' -Wcast-qual -Wconversion-null
\ -Woverlength-strings -Wpointer-arith -Wunused-local-typedefs -Wunused-result
\ -Wvarargs -Wvla -Wwrite-strings
\ -Wno-parentheses' "some boost complaints

let clang_extras = ' '

let g:ale_cpp_clang_options = compile_options . clang_extras
let g:ale_cpp_gcc_options = compile_options . gcc_extras

" Initialize plugin system
call plug#end()

" set indent for html
au FileType html setl sw=2 sts=2 et
filetype plugin indent on

colorscheme wombat256
