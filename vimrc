" Show line number
set nu

" Highlight search result
set hlsearch

" Smart ignore case
set ignorecase smartcase

" Replace tab with three spaces
set tabstop=3 
set softtabstop=3 
set shiftwidth=3 

" Only expand tabs for several file types
autocmd FileType * set noexpandtab
autocmd FileType c,cc,cpp,h,python,java set expandtab

" Show tabs to avoid some boring issues like Makefile commands
set listchars=tab:>-,trail:.
" set list

" Indent settings
set autoindent 
set smartindent
set cindent

" Window Manager Layout
" let g:winManagerWindowLayout='BufExplorer|FileExplorer|TagList'
let g:winManagerWindowLayout='BufExplorer|TagList'
let g:winManagerWidth=35

" Automatically removing all trailing whitespace on specific file types
autocmd FileType mk,make,c,cc,cpp,h,python,java autocmd BufWritePre <buffer> :%s/\s\+$//e

" Auto change dir the same as the file you are editing
autocmd BufEnter * silent! lcd %:p:h


" Key binding

" w for windows manager
" t for terminal in current directory
" f for file Explorer
" b for buffer explore

nmap w :WMToggle<cr>
nmap t :!bash<cr>
nmap f :Explore<cr>
nmap b \be
