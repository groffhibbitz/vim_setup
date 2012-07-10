set nocompatible

filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
filetype indent on

set t_Co=256 " 256 colors
set background=dark
syntax on
colorscheme manxome

" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
"set si " smartindent    (local to buffer)

" Tabs **************************************
set tabstop=4
set shiftwidth=4
set expandtab
retab

" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high
"match LongLineWarning '\%120v.*' " Error format when a line is longer than 120

" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word

" Inser New Line **************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Cursor Movement *************************************************************
" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge

set number " Show line numbers
set matchpairs+=<:>
imap jj <Esc>

let mapleader=","
" shortcuts to open/close the quick fix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>


