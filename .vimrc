syntax on

set hidden
set nobackup
set noswapfile
set nowritebackup
set noerrorbells
set hlsearch
set relativenumber
set cmdheight=2
set updatetime=300
set shortmess+=c
set clipboard=unnamed

highlight Comment ctermfg=green
colorscheme peachpuff

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mattn/emmet-vim'
Plug 'darfink/vim-plist'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/0.x'
  \ }
call plug#end()

let g:user_emmet_leader_key='<C-e>'

nnoremap <C-p> :Files<CR>
nmap <C-f> :Prettier<CR>
inoremap <silent><expr> <c-@> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
:nnoremap gF :!open <cfile><CR>
nmap <C-m> <Plug>MarkdownPreview

