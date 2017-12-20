if executable("opam")
  let g:opam_share_dir = substitute(system('opam config var share'),'\n$','','''')
  let g:ocaml_merlin = g:opam_share_dir . "/merlin/vim"
  let g:ocaml_ocp_indent = g:opam_share_dir . "/ocp-indent/vim"

  let g:ocaml_has_ocpindent = 1
  execute "set rtp+=" . g:ocaml_ocp_indent
  execute "set rtp+=" . g:ocaml_merlin
endif

call plug#begin()

" OCaml
Plug 'rgrinberg/vim-ocaml'

" fish shell
Plug 'kopischke/fish.vim'

" Plugin for removing trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Syntax checking and linting that works with OCaml, Python, bash, ...
Plug 'w0rp/ale'

" Search from vim, supports ripgrep
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

" Can format Python code with yapf
Plug 'Chiel92/vim-autoformat'

call plug#end()

" Change the working directory to that of the current file
set autochdir

" Open files on right with vsplit
set splitright

" show line numbers on the left
set number

" highlight the line of the cursor
set cursorline

set tabstop=2
set softtabstop=0
set shiftwidth=2
set smarttab
set expandtab

" Make more context visible around the cursor when scrolling
set scrolloff=5

" Make search case-sensitive only if the search query contains uppercase
" letters
set ignorecase
set smartcase

" Clear search highlight when pressing CTRL+L
nnoremap <C-L> :nohlsearch<CR><C-L>

" Break lines automatically for git commits
autocmd FileType text setlocal textwidth=78

" remember undo list after closing file
set undofile

if !has('nvim')
  set undodir=/tmp
endif

if has('nvim')
  " use ESC to exit terminal mode
  tnoremap <Esc> <C-\><C-n>
endif

" ******************************
" ALE configuration
" ******************************
" Don't run linters as I type
let g:ale_lint_on_text_changed = 'never'
" Don't run linters when opening a file to avoid hangs when opening large
" OCaml files
let g:ale_lint_on_enter = 0
" Move with CTRL+k,j between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_python_pylint_executable = 'pylint3'

" ******************************
" vim-grepper
" ******************************
let g:grepper = {'tools': ['rg']}
