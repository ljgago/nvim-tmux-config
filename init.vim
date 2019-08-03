" =====================================================================================================================
"
"   IMPORT PLUGINS
"
" =====================================================================================================================
"
" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')

" Git
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-git'

" Utils
Plug 'thaerkh/vim-workspace' " Save the session status
Plug 'junegunn/fzf', " { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim',
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs' " Autocomplete simbols
Plug 'jremmen/vim-ripgrep'
Plug 'majutsushi/tagbar'
" Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'
" Plug 'ryanoasis/vim-devicons'

" Code Syntax Integration
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go' ", { 'tag': '*' }
Plug 'cespare/vim-toml'
Plug 'w0rp/ale'
Plug 'rust-lang/rust.vim'
Plug 'chooh/brightscript.vim' 
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'bfrg/vim-cpp-modern'

" Powerline Color
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
Plug 'maximbaz/lightline-ale'

" Theme Color
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'

" Discord Rich Presence
" Plug 'anned20/vimsence'
" Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}

call plug#end()

" =====================================================================================================================
"
"   GENERAL NVIM CONFIG
"
" =====================================================================================================================
"
" General settings 
set title               " show the file name on terminal window.
set number              " show line numbers.
set mouse=a             " enable mouse interaction.
set history=1000        " increase history size.
set nowrap              " do not divide the line if it is long.
set cursorline          " show the current line.
set cursorcolumn        " show the cursor column
" set colorcolumn=120   " show the 120 character limit column


" Persist undo history between file editing sessions.
set undofile
set undodir=~/.config/nvim/undodir

" default identation
set tabstop=4       " tabs with 4 spaces
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab       " inserts spaces indest <Tab>s

" Clipboard, you need install xsel
set clipboard+=unnamedplus

" Search options
set ignorecase              " ignore uppercase in searches.
set smartcase               " do not ignore uppercase if the word contains uppercase.
set nostartofline           " hold the cursor position when changing buffer.
set hidden                  " allow buffer switching without saving
filetype plugin indent on


set spelllang=en,es             " spell check (english and spanish)
set encoding=UTF-8              " encodig utf-8
set backspace=indent,eol,start  " backspaceever work on insert mode

" Auto Open NERDtree
" autocmd vimenter * NERDTree

" AutoReload if a file is modified
set autoread
au FocusGained * :checktime  

let g:vue_disable_pre_processors=1

" Theme color settings
if (has("termguicolors"))
    set termguicolors       " enable true colors
endif

" Theme
set background=dark         " theme background light or dark
colorscheme one             " theme name
"let g:solarized_termcolors=256

" set showtabline=2          " always show tabline

" let g:deoplete#enable_at_startup = 1
" let g:tagbar_expand = 1

" Remap keys
nnoremap <C-Left> :bprevious<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <F2> :FZF<CR>
inoremap <F2> <Esc>:FZF<CR>
nnoremap <F3> :Buffers<CR>
inoremap <F3> <Esc>:Buffers<CR>
nnoremap <F4> :NERDTreeToggle<CR>
inoremap <F4> <Esc>:NERDTreeToggle<CR>
nnoremap <F5> :TagbarToggle<CR>
inoremap <F5> <Esc>:TagbarToggle<CR>

autocmd TermOpen term://* startinsert
