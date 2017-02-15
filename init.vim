" Put this file in ~/.config/nvim/

call plug#begin('~/.vim/plugged')

Plug 'jalvesaq/Nvim-R'
Plug 'flazz/vim-colorschemes'
Plug 'chrisbra/csv.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jpalardy/vim-slime'
Plug 'vim-syntastic/syntastic'
Plug 'zchee/deoplete-jedi'

call plug#end()

" Minimum required configuration:
set nocompatible
syntax on
filetype plugin on
filetype indent on

" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"

" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

" The lines below are suggestions for Vim in general and are not
" specific to the improvement of Nvim-R.

" Highlight the last searched pattern:
set hlsearch

" Show where the next pattern is as you type it:
set incsearch

" Line numbers
set number

" Map magrittr pipe operator to >
autocmd FileType r inoremap <buffer> <M->> <Esc>:normal! a %>%<CR>a
autocmd FileType rnoweb inoremap <buffer> > <Esc>:normal! a %>%<CR>a
autocmd FileType rmd inoremap <buffer> > <Esc>:normal! a %>%<CR>a

let R_vsplit = 1
let R_assign_map = "<M-->"

let g:slime_target = "tmux"

let g:python_host_prog = "/usr/bin/python"
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1

let g:gruvbox_italic=1
let g:gruvbox_bold=1
colorscheme gruvbox

set background=dark
set termguicolors
