" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.

if has("syntax")
  syntax on
endif

highlight SpellBad term=reverse ctermbg=1
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

call pathogen#infect() 

"set t_Co=256
"set t_Co=88
syntax enable
set background=dark
colorscheme solarized

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
" tab settings
set ts=4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"moke things better
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"relativenumber
"set undofile
set noswapfile
set nobackup
set nowritebackup
let mapleader = ","
nmap <leader>cd :execute "cd" expand("%:h")<CR>
"make more easy search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %

setlocal spell spelllang=en
"deal with long line
set wrap
"set textwidth=79
set formatoptions=qrn1

set guifont=Monaco:h12

"set colorcolumn=85
"show invisible character
"maximum window at startup
function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
"fobid arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
map <C-UP> <C-W>-   
map <C-DOWN> <C-W>+   
map <C-LEFT> <C-W><   
map <C-RIGHT> <C-W>>
nnoremap ; :
"quick escaping
"inoremap jj <ESC>
"save on lose focus
au FocusLost * :wa
"auto format xml file
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
"working with split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"set mouse enable
set mouse=a
"NERDTRee
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
"Zencoding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1
"Taglist
let Tlist_Use_Right_Window=1
set tags=tags;/
"Molokkai theme
let g:molokai_original = 1
nnoremap <silent> <leader>l :Tlist<CR>
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set number
