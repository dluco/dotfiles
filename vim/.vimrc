"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines of history VIM has to remember
set history=1024

" Map leader key to ','
let mapleader = ","
let g:mapleader = ","

" Use Pathogen to manage plugins
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on
filetype indent on

" Disable vi-compatibility
"set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show line numbers on the left
set number

" Always show current position
set ruler

" Turn on wild menu
set wildmenu

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results as you type (like modern browsers)
set incsearch

" Highlight search results
"set hlsearch

" Bind key to clear search highlighting
"nmap <leader>/ :nohlsearch<CR>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Turn on magic for regular expressions
set magic


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colours and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Vim colorscheme
colorscheme default
"set background=dark

" Set utf8 as the standard encoding
set encoding=utf-8

" Set Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab, and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
"set expandtab

" Be smart with tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set autoindent	"Auto indent
set smartindent	"Smart indent
set wrap		"Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the statusline (1=don't show, 2=always)
set laststatus=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => NERDTree

" Toggle Tree visibility with <leader>e
nmap <silent> <leader>e :NERDTreeToggle<CR>

" => Syntastic

" Run syntax checker(s)
nmap <leader>c :SyntasticCheck<CR>
