execute pathogen#infect()

" Vim Clojure Static plugin.
syntax on
filetype plugin indent on

set number
set noswapfile
set hlsearch   " Highlights search matches.
set incsearch  " Searching as you type.
set ignorecase " Ignore case while searching.

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
retab

autocmd VimEnter * NERDTree
colorscheme monokain

let g:scala_sort_across_groups=1
let g:go_fmt_autosave = 0
let g:html_indent_inctags = "html,body,head,tbody"
