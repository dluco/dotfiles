"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines of history VIM has to remember
set history=1024

" Map leader key to ','
let mapleader = ","
let g:mapleader = ","

" Enable filetype plugins
filetype plugin on
filetype indent on

" Disable vi-compatibility
set nocompatible

" Disable splash screen
set shortmess+=I


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
set hlsearch

" Bind key to clear search highlighting
nmap <leader>/ :nohlsearch<CR>

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
" => Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


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
set statusline=\ %t								"tail of the filename
set statusline+=\ %m							"modified flag
set statusline+=%r								"read-only flag

set statusline+=%=								"left/right separator

set statusline+=%y								"filetype
set statusline+=%h								"help line flag
set statusline+=[%{strlen(&fenc)?&fenc:'none'},	"file encoding
set statusline+=%{&ff}]							"file format
set statusline+=\ %l/%L:						"cursor line/total lines
set statusline+=\ %c,							"cursor column
set statusline+=\ %P\ 							"percent through file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:comment_map = {
			\   "sh": '# ',
			\   "c": '\/\/ ',
			\   "cpp": '\/\/ ',
			\   "go": '\/\/ ',
			\   "java": '\/\/ ',
			\   "javascript": '\/\/ ',
			\   "php": '\/\/ ',
			\   "python": '# ',
			\   "ruby": '# ',
			\   "vim": '" ',
			\ }

function! ToggleComment()
    if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
        if getline('.') =~ "^" . comment_leader
            " Uncomment the line
            execute "silent s/^" . comment_leader . "//"
        else
            " Comment the line
            execute "silent s/^/" . comment_leader . "/"
        endif
    else
        echo "No comment leader found for filetype"
    end
endfunction

noremap <leader><Space> :call ToggleComment()<cr>
vnoremap <leader><Space> :call ToggleComment()<cr>
