set sw=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

let g:syntastic_r_checkers = ['lintr']
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_lintr_linters = "with_defaults(camel_case_linter=NULL, object_usage_linter=NULL)"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
