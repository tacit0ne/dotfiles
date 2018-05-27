set nocompatible	" required
filetype off		" required

" seriously
set paste

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Preview docstring for folded functions and classes
let g:SimpylFold_docstring_preview=1

" PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 | 
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 | 
    \ set expandtab | 
    \ set autoindent | 
    \ set fileformat=unix |
    \ set nu

" Full stack indentation
au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2 | 
	\ set softtabstop=2 | 
	\ set shiftwidth=2

" Explicitly set Vim to work with UTF-8
set encoding=utf-8

" Customizations for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Start up NERDTree automatically when Vim starts
""autocmd vimenter * NERDTree

" Start up NERDTree automatically when Vim starts if no file was specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older version of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
