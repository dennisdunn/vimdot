" SETTINGS --------------------------------------------------------------- {{{

set nocompatible

filetype on

filetype indent on

filetype plugin on

set nu     " Enable line numbers

syntax on  " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4

" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4

" Use spaces when tabbing
set expandtab

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set incsearch  " Enable incremental search

set hlsearch   " Enable highlight search

set termwinsize=12x0   " Set terminal size

set splitbelow         " Always split below

set mouse=a            " Enable mouse drag on window splits

" set background=dark   " dark or light

" colorscheme monokai-phoenix " Your favorite color scheme's name

" Treat .asd files as .lisp files 
au BufReadPost *.asd set syntax=lisp
au BufReadPost *.asd set lisp

" Rainvbow parens
let g:lisp_rainbow=1

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
"
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" }}}

" PLUGINS ---------------------------------------------------------------- {{{

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
Plugin 'ryanoasis/vim-devicons'
Plugin 'kovisoft/slimv'

call vundle#end()

" }}}

" NERDTree --------------------------------------------------------------- {{{

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 0      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

nmap <F2> :NERDTreeToggle<CR>
inoremap jj <esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" }}}

" SLIMV --------------------------------------------------------------- {{{

let g:slimv_lisp = '/opt/homebrew/bin/sbcl'
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/plugged/slimv/slime/start-swank.lisp\""'

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

