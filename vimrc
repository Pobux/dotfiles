" Fix snippets

:set mouse=a
map <Space> <Leader>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify' 
" Plug 'vim-scripts/DrawIt'
Plug 'scrooloose/syntastic'
" Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.com'
Plug 'Shougo/reunions.com'
call plug#end()

" commentary
map <C-_> <Plug>CommentaryLine
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Interface setup
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set incsearch
set nobackup
set noswapfile
syntax enable
colorscheme monokai
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1 }
let g:neocomplete#enable_at_startup = 1
let g:marching_clang_command = "/home/vertchapeau/clang+llvm-3.7.1-x86_64-linux-gnu-ubuntu-14.04/bin/clang"
let g:marching_enable_neocomplete = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" By file type
" c autoindent
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
inoremap ` ``<ESC>i
inoremap <C-l> <ESC>la
inoremap <C-d> <ESC>lxi
set timeoutlen=300
inoremap fj <Esc>l
inoremap jf <Esc>l

" Setting clipboard system to + and use c-v c-c (visual mode, y works fine
" tough)
set clipboard=unnamedplus
set pastetoggle=<F2>
inoremap <C-v> <F2><C-r>+<F2>
vnoremap <C-c> "+y

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

let NERDTreeDirArrows=0
nnoremap <C-m> :call NumberToggle()<cr>

" Trigger configuration. Do not use <tab> if you use YCM, but here YCM never works anyway

" yank to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file."
