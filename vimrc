" Fix snippets

:set mouse=a
map <Space> <Leader>
set nocompatible
filetype on
filetype indent on
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify' 
Plug 'vim-scripts/DrawIt'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'honza/vim-snippets'
" Plug 'MarcWeber/vim-addon-manager'
" Plug 'StanAngeloff/php.vim'
call plug#end()

" commentary
map <C-_> <Plug>CommentaryLine
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd filetype php set filetype=php.html

"Interface setup
set tabstop=4
set shiftwidth=4
set expandtab
set number
set incsearch
set nobackup
set noswapfile
syntax enable
colorscheme monokai

" By file type
" c autoindent
autocmd FileType c setlocal shiftwidth=2 tabstop=2

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf=0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
