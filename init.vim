call plug#begin()

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" nvim-autopaurs
Plug 'windwp/nvim-autopairs'

" themes
Plug 'navarasu/onedark.nvim'
Plug 'NLKNguyen/papercolor-theme'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

" lsp-config
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

" nvim-cmp
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lua'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'onsails/lspkind.nvim'

" tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Gitgutter
Plug 'airblade/vim-gitgutter'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'ldelossa/nvim-dap-projects'
Plug 'theHamsta/nvim-dap-virtual-text'

call plug#end()

let mapleader=" "

syntax on
lua require("init")


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

set background=light

" disable mouse
set mouse=

lua << EOF
require("lualine").hide({ unhide = true })
EOF
