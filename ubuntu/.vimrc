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
" set cmdheight=2
set laststatus=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L\ TIME:\ %{strftime('%c')}

set fileformat=unix

call plug#begin('~/.vim/plugged')

  Plug 'tpope/vim-fugitive'
  Plug 'mbbill/undotree'
  Plug 'preservim/nerdtree'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-commentary'
  Plug 'sheerun/vim-polyglot'
  Plug 'itchyny/lightline.vim'
  Plug 'unblevable/quick-scope'
  Plug 'mhinz/vim-startify'

call plug#end()

colorscheme onehalfdark
let g:airline_theme = 'onehalfdark'

imap jj <Esc>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
      
autocmd filetype cpp nnoremap <C-c> :w <bar> !clear && g++ -std=gnu++11 -O2 % -o %:p:h/%:t:r.exe && %:r.exe<CR>

