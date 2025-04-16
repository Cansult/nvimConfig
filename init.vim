syntax off " 与treesitter冲突
filetype on
filetype plugin on
"colorscheme slate
colorscheme habamax
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

set t_SI=[6\ q
set t_SR=[4\ q
set t_EI=[2\ q

filetype indent on

"let g:minimap_width = 25
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1

" set fillchars+=vert:\ 
hi vertsplit guifg=fg guibg=bg
hi NvimTreeNormal guibg=bg
hi NvimTreeNormalFloat guibg=bg
" highlight Normal ctermfg=252 ctermbg=none

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'
let g:autopep8_enable_autoindent = 1

map <F9> : ! g++ % -o %< -std=c++17 -g -Wall -Wextra -Wconversion && size %< <CR>
map <F8> : ! ./%< <CR>
" map <F7> :Autopep8<CR>
nmap <F6> :TagbarToggle<CR>
map <F5> : ! lldb %< <CR>
map <F7> : NvimTreeToggle <CR>

"我怀疑有个插件有bug，在没有右括号的时候回车不会缩进，还是加上括号补全吧
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap { {<CR>}<ESC>kA
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i

autocmd FileType go setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType gowork setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType gomod setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType gosum setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType cpp setlocal tabstop=2 | setlocal shiftwidth=2 | setlocal softtabstop=2 | setlocal expandtab
autocmd FileType python setlocal tabstop=4 | setlocal shiftwidth=4 | setlocal softtabstop=4 | setlocal expandtab
autocmd FileType rust setlocal tabstop=4 | setlocal shiftwidth=4 | setlocal softtabstop=4 | setlocal expandtab

" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ft <cmd>Telescope treesitter<cr>
nnoremap <leader>fc <cmd>Telescope tags<cr>

call plug#begin('~/.config/nvim/plugDownloads')
"  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
"  Plug 'luochen1990/rainbow'
"  与treesitter冲突
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'sindrets/diffview.nvim'
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  Plug 'elzr/vim-json'
"  Plug 'ryanoasis/vim-devicons' Icons without colours
"  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"  Plug 'simnalamburt/vim-mundo'
"  Plug 'famiu/bufdelete.nvim'
  Plug 'nvim-tree/nvim-tree.lua'
  Plug 'HiPhish/rainbow-delimiters.nvim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'preservim/tagbar'
  Plug 'tell-k/vim-autopep8'
  Plug 'tpope/vim-fugitive'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'vim-scripts/sh.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
"  Plug 'python-mode/python-mode'
"  Plug 'google/vim-maktaba'
"  Plug 'bazelbuild/vim-bazel'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
call plug#end()

:augroup NVT
  autocmd VimEnter * NvimTreeToggle
  autocmd VimEnter ?* NvimTreeToggle
" 非常神奇 其他的方法都行不通
"  autocmd StdinReadPre * let s:std_in=1
"  autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NvimTreeOpen | endif
"  autocmd VimEnter * if !bufexists(0) | NvimTreeOpen | endif
"  autocmd VimEnter * if argc() != 0 | NvimTreeToggle | endif
"  autocmd VimEnter * if argc() == 0 | echo "gg" | endif
"  autocmd VimEnter * if argc() == 0 | NvimTreeOpen | endif
"  autocmd VimEnter * TSEnable highlight
"  autocmd VimEnter * NvimTreeOpen | wincmd p
"  autocmd VimEnter * NvimTreeOpen
"  autocmd VimEnter * wincmd p
"  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"  autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"  autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
:augroup END

source ~/.config/nvim/vim/cocConfig.vim

lua require("treesitterConfig")
lua require("NvimTreeConfig")

lua << EOF
require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
--[[
require'lspconfig'.clangd.setup{
  cmd = { "clangd", "--background-index" },  -- clangd 的启动命令
  filetypes = { "c", "cpp", "objc", "objcpp" },  -- 支持的文件类型
  root_dir = require('lspconfig').util.root_pattern(".git", "compile_commands.json", "CMakeLists.txt"),  -- 项目根目录判断
}
]]--
EOF

lua << EOF
-- Lua 代码开始
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rust", "python" },  -- 只在 Rust 和 Python 文件中生效
    callback = function()
        -- 配置 ibl 插件
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        local hooks = require("ibl.hooks")

        -- 创建高亮组并在 colorscheme 改变时重新设置
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { bg = "#2E1E20" })      -- 灰色红色
            vim.api.nvim_set_hl(0, "RainbowYellow", { bg = "#35302D" })    -- 灰色黄色
            vim.api.nvim_set_hl(0, "RainbowBlue", { bg = "#121823" })      -- 灰色蓝色
            vim.api.nvim_set_hl(0, "RainbowOrange", { bg = "#342727" })    -- 灰色橙色
            vim.api.nvim_set_hl(0, "RainbowGreen", { bg = "#4C5632" })     -- 灰色绿色
            vim.api.nvim_set_hl(0, "RainbowViolet", { bg = "#5F59A9" })    -- 灰色紫色
            vim.api.nvim_set_hl(0, "RainbowCyan", { bg = "#2F473D" })      -- 灰色青色
        end)

        -- 配置 ibl 插件
        require("ibl").setup {
            indent = {
                highlight = highlight,
                char = "",  -- 移除显示的字符，只保留背景色
            },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
            scope = {
                enabled = false,
            },
        }
    end,
})
EOF

lua print("Done")
