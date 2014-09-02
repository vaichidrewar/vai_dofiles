
call pathogen#infect()
call pathogen#helptags()

if has("autocmd")
  filetype plugin indent on
endif

set bs=2
set modeline
set ls=2
set ruler               " show the line number on the bar
set laststatus=2        " grey status bar at the bottom
syn on                  " syntax highlighting
filetype indent on      " activates indenting for files
set bg=dark             " works well with white-on-black scheme
colorscheme desert      " colorscheme desert
set hlsearch            " highlight what you search for
set incsearch           " type-ahead-find
set shiftwidth=4
set tabstop=4
set history=500
set undolevels=1000           " 1000 undos
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set ttyfast                   " fast scrolling
"set tags=tags;/               " Lookup ctags "tags" file up the directory, until one is found:
set noerrorbells              " don't whine
set visualbell t_vb=          " and don't make faces
set copyindent                  " use existing indents for new indents
set backup
set backupdir=~/backup
filetype plugin on
set path=/home/vaibhavc/vaiP4/ws1/main/TOT/usr.src/** 
if $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif
"set tags=./tags;/
"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>
" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
	  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	      \| exe "normal! g'\"" | endif
endif
"set rnu "sets the relative numbering in vim
"nmap <C-\>n :set relativenumber!<CR>
"nmap <C-\>l :set number!<CR>
set ignorecase smartcase
" Change the fore color of line numbers
highlight LineNr ctermfg=grey  
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=DarkRed ctermfg=white guibg=darkred guifg=white
set complete-=i  "autocomplete considers only the current file i.e. does not search in header files included in the code
set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
