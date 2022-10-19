"Source of main Plugin =>
"https://github.com/junegunn/vim-plug

syntax on

"Basic options
set number
set relativenumber
set mouse=a
set noerrorbells
set sw=4
set tabstop=4
set smartindent 
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set showmatch
set cursorline
set termguicolors

set colorcolumn=80
highlight ColoColumn ctermbg=0 guibg=lightgrey

"Plugins
call plug#begin('~/.vim/plugged')

"visual
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'abra/vim-obsidian'

Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'

"git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Funcionalidades
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'KabbAmine/vCoolor.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'vim-python/python-syntax'

Plug 'ddollar/nerdcommenter' 
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.vim', {'branch': 'release'}



call plug#end()

"Macros
let mapleader = " "

nmap <F5> :source ~/.vimrc<CR>
vmap <F5> :source ~/.vimrc<CR>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <leader>w :w<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :vertical resize +5<CR>
nnoremap <silent> <down> :vertical resize -5<CR>
nnoremap <leader>e :e $MYVIMRC<CR>

vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

"buffers
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>q :bdelete<CR>

nnoremap <leader>t :tabe<CR>
nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>

"fZf
let g:fzf_preview_window = 'right:40%'
nnoremap <c_p> :Files<CR>
nnoremap <c_g> :GitFiles<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

"NERDTree
let g:NERDTreeChDirMode = 2
map <F2> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

"devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"StatusBar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme ='tomorrow'

"signify
let g:signify_sign_add          = '+'
let g:signify_sign_delete          = '_'
let g:signify_sign_delete_first = '-'
let g:signify_sign_change          = '~'

let g:signify_show_count = 0
let g:signify_show_text = 1

"jump hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gK

"colours
highlight SignifySignAdd                  ctermbg=green                guibg=#00FF00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#FF0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#FFFF00

nnoremap / /a<DEL>

"triggers
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

"emmet
let g:user_emmet_leader_key='<C-Z>'

"easymotion
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

"Theme
set background=dark
let ayucolor="dark"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox





