" Salil Gupta

" use two spaces for indents, and make them actual spaces
set backspace=2
set shiftwidth=2
set tabstop=2
set autoindent
set expandtab

" UI 
set number
set showmatch
set visualbell
set wildmenu
" sets title
set title

" vertical split pane to bottom
set splitbelow
" horizontal split pane to right
set splitright

" Search
set ignorecase " ignore case when searching 
set smartcase  " override 'ignorecase' if uppercase in search
set incsearch  " search as characters are entered
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable " enabling folding of functions etc ...
set foldlevelstart=10 " open most folding
set foldnestmax=10 " max depth 10
set foldmethod=indent " fold based on indent level

" Plugins via vim-plugin
call plug#begin()
Plug 'Yggdroot/indentLine' " indentation lines
Plug 'tpope/vim-fugitive' " fugitive for git shit
Plug 'vim-airline/vim-airline' " vim-airline
Plug 'vim-airline/vim-airline-themes' " color themes for airline
Plug 'kchmck/vim-coffee-script' " coffeescript
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'jremmen/vim-ripgrep' " rip-grep faster grep
Plug 'w0rp/ale' " asyncronous linting
Plug 'pearofducks/ansible-vim' " syntax highlighting for jinja2
call plug#end()

" Necesary for lots of cool vim things
set nocompatible
filetype off

syntax on
filetype plugin indent on
colorscheme basic-dark

let g:airline_theme='simple'

let g:ale_fixers = {
\ 'ruby': ['rubocop'],
\ 'python': ['flake8'],
\}

let g:ale_linters = {
\ 'ruby': ['rubocop'],
\ 'python': ['flake8'],
\}

let g:ale_completion_delay=9000
