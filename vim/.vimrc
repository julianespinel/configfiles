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

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set linespace=4
retab

nmap <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_no_startup_for_diff = 1

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
let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_list_type = "quickfix"
let g:go_auto_sameids = 1

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

" Python
syntax on
let g:pymode_python = 'python3'
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
nmap <C-u> :CtrlPBuffer<CR>

" Extras UI

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove tool bar
set guioptions-=r  "remove scroll bar"
set guioptions-=L "remove nerdtree scroll bar"
set guifont=Monospace\ 14

set foldmethod=indent
set cursorline

" Modify visual selection color
highlight Visual term=reverse cterm=reverse guifg=Yellow

if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

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

" Disable beep sound
set belloff=all

" Neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Jedi (python)
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" vim-autoformat
noremap <F3> :Autoformat<CR>

" Elixir
let g:mix_format_on_save = 1

" Color 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Do not hide text
let g:indentLine_setConceal = 0

