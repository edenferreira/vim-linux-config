execute pathogen#infect()

" Syntax and basic editor configs
syntax on
set number
set cursorline
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Full screen
set lines=999 columns=999

" correct backspace behavior
set backspace=indent,eol,start

" Apperance and enconding
set guifont=Ubuntu\ Mono\ 12
set encoding=utf-8
colorscheme monokai

" Rainbow Parentheses
au VimEnter * RainbowParenthesesActivate
au GUIEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Hiding menus
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Fix whitespace on before save
au BufWritePre * :silent FixWhitespace

" Save on focus lost
au FocusLost * :silent wa

" improving search to incremental and appear in the middle of the screen
set incsearch
set scrolloff=1

" mapping leader to space
let mapleader = " "
let maplocalleader = " "

" split hotkeys
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>>

" Maximum width of column
set colorcolumn=120

"indentGuide
let g:indent_guides_enable_on_vim_startup = 1
