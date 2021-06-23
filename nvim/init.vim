" ------
" REMAPS
" -------

:imap fd <Esc>

noremap <SPACE> <Nop>
let mapleader = " "


nmap <leader>w <C-w>
nnoremap <silent> <Esc> <Esc>:noh<CR>

" --------------
" SECTION PLUGINS
" --------------
call plug#begin()


Plug 'itchyny/lightline.vim'

Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'


Plug 'chriskempson/base16-vim'
Plug 'mohretz/gruvbox'
Plug 'doums/darcula'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'


call plug#end()


" -----------------
" SETTINGS SECTION
" -----------------


" --------------
" APPEARANCE
" --------------

set number

set background=dark

" enable true colors
set termguicolors

" turn off vim background color (both in term and gui) (windows terminal works on guibg apparently)
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE


" colorscheme gruvbox
" colorscheme darcula
colorscheme base16-gruvbox-dark-hard


" lightline themes
" let g:lightline = { 'colorscheme': 'darculaOriginal' }
let g:lightline = { 'colorscheme': 'powerline' }


" neovide specific
let g:neovide_cursor_vfx_mode = 'railgun'





" --------------
" COMPLETIONS
" --------------

set completeopt=longest,noselect,menuone,noinsert

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" ---------------------
" SECTION PLUGIN CONFIG
" ----------------------

" ---------------
" RUST CONFIG
" ----------------

syntax enable
filetype plugin indent on

nmap <leader>r :RustRun<CR>



" Enable type inlay hints (doesnt work without without enabling LS)
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }






