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
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" Tab config
nnoremap <F1> <Nop>
inoremap <F1> <Nop>
nnoremap <F1> 1gt
inoremap <F1> <ESC>1gt
nnoremap <F2> 2gt
inoremap <F2> <ESC>2gt
nnoremap <F3> 3gt
inoremap <F3> <ESC>3gt
nnoremap <F4> 4gt
inoremap <F4> <ESC>4gt
nnoremap <F5> :tabm -1<CR>
nnoremap <F6> :tabm +1<CR>
nnoremap <F7> gT
nnoremap <F8> gt
inoremap <F7> <ESC>gT<CR>
inoremap <F8> <ESC>gt<CR>

" Cursor move
nnoremap <Enter> <Nop>
nnoremap <Enter> Gzz
nnoremap J <Nop>
nnoremap J <C-e>
nnoremap K <Nop>
nnoremap K <C-y>

" Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

