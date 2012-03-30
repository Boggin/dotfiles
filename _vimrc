" pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" solarized
syntax enable
set background=dark
colorscheme solarized

" line numbers on
set number

" autoindent on
set autoindent

" fill tabs with spaces
set expandtab|retab

" stamp
nnoremap S diw"0P

" matchit
"au FileType html,eruby,rb,css,js,xml runtime! macros/matchit.vim
