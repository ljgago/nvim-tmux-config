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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/vimfiler.vim'
" Plug 'ryanoasis/vim-devicons'

" Code Syntax Integration
" c++
Plug 'bfrg/vim-cpp-modern'
" go
Plug 'fatih/vim-go' ", { 'tag': '*' }
" javascript
Plug 'pangloss/vim-javascript'
" typescrypt
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'othree/yajs.vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components'

" rust
Plug 'rust-lang/rust.vim'
" toml
Plug 'cespare/vim-toml'
" vue
Plug 'posva/vim-vue'

" Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'chooh/brightscript.vim' 

" Powerline Color
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'
Plug 'maximbaz/lightline-ale'

" Theme Color
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'trevordmiller/nova-vim'

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
set title                   " show the file name on terminal window.
set number                  " show line numbers.
set mouse=a                 " enable mouse interaction.
set history=1000            " increase history size.
set nowrap                  " do not divide the line if it is long.
set cursorline              " show the current line.
set cursorcolumn            " show the cursor column
" set wildmode=longest:full
" set wildmenu                " enchanced command line completion
" set wildmode=list:full      " complete files like a shell

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
" set clipboard+=unnamedplus

" Search options
set ignorecase              " ignore uppercase in searches.
set smartcase               " do not ignore uppercase if the word contains uppercase.
set nostartofline           " hold the cursor position when changing buffer.
set hidden                  " allow buffer switching without saving
filetype plugin indent on


set spelllang=en,es             " spell check (english and spanish)
set encoding=UTF-8              " encodig utf-8
set backspace=indent,eol,start  " backspaceever work on insert mode
" JSON disable hide quites

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
set pyxversion=3

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

" if &wildoptions =~ "pum"
"    cnoremap <expr> <up> pumvisible() ? "<C-p>" : "\\<up>"
"    cnoremap <expr> <down> pumvisible() ? "<C-n>" : "\\<down>"
"endif


autocmd TermOpen term://* startinsert

