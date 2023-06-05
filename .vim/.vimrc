" --- General 

let mapleader = " "

set termguicolors
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
set encoding=UTF-8

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" General
" Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'nvim-tree/nvim-web-devicons'                 " icons for Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Color scheme

" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

" Theme
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'    " Retro Scheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'cmoscofian/nibble-vim'

Plug 'ap/vim-css-color'                 " CSS Color Preview
Plug 'preservim/tagbar'                 " Tagbar for code navigation
Plug 'tpope/vim-commentary'             " For Commenting gcc & gc

Plug 'preservim/nerdtree'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'OmniSharp/omnisharp-vim'          " C# ability
Plug 'sheerun/vim-polyglot'				" A collection of language packs for Vim
" Always be the last
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'           " vim dev icons

call plug#end()

" --- Colors
set background=dark
set termguicolors
" colorscheme tokyonight
" color gruvbox-material
colorscheme everforest
" colorscheme nibble " Dos like theme
" colorscheme fairyfloss

" Insert a newline without entering in insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

nmap <F8> :TagbarToggle<CR>

nmap n :m +1<CR>
nmap m :m -2<CR>

" NERDTree mapping
map <F2> :NERDTreeToggle<CR>
map <C-Right> :tabn<CR>
map <C-Left> :tabp<CR>

imap jj <Esc>
