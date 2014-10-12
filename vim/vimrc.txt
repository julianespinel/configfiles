execute pathogen#infect()

" Vim Clojure Static plugin.
syntax on
filetype plugin indent on

set number
set noswapfile
set hlsearch

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
retab

autocmd VimEnter * NERDTree
colorscheme molokai

let g:scala_sort_across_groups=1
