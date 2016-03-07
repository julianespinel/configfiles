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
set tabstop=2
set shiftwidth=2
set expandtab
retab

autocmd VimEnter * NERDTree
colorscheme monokain

let g:scala_sort_across_groups=1
let g:go_fmt_autosave = 0
let g:html_indent_inctags = "html,body,head,tbody"

" Go lang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

" TagBar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
  \}

" Python
syntax on
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0
