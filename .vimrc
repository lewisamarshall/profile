" Sources:
" github.com/amx/vimrc

""""""""""""""""""""""""
" General
""""""""""""""""""""""""
set history=500
filetype plugin on 
filetype indent on
" Set to auto read file changes from outside
set autoread

"""""""""""""""""""""""
" User interface
"""""""""""""""""""""""
set wildmenu
set wildignore=*.o,*~,~.pyc,.git

" Show current position
set ruler

" height of command bar
set cmdheight=2

" buffer becomes hidden when abandoned
set hid

" configure backspace behavior
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" ignore case while searching, be smart
set ignorecase
set smartcase
" highlight search, incremental
set hlsearch
set incsearch

set lazyredraw
set magic
" show matching bracket, blink 0.2 sec
set showmatch
set mat=2

"add left margin
set foldcolumn=0

""""""""""""""""""
" Colors and fonts
""""""""""""""""""
syntax enable
set encoding=utf8
set ffs=unix,dos,mac

" highlight lines over 80 characters
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"""""""""
" backups
"""""""""
" turn off backups, use version control
set nobackup
set nowb
set noswapfile

"""""""""""""""""""
" text, tab, indent
"""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" linebreak at 500 chr
set lbr
set tw=500

set ai "Auto indent
set si "smart indent
set wrap "wrap lines

"""""""""""""""
" Moving around
"""""""""""""""
" Smarten tab changing
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""
" Status line
"""""""""""""
set laststatus=1
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""
" Trailing whitespace
"""""""""""""""""""""
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

""""""""""""""""
" Paste Function
""""""""""""""""
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction


