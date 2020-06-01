" ale
"
" Plug 'dense-analysis/ale'

let g:ale_enabled = 0
let g:ale_completion_enabled = 0
" let b:ale_linters = {'javascript': ['eslint']}
" let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
