call plug#begin('~/.vim/plugged')
  Plug 'rust-lang/rust.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax on

set number
set statusline=2
set noshowmode
set hlsearch
set incsearch
set cursorline
set showcmd	" show the number of characters in selection in visual mode

let g:rustfmt_autosave = 1

set updatetime=300

set t_Co=256

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


let g:lightline = {
      \ 'colorscheme': 'wombat'
      \ }

colorscheme wombat256mod
