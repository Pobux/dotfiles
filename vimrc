let mapleader = " "
map <Space> <Leader>

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

nnoremap <C-d> :NERDTreeToggle<CR>

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

nnoremap <C-n> :call NumberToggle()<cr>

" ------------------------------------------------------------------------- }}}
" Useful functions -------------------------------------------------------- {{{
let NERDTreeDirArrows=0

" yank / paste from the clipboard ------------------------------------------ {{{

" enable copy/paste on Mac OSX and tmux (see also notes/macosx.notes)
set clipboard=unnamed

" toggle (no)paste before pasting from the clipboard
" Reference: http://tilvim.com/2014/03/18/a-better-paste.html
nnoremap <Leader>p :set paste<CR>"*]p:set nopaste<cr>

" yank to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy

