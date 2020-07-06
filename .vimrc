set nocompatible " just in case
syntax on
set path+=** "" unlock the fuzzy finder

set backspace=2 " make backspace behave normally in insert mode
set wildmenu " awesome command-line tab completion
set showcmd
set ruler
set laststatus=2 " always display the statusline
set nobackup
set writebackup

set background=dark

let g:netrw_banner=0
let g:netrw_list_hide= '.*\.swp$,.DS_Store'

" more natural tab splits
set splitbelow
set splitright

" line numbers
set number
set numberwidth=5
"set relativenumber

" tabs = 4 spaces
set tabstop=4
set shiftwidth=4 

" tabs to spaces 
set expandtab

" Enable automatic indentation
set autoindent

" Set lines to break at 80 char(?)
set wrap
set linebreak

" Search result highlighting 
set hlsearch
set incsearch

" Enter to remove highlighting
nnoremap <CR> :nohlsearch<CR><CR>

" Tab movement
nmap <Tab> :tabn<CR>
nmap <S-Tab> :tabp<CR>

" Simpler window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Bracket autocompletion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" map upper to lower for those sticky shift-key moments
cnoreabbrev W w
cnoreabbrev Q q
