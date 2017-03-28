set nocompatible
filetype off

set rtp+=~/.vim/plugins/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-commentary'

call vundle#end()

filetype plugin indent on

" PLUGIN CONFIGS
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = 'node_modules/\|build\|DS_Store\|bundle\|lib\|dist'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_max_files = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='dracula'
set laststatus=2
set ttimeoutlen=50

" MAPPINGS

let mapleader=";"
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap gb gT
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" GENERAL SETTINGS

set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile
set incsearch
set ignorecase
set smartcase
set number
set backspace=2
set nowrap
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set hidden
set mouse=a

" COLORS
set background=dark
colorscheme dracula
if has("termguicolors")
  set termguicolors
endif
let g:quantum_black = 1

autocmd BufWritePre *.js :%s/\s\+$//e

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
syntax on
syntax enable
