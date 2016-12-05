" ###### Basic stuff to enable plugins ######

set nocompatible
execute pathogen#infect()
syntax enable
syntax on
filetype plugin on
filetype indent on
set autoindent



" ###### Nvim tweaks ######

" não adicionar -> quando usar _
let vimrplugin_assign_map = "__"
   
" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"

" spell check
" :setlocal spell spelllang=en_us

" clipboard
" set clipboard+=unnamedplus

" Correção Ortógrafica em pt-br
" usando F5 para ativar e F6 para desativar
noremap <F5> :set spell spelllang=pt,en<cr>
noremap <F6> :set spell spelllang=<cr>

" autocompletion on vim commands
set wildmenu
set wildmode=list:longest

" smarttabs
set smarttab
set shiftwidth=4
set softtabstop=4

" disable autoident using F8
" Usefull for Rmd bullet lists
nnoremap <F8> :setl noai nocin nosi inde=<CR>


" show status line all the time
set laststatus=2

" don't show default mode indicator.
" hides --INSERT-- and the likes.
set noshowmode

" show details about the command in execution
set showcmd

" display number of line
set number

" set colorscheme 
set  t_Co=256
set background=dark
colorscheme solarized

" set timeout (less delay when using commands)
set ttimeout
set ttimeoutlen=100

" remap autocompletion to ctrl space
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" use ctrl + regular movement keys to navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" new buffer yielded by vsplit will be placed on the rigth side of the current
" buffer
set splitright

" new buffer yielded by split will placed below the current buffer
set splitbelow

" ###### R plugin (Nvim-R) options ######

" start R with F2 key
nmap <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection

" send line to R with space bar
nmap <Space> <Plug>RDSendLine

" no <- instead of _
let R_assign = 0

" avoid renaming of tmux pane when creating a new R pane
let R_tmux_title = "automatic"

" start object browser on a nvim split
let R_tmux_ob = 0

" split vertically
let R_vsplit = 1

" ###### Nerd Tree ######

" nerdtree ctrl n shortcut - https://github.com/scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

" close nvim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ###### PERL ######

" my perl includes pod
let perl_include_pod = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>

" ###### Airline config ######
 
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" let g:airline_section_b = '%f'

let g:airline_theme='solarized'
let g:tmuxline_preset = 'nightly_fox'

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '|',
    \ 'right' : '',
    \ 'right_alt' : '|',
   \ 'space' : ' '}

