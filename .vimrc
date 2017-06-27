execute pathogen#infect()

" Performance
set ttyfast

filetype plugin on
filetype plugin indent on

" Syntax and basic editor configs
syntax on
set number
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Yellow
au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

" correct backspace behavior
set backspace=indent,eol,start

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif


" Apperance and enconding
set guifont=Ubuntu\ Mono\ 12
set encoding=utf-8
colorscheme atom

" Rainbow Parentheses
au VimEnter * :RainbowParenthesesActivate
au GUIEnter * :RainbowParenthesesActivate
au Syntax * :RainbowParenthesesLoadRound
au Syntax * :RainbowParenthesesLoadSquare
au Syntax * :RainbowParenthesesLoadBraces

" Hiding menus
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Fix whitespace on before save
au BufWritePre * :silent FixWhitespace

" improving search to incremental and appear in the middle of the screen
set incsearch
set scrolloff=1

" mapping leader to space
let mapleader = " "
let maplocalleader = " "

" split hotkeys
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>

" fuzzy finder
nnoremap <leader>p :CtrlPMixed<cr>

" TODO put this in the clojure ftplugin

" Utils
nnoremap <leader>er :split <bar> e $MYVIMRC<cr>

" incsearch
map /  <Plug>(incsearch-easymotion-/)
map ?  <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)

map fz/ <Plug>(incsearch-fuzzy-/)
map fz? <Plug>(incsearch-fuzzy-?)
map fzg/ <Plug>(incsearch-fuzzy-stay)

"indentGuide
let g:indent_guides_enable_on_vim_startup = 1

" CtrlP Only ancestor with .git
let g:ctrlp_working_path_mode = 'r'

"Disabling vim cljfmt to be enabled later
let g:clj_fmt_autosave = 0

ab requist request
ab nutapd nu/tapd
