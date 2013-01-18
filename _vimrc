set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles 
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

" solarized
syntax enable
set background=light
colorscheme solarized

" line numbers on
set number

" autoindent on
set autoindent

" fill tabs with spaces
set expandtab|retab

" no tabs
set hidden

" stamp
nnoremap S diw"0P

" zen coding
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

" FuzzyFinder
nnoremap <Leader>f :FufCoverageFile<CR> ":FufFileWithCurrentBufferDir<CR>
nnoremap <Leader>b :FufBuffer<CR>
nnoremap <Leader>t :FufTaggedFile<CR>

" NERDTree
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" NERDTreeFind
nnoremap <silent> <Leader>nf :NERDTreeFind<CR>

" Setup VS.NET to autoload changes (Tools > Options > Environment > Documents)
set autoread

" Open in VS.NET from Vim
:cabbrev vsedit :!"C:\Program Files\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe" /edit "%"

" http://arun.wordpress.com/tag/csharp/
set tag=C:\mytagfile

" temp directories
set backupdir=C:\Temp\vim\
set directory=C:\Temp\vim\

