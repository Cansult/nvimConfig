syntax off " 与treesitter冲突
filetype on
colorscheme slate
set cursorline
set linebreak
set foldenable
set nu
set showcmd

set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
set list
set listchars=tab:>~,trail:.

set langmenu=zh_CN.UTF-8
set helplang=cn
set autowrite
set mouse=a
set nocompatible
set nobackup
set autochdir
set hlsearch
set incsearch
set backspace=indent,eol,start
"set guifont=consolas:h13
"set guioptions-=m
"set guioptions-=T
set termguicolors

" set fillchars+=vert:\ 
hi vertsplit guifg=fg guibg=bg
hi NvimTreeNormal guibg=bg
hi NvimTreeNormalFloat guibg=bg
" highlight Normal ctermfg=252 ctermbg=none

let g:airline#extensions#tabline#enabled = 1

map <F9> : ! g++ % -o %< -std=c++17 -g -Wall -Wextra -Wconversion && size %< <CR>
map <F8> : ! ./%< <CR>
map <F5> : ! lldb %< <CR>
map <C-CR> : NvimTreeToggle <CR>


call plug#begin()
"  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
"  Plug 'luochen1990/rainbow'
"  与treesitter冲突
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'sindrets/diffview.nvim'
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
"  Plug 'ryanoasis/vim-devicons' Icons without colours
"  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"  Plug 'simnalamburt/vim-mundo'
"  Plug 'famiu/bufdelete.nvim'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'HiPhish/rainbow-delimiters.nvim'
call plug#end()

:augroup cprograms
:   autocmd VimEnter * if !argc() | NvimTreeOpen | endif
":   autocmd VimEnter * TSEnable highlight
":   autocmd VimEnter * NvimTreeOpen | wincmd p
":   autocmd VimEnter * NvimTreeOpen
":   autocmd VimEnter * wincmd p
":   autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
":   autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
":   autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
:augroup END

source ~/.config/nvim/vim/cocConfig.vim

lua require("treesitterConfig")
lua require("NvimTreeConfig")

lua print("Done")