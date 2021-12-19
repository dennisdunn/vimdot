set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/plugged/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'kovisoft/slimv'

call vundle#end()
filetype plugin indent on

set nu     " Enable line numbers
syntax on  " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4

" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4

" Use spaces when tabbing
set expandtab

set incsearch  " Enable incremental search

set hlsearch   " Enable highlight search

set termwinsize=12x0   " Set terminal size

set splitbelow         " Always split below

set mouse=a            " Enable mouse drag on window splits

set background=dark   " dark or light
colorscheme slate " Your favorite color scheme's name
"let g:airline_theme = 'default'

" NERDTree configuration

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 0      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>

let g:slimv_lisp = '/usr/bin/sbcl'

"let g:slimv_swank_cmd = '! xterm -e /usr/bin/sbcl --load /usr/share/common-lisp/source/slime/start-swank.lisp &'

" Start NERDTree 
autocmd VimEnter * NERDTree 

" Treat .asd files as .lisp files
au BufReadPost *.asd set syntax=lisp
au BufReadPost *.asd set lisp
