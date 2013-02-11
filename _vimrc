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
Bundle 'tpope/vim-fugitive'
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

" highlight search
set hlsearch

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

" cs folding
" Folding : http://vim.wikia.com/wiki/Syntax-based_folding, see comment by Ostrygen
au FileType cs set omnifunc=syntaxcomplete#Complete
au FileType cs set foldmethod=marker
au FileType cs set foldmarker={,}
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
au FileType cs set foldlevelstart=2

" temp directories
set backupdir=C:\Temp\vim\
set directory=C:\Temp\vim\

" remove trailing whitespace
autocmd FileType cs autocmd BufWritePre <buffer> :%s/\s\+$//e

" highlight whitespace
highlight ExtraWhitespace ctermbg=DarkYellow guibg=DarkYellow
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

autocmd InsertEnter * syntax match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * syntax match ExtraWhitespace /\s\+$/

"statusline setup
set statusline =%#identifier#
set statusline+=[%t]    "tail of the filename
set statusline+=%*

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype

"read only flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"modified flag
set statusline+=%#identifier#
set statusline+=%m
set statusline+=%*

set statusline+=%{fugitive#statusline()}

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2

set list
set listchars=tab:¬·,trail:·,nbsp:·


