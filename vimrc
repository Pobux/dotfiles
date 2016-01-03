" TODO
" ctrl shift V after autodelete end of copying
" Fix snippets

:set mouse=a
map <Space> <Leader>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify' 
Plug 'vim-scripts/DrawIt'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
call plug#end()

" commentary
map <C-_> <Plug>CommentaryLine

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
inoremap < <><ESC>i
inoremap ` ``<ESC>i
inoremap <C-l> <ESC>la
inoremap <C-d> <ESC>lxi
set timeoutlen=300
inoremap fj <Esc>l
inoremap jf <Esc>l

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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 2

" yank to system clipboard
vmap <Leader>y "+y
nmap <Leader>yy "+yy

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file."
