:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set fileformat=unix
:set softtabstop=4
:set mouse=a
:set showcmd            
:set showmatch          
:set ignorecase         
:set smartcase          
:set foldmethod=indent
:set foldlevel=99
:set encoding=utf-8
syntax enable

let mapleader = ' '
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()

source ~/.config/nvim/plug-config/nerdtree-config.vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/tagbar-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua

"LSP language support
luafile ~/.config/nvim/lsp-config/python-lsp.lua
luafile ~/.config/nvim/lsp-config/php-lsp.lua
let g:multi_cursor_start_word_key = '<C-d>'
let g:multi_cursor_next_key       = '<C-d>'

if (has("termguicolors"))
    set termguicolors
endif

color deep-space
