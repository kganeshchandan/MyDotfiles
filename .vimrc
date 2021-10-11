set autoread
"syntax on
" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" use Unicode
set encoding=utf-8

" make Backspace work like Delete
set backspace=indent,eol,start

" don't create `filename~` backups
set nobackup

" don't create temp files
set noswapfile

" tab config
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" show line numbers
set number

" show cursor line
set cursorline

" show cursor column
"set cursorcolumn

" highlight matching parens, braces, brackets, etc
set showmatch

" make scrolling and painting fast
set ttyfast lazyredraw

" http://vim.wikia.com/wiki/Searching
set hlsearch incsearch ignorecase smartcase

" Use system clipboard
set clipboard=unnamed

" fold on markers
set foldmethod=marker

" don't wrap lines
set nowrap

" gg moves to the start of line
set startofline

" don't show current mode on commandbar
"set noshowmode "

" faster updatetime
" set updatetime=750

" ---------------- KEYS ----------------- "
" use ` as Leader
let mapleader="`"

" quick save all files
noremap <leader> :wall<CR>


" --------------- SPLITS ---------------- "
" default split locations
set splitbelow
set splitright

" navigating splits
nnoremap <C-Up> <C-W><C-Up>
nnoremap <C-Down> <C-W><C-Down>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>


" ---------------- TABS ----------------- "
" navigating tabs
nnoremap <M-Right> :tabn<CR>
nnoremap <M-Left> :tabp<CR>


syntax on
colorscheme onedark
"colorscheme challenger_deep

"if has('nvim') || has('termguicolors')"
set termguicolors
"endif"
set background=dark
" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=#161616 guifg=NONE
highlight VertSplit cterm=NONE ctermfg=White ctermbg=NONE
highlight CursorLineNr guifg=white ctermfg=15 cterm=bold
highlight Whitespace ctermfg=236 guifg=grey19
" highlight Pmenu ctermbg=238 guibg=#444444
" highlight StatusLine ctermfg=233 guifg=#121212
" highlight StatusLineNC ctermfg=233 guifg=#121212
" highlight LineNr ctermfg=242



" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } "

"let g:lightline = { 'colorscheme': 'challenger_deep'}
let g:lightline = {'colorscheme': 'onedark', }
