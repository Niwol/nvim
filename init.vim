
call plug#begin()

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" nvim-cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" nvim-autopairs
Plug 'windwp/nvim-autopairs'

" nvim-lspconfig
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" GLSL support
Plug 'tikhomirov/vim-glsl'

" Themes
Plug 'olimorris/onedarkpro.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'Mofiqul/dracula.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Vim be good
Plug 'ThePrimeagen/vim-be-good'

" Rust tools
Plug 'simrat39/rust-tools.nvim'

" Vimtex
Plug 'lervag/vimtex'

" Gitgutter
Plug 'airblade/vim-gitgutter'

call plug#end()

let mapleader=" "


" Vimtex config
filetype plugin indent on
syntax enable


lua require("init")

syntax on

filetype plugin on
filetype indent on

set fillchars+=vert:\|
set nocompatible
set encoding=utf-8
set hidden
set smartcase
set scrolloff=8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80

set clipboard+=unnamedplus

set noshowmode
set laststatus=1
set wildmenu

set number
set relativenumber

set splitright
set splitbelow

" disable mouse
set mouse=



" terminal
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>ct :terminal<CR>
nnoremap <leader>t :buffer term<CR>

" GLSL
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

lua << EOF
require('lualine').hide({unhide=true})
EOF
