"------ Start Plugin Management ------"
call plug#begin('~/.vim/plugged')
" List all plugins that you'd like to install here
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'w0rp/ale' " Asynchronous Linting
Plug 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plug 'benmills/vimux'
Plug 'tpope/vim-fugitive' " the ultimate git helper
Plug 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plug 'vim-airline/vim-airline' " Badass status bar
Plug 'vim-airline/vim-airline-themes' " Themes for the status bar
Plug 'wakatime/vim-wakatime' " Wakatime, quantify your coding
Plug 'morhetz/gruvbox' " Color scheme and more
Plug 'jacoborus/tender.vim' " Color scheme and more
Plug 'pangloss/vim-javascript' " Javascript indentation and syntax support
Plug 'mxw/vim-jsx' " JSX syntax highlighting
Plug 'leshill/vim-json' " JSON syntax highlight
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme' " Autocompletion engine
call plug#end()

filetype plugin indent on
"------ End Plugin Management ------"

set nocompatible " set not compatible with vi
set autoread " detect when a file is changed
set backspace=indent,eol,start " make backspace behave in a sane manner
set encoding=utf-8
let mapleader=','

 "------Visuals------"
syntax on
colorscheme breezy
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
let mapleader = ','
set linespace=10
set ttyfast " Faster redrawing
set laststatus=2 " show the satus line all the time

"------  Start Tab Control (Indentation) ------
set autoindent " automatically set indent of new line
set smartindent
set expandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
"------ End Tab Control (Indentation) ------

"------ Start Search config ------
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expression contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

"----Relative Line Numbers----"
set number
set relativenumber

" mxw/vim-jsx
let g:jsx_ext_required = 0 " Enable JSX highlighting on .js files

" Ale linting using standardjs
autocmd bufwritepost *.js silent !standard --fix %
set autoread
" Other Ale settings
let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 0

"------ Start NerdTree settings ------
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>
"------ End NerdTree settings ------

"------ Start Airline settings (status bar) ------
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='tender'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 1 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
"------ End Airline settings (status bar) ------

"------ Start Fugitive settings (git) ------
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>gc :Gcommit<cr>
"------ End Fugitive settings (git) ------

" ----- Start FZF file finding ------
map <leader>ff :FZF .<cr>
" ----- End FZF file finding ------

"------ Start Mappings ------
" edit ~/.vim/vimrc
map <leader>ev :e! ~/.vim/.vimrc<cr>
" Edit tmux.conf
map <leader>mu :e! ~/.tmux.conf<cr>
" Edit zshrc
map <leader>erc :e! ~/.zshrc<cr>
"------ End Mappings
