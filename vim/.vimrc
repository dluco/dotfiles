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
set nocompatible


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

" Don't redraw while executing macros (good performance config).
" Note: causes window title and statusline to not be updated
" on startup.
"set lazyredraw

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
" => Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move cursor by display lines when wrapping
map k gk
map j gj
map <Up> gk
map <Down> gj


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Title
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show VIM title in terminal window's title
set title

" Disable "Thanks for flying VIM!" on exit
let &titleold=""

" Set titlestring to display name of current file
set titlestring=VIM:\%F

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the statusline (1=don't show, 2=always)
set laststatus=2

" Statusline format
set statusline=%t								"tail of the filename
set statusline+=\ %m								"modified flag
set statusline+=%r								"read-only flag

set statusline+=%=								"left/right separator

set statusline+=%y								"filetype
set statusline+=%h								"help line flag
set statusline+=[%{strlen(&fenc)?&fenc:'none'},	"file encoding
set statusline+=%{&ff}]							"file format
set statusline+=\ %l/%L:						"cursor line/total lines
set statusline+=\ %c,							"cursor column
set statusline+=\ %P							"percent through file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"--------------------------------------------------------------
" => NERDTree
"--------------------------------------------------------------

" Toggle Tree visibility with <leader>e
nmap <silent> <leader>e :NERDTreeToggle<CR>

"--------------------------------------------------------------
" => Syntastic
"--------------------------------------------------------------

" Set when automatic syntax checking should be done (+ filetypes)
let g:syntastic_mode_map = { "mode": "passive",
							\"passive_filetypes": ["tex"]}

" Run syntax checker(s)
nmap <leader>c :SyntasticCheck<CR>

" Reset list of errors and hide notifications
nmap <leader>C :SyntasticReset<CR>

"--------------------------------------------------------------
" => Airline
"--------------------------------------------------------------

" Set colortheme
"let g:airline_theme='simple'

" Automatically populate the g:airline_symbols dictionary
" with proper font glyphs and various symbols
"let g:airline_powerline_fonts = 0

" Prevent delay when leaving Insert mode (Airline)
"set timeoutlen=0
