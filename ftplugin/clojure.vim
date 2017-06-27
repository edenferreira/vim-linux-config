set tabstop=2
set shiftwidth=2

" au BufWritePre *.clj :Eval

" Fireplace
nnoremap E :%Eval<cr>
nnoremap <leader>f :w! ~/temp.clj <bar> ! lein cljfmt fix ~/temp.clj<cr><cr>
nnoremap <leader>r :1,$d <bar> 0read ~/temp.clj <<cr><cr>

