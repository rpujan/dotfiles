syntax on
set noshowmode

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
" set nu
set relativenumber
set nowrap
set ignorecase

set smartcase
set noswapfile
set nobackup
" set undodir= .vim/undodir
set undofile
set incsearch
set encoding=utf-8
set signcolumn=yes


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/AppData/Local/nvim/plugged')
	Plug 'tpope/vim-fugitive'
	Plug 'mbbill/undotree'
	Plug 'preservim/nerdtree'
	Plug 'mattn/emmet-vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'preservim/nerdcommenter'
	Plug 'tpope/vim-commentary'
	Plug 'sheerun/vim-polyglot'
	Plug 'itchyny/lightline.vim'
	Plug 'unblevable/quick-scope'
	Plug 'mhinz/vim-startify'
call plug#end()

" colorscheme onehalflight
" let g:airline_theme='onehalfdark'

colorscheme onedark
let g:airline_theme='onedark'

" colorscheme gruvbox
" set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

function Mct()
  :read ~/.vim/templates/skeleton.cpp
endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

autocmd BufEnter *.c colorscheme PaperColor
autocmd BufEnter *.c set background=light
autocmd BufEnter *.cpp colorscheme PaperColor
autocmd BufEnter *.cpp set background=light

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

imap jj <Esc>

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


"----- emmet related ------

autocmd FileType html,css EmmetInstall

let g:user_emmet_expandabbr_key='<Tab>'

augroup EmmetSettings
  autocmd! FileType html,css imap <tab> <plug>(emmet-expand-abbr)
augroup END

"----- end emmet related ------

" How can I go to end of parenthesis/brackets/quotes without switching insert mode in Vim?
inoremap <C-e> <C-o>A


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" let g:neoterm_default_mod = 'belowright'

" Hitting F5 will clean out all railing whitespace or tabs in your file
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" When you’re in visual mode (that is, you have text selected), 
" hitting D will duplicate whatever’s selected directly below
vmap D y'>p

" https://www.reddit.com/r/vim/comments/gn7yv6/i_am_a_decent_programmer_but_vim_makes_a/fr9qbqy/?utm_source=share&utm_medium=web2x
