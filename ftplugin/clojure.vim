nnoremap <leader>ec :split <bar> e ~/.vim/ftplugin/clojure.vim<cr>

set tabstop=2
set shiftwidth=2

" let g:sexp_enable_insert_mode_mappings = 0

" au BufWritePre *.clj :Eval

" Rainbow Parentheses
au VimEnter * :RainbowParenthesesActivate
au GUIEnter * :RainbowParenthesesActivate
au Syntax * :RainbowParenthesesLoadRound
au Syntax * :RainbowParenthesesLoadSquare
au Syntax * :RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['64', '#404040'],
    \ ['128', '#808080'],
    \ ['112', '#707070'],
    \ ['96', '#606060'],
    \ ['80', '#505050'],
    \ ]

"Disabling vim cljfmt to be enabled later
let g:clj_fmt_autosave = 0

" Forms
nmap <leader>)f ysaf)
nmap <leader>]f ysaf]
nmap <leader>}f ysaf}
nmap <leader>)e cse(
nmap <leader>]e cse[
nmap <leader>}e cse{

" Fireplace
nnoremap <leader>e :%Eval<cr>
nnoremap <leader>ra :Require!<cr>
nnoremap <leader>f :w! ~/temp.clj <bar> ! lein cljfmt fix ~/temp.clj<cr><cr>
nnoremap <leader>r :1,$d <bar> 0read ~/temp.clj <<cr><cr>

" Nubank
nnoremap nut (i(nu/tapd <esc>%a)<esc>
nnoremap nu# (i#nu/tapd<esc>
