" --- General 

let mapleader = " "

set termguicolors
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/AppData/Local/nvim/plugged')

" General
Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Color scheme

" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Theme
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'    " Retro Scheme

Plug 'ap/vim-css-color'                 " CSS Color Preview
Plug 'preservim/tagbar'                 " Tagbar for code navigation
Plug 'ryanoasis/vim-devicons'           " Developer Icons
Plug 'tpope/vim-commentary'             " For Commenting gcc & gc

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" --- Colors
set background=dark
set termguicolors
" colorscheme tokyonight
color gruvbox-material

" Insert a newline without entering in insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

nmap <F8> :TagbarToggle<CR>

imap jj <Esc>