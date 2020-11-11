" Don't try to be vi compatible
set nocompatible

" Enable mouse 
set mouse=a
" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Add your plugins below this line
Plugin 'frazrepo/vim-rainbow'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'powerline/powerline'
Plugin 'davidhalter/jedi-vim'
Plugin 'indentpython.vim'
Plugin 'hdima/python-syntax'
Plugin 'lyuts/vim-rtags'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line

call vundle#end()

filetype plugin indent on

" Enable Rainbow Parenthesis Globally
let g:rainbow_active = 1

" Incremental search 
set incsearch 

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
"filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=80
"set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set smartindent 
set nu

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap Key Bindings.

"Save and run python scripts
nnoremap  <F1> :w !python <CR>

"Save|Quit script
nnoremap <F2> :wq <CR>

"Save Script
nnoremap <F3> :w <CR>

"Quit VIM
nnoremap <F4> :q <CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized
