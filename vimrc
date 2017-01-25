
"------ Start Vundle Plugin Management ------" 
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list all plugins that you'd like to install here
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'vim-syntastic/syntastic' " Syntach checker
Plugin 'vim-airline/vim-airline' " Badass status bar
Plugin 'vim-airline/vim-airline-themes' " Themes for the status bar

call vundle#end()
filetype plugin indent on
"------ End Vundle Plugin Management ------"

set nocompatible " set not compatible with vi
set autoread " detect when a file is changed
set backspace=indent,eol,start " make backspace behave in a sane manner
set encoding=utf-8
let mapleader=','

 "------Visuals------"
syntax on
colorscheme atom-dark
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
let mapleader = ','
set linespace=12
set ttyfast " Faster redrawing
set laststatus=2 " show the satus line all the time
"
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

"------ Start Syntastic settings ------
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 1

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
highlight SyntasticErrorLine guibg=#2f0000
highlight SyntasticError guibg=#2f0000
autocmd bufwritepost *.js silent !standard --fix %

"------ End Syntastic settings ------

"------ Start NerdTree settings ------
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>
"------ End NerdTree settings ------

"------ Start CtrlP settings ------
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }
"------ End CtrlP settings ------

"------ Start Airline settings (status bar) ------
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
"------ End Airline settings (status bar) ------

"------ Start Fugitive settings (git) ------
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>gc :Gcommit<cr>
"------ End Fugitive settings (git) ------

"------ Start Mappings ------
" edit ~/.vim/vimrc
map <leader>ev :e! ~/.vim/vimrc<cr>
map <leader>mu :e! ~/.tmux.conf<cr>
"------ End Mappings
