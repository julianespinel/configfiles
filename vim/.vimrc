execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = ","

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

" Scala
let g:scala_sort_across_groups=1
" HTML
let g:html_indent_inctags = "html,body,head,tbody"

" Go lang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_list_type = "quickfix"

autocmd FileType go nmap <leader>b  <Plug>(go-build)

" TagBar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {  
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
      \ 'p:package',
      \ 'i:imports:1',
      \ 'c:constants',
      \ 'v:variables',
      \ 't:types',
      \ 'n:interfaces',
      \ 'w:fields',
      \ 'e:embedded',
      \ 'm:methods',
      \ 'r:constructor',
      \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
      \ 't' : 'ctype',
      \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
      \ 'ctype' : 't',
      \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }

" Python
syntax on
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Extras UI

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove tool bar
set guioptions-=r  "remove scroll bar"
set guioptions-=L "remove nerdtree scroll bar"
set guifont=Monospace\ 12

set foldmethod=indent
set cursorline
