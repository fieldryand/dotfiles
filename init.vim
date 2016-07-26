call plug#begin('~/.vim/plugged')

Plug 'jalvesaq/Nvim-R'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

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

" By default, Vim indents code by 8 spaces. Most people prefer 4
" spaces:
set sw=4

" Search "vim colorscheme 256" in the internet and download color
" schemes that supports 256 colors in the terminal emulator. Then,
" uncomment the code below to set you color scheme:
colorscheme southernlights

" Line numbers
set number

