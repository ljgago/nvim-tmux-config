" =====================================================================================================================
"
"   IMPORT PLUGINS
"
" =====================================================================================================================
"
" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')
source ~/.config/nvim/plug.vim
call plug#end()

" =====================================================================================================================
"
"   GENERAL NVIM CONFIG
"
" =====================================================================================================================
"
" general settings
set title                           " show the file name on terminal window.
set number                          " show line numbers.
set mouse=a                         " enable mouse interaction.
set history=1000                    " increase history size.
set nowrap                          " do not divide the line if it is long.
set cursorline                      " show the current line.
" set cursorcolumn                    " show the cursor column.
set synmaxcol=160

" default identation
set tabstop=2                       " tabs with 4 spaces.
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab                       " inserts spaces indest <Tab>s.

" persist undo history between
" file editing sessions.
set undofile
set undodir=~/.config/nvim/undodir

" autoReload if a file is modified
set autoread
au FocusGained * :checktime

" search options
set ignorecase                      " ignore uppercase in searches.
set smartcase                       " do not ignore uppercase if the word contains uppercase.
set nostartofline                   " hold the cursor position when changing buffer.
set hidden                          " allow buffer switching without saving
filetype plugin indent on

set spelllang=en,es                 " spell check (english and spanish)
set encoding=UTF-8                  " encodig utf-8
set backspace=indent,eol,start      " backspaceever work on insert mode

" theme color settings
set background=dark                 " theme background light or dark
colorscheme onedark                 " onehalfdark theme name
if (has("termguicolors"))
    set termguicolors               " enable true colors
endif

set pyxversion=3

" Clipboard, you need install xsel
set clipboard+=unnamedplus

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

" Move line
" Normal mode
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==

" Insert mode
inoremap <C-Down> <ESC>:m .+1<CR>==gi
inoremap <C-Up> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

autocmd TermOpen term://* startinsert

" set wildmode=longest:full
" set wildmenu                " enchanced command line completion
" set wildmode=list:full      " complete files like a shell

" if &wildoptions =~ "pum"
"    cnoremap <expr> <up> pumvisible() ? "<C-p>" : "\\<up>"
"    cnoremap <expr> <down> pumvisible() ? "<C-n>" : "\\<down>"
"endif

" JSON disable hide quites

" Auto Open NERDtree
" autocmd vimenter * NERDTree


" set colorcolumn=120   " show the 120 character limit column
" Theme
"let g:solarized_termcolors=256

" set showtabline=2          " always show tabline

" let g:deoplete#enable_at_startup = 1
" let g:tagbar_expand = 1
