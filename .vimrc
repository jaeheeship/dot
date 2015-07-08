set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' 
Plugin 'Solarized'
Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'The-NERD-tree'
Plugin 'mru.vim' 
Plugin 'fugitive.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" :PluginSearch!
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"

let g:neocomplete#enable_at_startup = 1
"solarized options 

syntax on
set background=dark
let g:solarized_termcolors =256
let g:solarized_termtrans = 1
set t_Co=256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "low" 
"
colorscheme default

"ctrip 
set runtimepath^=~/.vim/bundle/ctrlp.vim

set linespace=15
set mouse=a

let mapleader = ","
let g:mapleader =","

nmap ,t :!clear && phpunit<cr>
nmap ,m :!clear && phpunit %<cr>

nmap <C-v> :vertical resize +5<cr> 
nmap setjs :set filetype=javascript<cr> 
nmap setphp :set filetype=php<cr> 
nmap sethtml :set filetype=html<cr> 
nmap <leader>r :MRU<cr> 


nmap ,c :!open -a Google\ Chrome<cr>

nmap <C-b> :NERDTreeToggle<cr>

"let g:Powerline_symbols='fancy'
set laststatus=2 "always show the statusline
set noshowmode "hide the default mode text 
set encoding=utf-8 "necessary to show unicode glyphs

"generate migration
abbrev gmig !php artisan generate:migration
abbrev gc !php artisan generate:controller
abbrev composer !composer 

nmap ,todo :e todo.txt<cr>

nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81GF(%0
nmap <leader>lc :e composer.json<cr> 

set autoindent
set copyindent
set smarttab
set ruler

set et
set sw=4
set ts=4

" solve backspace problem
set backspace=2 
set backspace=start,indent,eol 

set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
