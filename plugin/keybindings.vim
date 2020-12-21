" My like keybindings Doom Emacs

let mapleader = "\<SPACE>"
nnoremap <leader><SPACE> :NERDTreeToggle<CR>
" Files
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
" Search
nnoremap <leader>sp :Rg<CR>
" Buffers
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
" Open
nnoremap <leader>on :NERDTreeToggle<CR>
nnoremap <leader>ot :terminal<CR>
" Window 
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wh <C-w>H
nnoremap <leader>wj <C-w>J
nnoremap <leader>wk <C-w>K
nnoremap <leader>wl <C-w>L

" Remap keys
" nnoremap <C-Left> :bprevious<CR>
" nnoremap <C-Right> :bnext<CR>
" nnoremap <F2> :FZF<CR>
" inoremap <F2> <Esc>:FZF<CR>
" nnoremap <F3> :Buffers<CR>
" inoremap <F3> <Esc>:Buffers<CR>
" nnoremap <F4> :NERDTreeToggle<CR>
" inoremap <F4> <Esc>:NERDTreeToggle<CR>
" nnoremap <F5> :Rg<CR>
" inoremap <F5> <Esc>:Rg<CR>
" nnoremap <F6> :TagbarToggle<CR>
" inoremap <F6> <Esc>:TagbarToggle<CR>

" My like keybindings Doom Emacs
" let mapleader = "\<SPACE>"
" nnoremap <SPACE><SPACE> :NERDTreeToggle<CR>
" " Files
" nnoremap <SPACE>ff :Files<CR>
" nnoremap <SPACE>fg :GFiles<CR>
" " Search
" nnoremap <SPACE>sp :Rg<CR>
" " Buffers
" nnoremap <SPACE>bb :Buffers<CR>
" nnoremap <SPACE>bn :bnext<CR>
" nnoremap <SPACE>bp :bprevious<CR>
" " Open
" nnoremap <SPACE>on :NERDTreeToggle<CR>
" nnoremap <SPACE>ot :terminal<CR>
" " Window manager
" nnoremap <SPACE>ws :split<CR>
" nnoremap <SPACE>wv :vsplit<CR>
" nnoremap <SPACE>wh <C-w>H
" nnoremap <SPACE>wj <C-w>J
" nnoremap <SPACE>wk <C-w>K
" nnoremap <SPACE>wl <C-w>L



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

" nnoremap <Down> gj
" nnoremap <Up> gk
" inoremap <Down> <ESC>gja
" inoremap <Up> <ESC>gka


" let mapleader = ","
" noremap <leader>w :w<CR>
" noremap <leader>q :q<CR>
" noremap <leader>gs :CocSearch
" noremap <leader>fs :Files<CR>
" noremap <leader><CR> <CR><c-w>h:q<CR>

" :inoremap ii <Esc>
" :imap ii <Esc>

