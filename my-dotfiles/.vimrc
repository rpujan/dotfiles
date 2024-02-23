"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

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

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" General
" Plug 'kyazdani42/nvim-web-devicons'              " Devicons
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
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

Plug 'ap/vim-css-color'                 " CSS Color Preview
Plug 'preservim/tagbar'                 " Tagbar for code navigation
Plug 'tpope/vim-commentary'             " For Commenting gcc & gc

Plug 'preservim/nerdtree'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'OmniSharp/omnisharp-vim'        " C# ability
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
" colorscheme everforest
" colorscheme nibble " Dos like theme
" colorscheme fairyfloss
colorscheme catppuccin_mocha
" Insert a newline without entering in insert mode
nmap oo o<Esc>k
nmap OO O<Esc>j

nmap <F8> :TagbarToggle<CR>

" nmap n :m +1<CR>
" nmap m :m -2<CR>

" NERDTree mapping
map <F2> :NERDTreeToggle<CR>
map <C-Right> :tabn<CR>
map <C-Left> :tabp<CR>

imap jj <Esc>

" autocmd BufEnter * colorscheme default
" autocmd BufEnter *.c colorscheme borland 
" autocmd BufEnter *.cpp colorscheme borland 
" autocmd BufEnter *.py colorscheme fairyfloss 

let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise


" I hate it when I hit left (or h) and my screen flickers.  
" I want it to go up to the next line. Ditto fir right (or l).  
" Below are two functions / mappings to help with that.  
" I'm pretty sure that if you remove the <silent>, then it will work in 

nnoremap <silent> <Left>  :call WrapLeft()<cr>
nnoremap <silent> <Right> :call WrapRight()<cr>

nnoremap <silent> h       :call WrapLeft()<cr>
nnoremap <silent> l       :call WrapRight()<cr>

function! WrapLeft()
    let col = col(".")
    
    if 1 == col
        " don't wrap if we're on the first line
        if 1 == line(".")
            return
        endif
        normal! k$
    else
        normal! h
    endif
endfunction

function! WrapRight()
    let col = col(".")
    if 1 != col("$")
        let col = col + 1
    endif
        
    if col("$") == col
        " don't wrap if we're on the last line
        if line("$") == line(".")
            return
        endif
        normal! j1|
    else
        normal! l
    endif
endfunction
