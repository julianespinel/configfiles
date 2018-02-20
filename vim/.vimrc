execute pathogen#infect()

set t_Co=256

syntax on
syntax enable
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
let NERDTreeIgnore = ['\.pyc$']
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

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

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
let g:pymode_python = 'python3'
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

" Golang
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Extras UI

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove tool bar
set guioptions-=r  "remove scroll bar"
set guioptions-=L "remove nerdtree scroll bar"
set guifont=Monospace\ 11

set foldmethod=indent
set cursorline
set clipboard=unnamedplus

" Resize splits
map <C-S-Down> :resize -1
map <C-S-Left> :vertical resize -1
map <C-S-Up> :resize +1
map <C-S-Right> :vertical resize +1

" Organize nerdtree tabs
map <C-S-PageUp> :tabmove -1
map <C-S-PageDown> :tabmove +1

" Open Gdiff in vertical splits.
set diffopt+=vertical
