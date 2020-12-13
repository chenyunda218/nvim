" Leader
let mapleader=";"
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt

let g:python3_host_prog = '/usr/local/bin/python3'

" Terminal map
tnoremap <Esc> <C-\><C-n>
nnoremap ter :tabnew<CR>:terminal<CR>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'

call plug#end()

set number

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Tab config
nnoremap <Left> <Nop>
nnoremap <Left> gT
nnoremap <Right> <Nop>
nnoremap <Right> gt
nnoremap <S-Right> :tabm +1<CR>
nnoremap <S-Left> :tabm -1<CR>

" Cursor move
nnoremap <Enter> <Nop>
nnoremap <Enter> Gzz
nnoremap J <Nop>
nnoremap J <C-e>j
nnoremap K <Nop>
nnoremap K <C-y>k
nnoremap H <Nop>

" Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

