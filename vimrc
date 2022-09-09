
" Plugin Install
call plug#begin('~/.vim/plugged')
" Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-unimpaired'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()

" Trun off VI compatible
set nocompatible
syntax on
filetype plugin on
filetype indent on

" Trun on shipped plugins - matchit
packadd! matchit
set mps+=<:>

" My config
set wildmenu
set number relativenumber " Use hybrid line number, (absolute+relative)
set guioptions-=r
set guioptions-=L
set guioptions-=b
set nowrap
set fileformat=unix
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set fenc=utf-8
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set hlsearch
set foldmethod=indent " Code folding
set foldlevel=99
set wrap linebreak nolist " Automatically break long line
set signcolumn=yes " turn on signcolumn, for vim 8.0+
highlight clear SignColumn  " clear background color for signcolumn

" use spcae to fold code
nnoremap <space> za
" Link system clipboard and vim clipboard
set clipboard=unnamed
" Paste a code block from clipboard
nmap gcp o<Esc>"+p

" window switch shortcut
nnoremap <leader><Down> <C-W>j
nnoremap <leader><Up> <C-W>k
nnoremap <leader><Right> <C-W>l
nnoremap <leader><Left> <C-W>h

" Config for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

" Config quit buffer
nnoremap bd bdelete

" Config for nerdcommenter
" nmap <C-C> <leader>ci

" Config for vim-syntastic
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_python_checkers = ['pylint --ignore=E1101']
let g:syntastic_auto_jump = 2
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_mode_map = { "mode": "passive" }
highlight SyntasticErrorSign guifg=red
map <C-E> :SyntasticCheck pylint<CR>


