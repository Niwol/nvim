
call plug#begin()

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" minimap
Plug 'wfxr/minimap.vim'

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

" One Dark themes
Plug 'olimorris/onedarkpro.nvim'
Plug 'navarasu/onedark.nvim'

" lualine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

lua require("init")

" minimap options
let g:minimap_width = 10
" let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1


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
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set splitright
set splitbelow

let mapleader=" "


" terminal
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>ct :terminal<CR>
nnoremap <leader>t :buffer term<CR>

