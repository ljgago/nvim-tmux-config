" identLine
"
" Plug 'Yggdroot/indentLine'

" JSON disable hide quites
" let g:conceallevel = 0

let g:indentLine_enabled = 0
let g:indentLine_conceallevel = 1
let g:indentLine_fileTypeExclude = ['txt', 'tex', 'json', 'swagger']
let g:indentLine_setConceal = 0
" let g:indentLine_concealcursor="nc"
" let g:indentLine_setColors=1

" none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
" let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#3b4048'
let g:indentLine_char = '│'
set list lcs=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:+ 
"set list listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
"set list listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
"set list listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
"set list listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$
"set list listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
"set list lcs=tab:\*\
"set list lcs=precedes: \  
"set listchars=tabs
