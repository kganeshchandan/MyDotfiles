"set leader key
let mapleader = " "
set timeoutlen=500  ""Set timeout length to 500 ms

" quick save all files
"noremap <leader> :wall<CR>
"set modifiable
"---------------------------------------"
set showcmd
set title 
set autoread
syntax on
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
set autoindent
set fileformats=unix

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
set clipboard=unnamedplus 

" fold on markers
set foldmethod=marker

" don't wrap lines
set nowrap

" gg moves to the start of line
set startofline
set laststatus=2
filetype plugin on

" don't show current mode on commandbar
"set noshowmode "

" faster updatetime
" set updatetime=750

" ---------------- KEYS ----------------- "
" use ` as Leader
"let mapleader="`"

" quick save all files
"noremap <leader> :wall<CR>


" --------------- SPLITS ---------------- "
" default split locations
set splitbelow
set splitright

"-------------------------------------------"
syntax on
colorscheme onedark
"colorscheme challenger_deep

"if has('nvim') || has('termguicolors')"
set termguicolors
"endif"
set background=dark
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=#161616 guifg=NONE
highlight VertSplit cterm=NONE ctermfg=White ctermbg=NONE
highlight CursorLineNr guifg=white ctermfg=15 cterm=bold
highlight Whitespace ctermfg=236 guifg=grey19
highlight Pmenu ctermbg=238 guibg=#444444
highlight StatusLine ctermfg=233 guifg=#121212
highlight StatusLineNC ctermfg=233 guifg=#121212
highlight LineNr ctermfg=242



" navigating splits
nnoremap <C-Up> <C-W><C-Up>
nnoremap <C-Down> <C-W><C-Down>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>


" ---------------- TABS ----------------- "
" " navigating tabs
nnoremap <M-Right> :BufferLineCycleNext<CR>
nnoremap <M-Left> :BufferLineCyclePrev<CR>

"----------------NERDCOMMENT--------------"
"nmap <C-_> <Plug> NERDCommenterToggle
"vmap <C-_> <Plug> NERDCommenterToggle<CR>gv


"---------------NERDTree settings---------"
" Start NERDTree and leave the cursor in it.

"
"require'nvim-tree'.setup()
"autocmd VimEnter * NERDTree
" nnoremap <C-t> :NERDTreeToggle<CR>
" let NERDTreeMinimalUI=1
" let NERDTreeDirArrows = 1



"---------------nvim-tree settings--------"
nnoremap <C-n> :NvimTreeToggle<CR>

lua << EOF
require'nvim-tree'.setup() 
EOF
"--------------nvim-devicons--------------"

lua << EOF
require'nvim-web-devicons'.setup()
EOF

lua << EOF
require'nvim-web-devicons'.get_icons()
require'nvim-web-devicons'.get_icon_color("init.lua", "lua")
EOF


let g:nvim_tree_gitignore = 1 "0 by default
" let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
"let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
" let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 0 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
" let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
"let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
" let g:nvim_tree_window_picker_exclude = {
"     \   'filetype': [
"     \     'notify',
"     \     'packer',
"     \     'qf'
"     \   ],
"     \   'buftype': [
"     \     'terminal'
"     \   ]
"     \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
"let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
"highlight NvimTreeFolderIcon guifg =Blue gui=bold,underline

"----------------which-key----------------"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" lua << EOF
" require("whichkey_setup").config()
" EOF

"------------------ bash language server ----"
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

lua << EOF
require'lspconfig'.bashls.setup{}
EOF

lua << EOF
require('bufferline').setup {
    options = {
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"

        indicator_icon = '▎',
        buffer_close_icon = 'х',
        modified_icon = '●',
        close_icon = 'X',
        left_trunc_marker = '<',
        right_trunc_marker = '>',
        offsets = {
        {
            filetype = "NvimTree",
            text = function()
            return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left"
            }
        },
        
        custom_areas = {
        right = function()
            local result = {}
            local error = vim.lsp.diagnostic.get_count(0, [[Error]])
            local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
            local info = vim.lsp.diagnostic.get_count(0, [[Information]])
            local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

            if error ~= 0 then
                table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
            end

            if warning ~= 0 then
            table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
            end

            if hint ~= 0 then
            table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
            end

            if info ~= 0 then
            table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
            end
            return result
            end,
        }
    }
}
EOF


" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } "

"let g:lightline = { 'colorscheme': 'challenger_deep'}
let g:lightline = {'colorscheme': 'onedark', }
" extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier', 'coc-snippets', 'coc-json', 'coc-pyright']

lua << EOF
require'colorizer'.setup()
EOF
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'onedark --color=always {}'"

" let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
" command! -bang -nargs=? -complete=dir Files
"      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

"---------------SYNTAX-HIGHLIGHTING-------------"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" coc-snippets config
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" augroup autoformat_settings
"   " autocmd FileType bzl AutoFormatBuffer buildifier
"   autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
"   " autocmd FileType dart AutoFormatBuffer dartfmt
"   " autocmd FileType go AutoFormatBuffer gofmt
"   " autocmd FileType gn AutoFormatBuffer gn
"   " autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"   " autocmd FileType java AutoFormatBuffer google-java-format
"   " autocmd FileType python AutoFormatBuffer yapf
"   " " Alternative: autocmd FileType python AutoFormatBuffer autopep8
"   " autocmd FileType rust AutoFormatBuffer rustfmt
"   " autocmd FileType vue AutoFormatBuffer prettier
" augroup END

" autocmd FileType c,cpp ClangFormatAutoEnable





