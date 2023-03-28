"Name: VimRC

"TODO
" * Add configs for 'YouCompleteMe' Addon
" * Fix the painfully slow  and choppy vim editor in the mac term
" * Templates for C and Rust
" * Add undotree button once choppiness is fixed
" * Git push plz

set nocompatible
set noswapfile
syntax on

"--Vim Presets--
set autoindent
set smartindent
set smarttab
set incsearch
set expandtab
set hlsearch
set ignorecase "Ignores capitilization from search
set lazyredraw
set linebreak "doesnt make lines go across window
set nomodeline
set laststatus=2
set backspace=indent,eol,start
set noerrorbells
set vb t_vb=
set splitbelow
set termwinsize=10x0
set relativenumber
" Make terminal open below file, terminal size 10x0

"---Plugins---
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' "Colorscheme
Plug 'preservim/nerdtree' "File finder
Plug 'vim-airline/vim-airline' "aesthetic core uwu
Plug 'vim-airline/vim-airline-themes' "Aesthetic core uwu pt.2
Plug 'frazrepo/vim-rainbow' "Helps find brackets and stuff
Plug 'lervag/vimtex'

call plug#end()

"--Colorscheme aesthetic stuff--
colorscheme gruvbox
set background=dark
let g:lightline = {
                        \ 'colorscheme': 'gruvbox',
                        \ }


"----Basic Key Bindings----
let g:mapleader = "'"
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>g <c-w>v <CR>

nnoremap <leader>t :term <CR>

inoremap jj <esc>
vnoremap jj <esc>

nnoremap <leader>a :NERDTreeToggle<CR>

"Disable/Enable auto-comment
nmap <leader>c :setlocal formatoptions-=cro<CR>
nmap <leader>C :setlocal formatoptions=cro<CR>

" compile file in vim editor
nnoremap <c-j> :!javac % && java %:r  <CR>
nnoremap <c-p> <CR> :!clear;python3 % <CR>


"---- Java development ----
autocmd BufNewFile *.java 0r ~/.vim/templates/java.skel

nnoremap <leader>F :Autoformat<CR>


