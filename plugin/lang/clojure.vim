" Clojure config

noremap <leader>re :Eval<CR>
autocmd FileType clojure vnoremap  <leader>re :Eval<cr>
autocmd FileType clojure nnoremap  <leader>rf :%Eval<cr>
autocmd FileType clojure nnoremap  <leader>rr :Require<cr>
autocmd FileType clojure nnoremap  <leader>rR :Require!<cr>
autocmd FileType clojure nnoremap  <leader>rt :RunTests<cr>
autocmd FileType clojure nnoremap  <leader>rl :Last<cr>
autocmd FileType clojure nnoremap  <leader>rc :FireplaceConnect<cr>
autocmd FileType clojure nnoremap  gd :normal [<c-d><cr>

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
  \  'guifgs': ['#51AFEF', '#C678DD', '#98BE65'],
  \  'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
  \  'separately': {
  \      '*': 0,
  \      'clojure': {},
  \  }
  \}

" 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
