syntax on

set hidden
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
" set undodir= .vim/undodir
" set undofile
set incsearch
"
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L\ TIME:\ %{strftime('%c')}

" set guifont=Consolas:h16
set fileformat=unix

call plug#begin('.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme onehalfdark

imap jj <Esc>

autocmd filetype cpp nnoremap <C-c> :w <bar> !clear && g++ -std=gnu++11 -O2 % -o %:p:h/%:t:r.exe && %:r.exe<CR>

