"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize=35

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"
let g:airline_powerline_fonts=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent Guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1

hi IndentGuidesOdd ctermbg=0 " Alternate background
hi IndentGuidesEven ctermbg=14 " Light grey


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
