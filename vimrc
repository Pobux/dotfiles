let mapleader = " "
map <Space> <Leader>
:set mouse=a
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify' 
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/DrawIt'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-vinegar'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'Valloric/YouCompleteMe', { 'for': 'cpp', 'do': './install.py' }
autocmd! User YouCompleteMe call youcompleteme#Enable()
call plug#end()

" commentary
nmap <space>c <Plug>CommentaryLine

"Interface setup
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax enable
colorscheme monokai
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1 }

" By file type
autocmd FileType c setlocal shiftwidth=2 tabstop=2
" Remap
" add tab
nnoremap gn :tabnew<CR>
" Move the tab to the right
nnoremap <leader>mt :tabmove +1<CR>
" Move the tab to the
nnoremap <leader>mT :tabmove -1<CR>
" Close a tab
nnoremap gc :tabclose<CR>
"Simple navigating in windows
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
" Insert mode remap
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap < <><ESC>i
inoremap ` ``<ESC>i
inoremap <C-l> <ESC>la
inoremap <C-d> <ESC>lxi
set timeoutlen=300
inoremap fj <Esc>l
inoremap jf <Esc>l

nnoremap <C-n> :NERDTreeToggle<CR>

" Autoreload
augroup reload_vimrc " {
     au!
     autocmd!
     autocmd BufWritePost $MYVIMRC source $MYVIMRC   
augroup END " }

"Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-m> :call NumberToggle()<cr>

" ------------------------------------------------------------------------- }}}
" Useful functions -------------------------------------------------------- {{{
let NERDTreeDirArrows=0

" yank to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy
 
" Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 2

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file."
