set nocompatible

set number

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-scripts/c.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-syntastic/syntastic'

Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

syntax on
set background=dark
colorscheme gruvbox

autocmd VimEnter * NERDTree
autocmd StdinreadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=15

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamedplus

"Allowing mouse
set mouse=a

"Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"Quick quit command
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

"easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

"make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

let g:powerline_pycmd = "py3"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set encoding=utf-8

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
