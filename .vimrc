" ###### Basic stuff to enable plugins ######

call plug#begin('~/.vim/plugged')
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'

" Vim 8 only
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif

" Optional: for snippet support
" Further configuration might be required, read below
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'

" Optional: better Rnoweb support (LaTeX completion)
Plug 'lervag/vimtex'


" my plugins

Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim'
Plug 'godlygeek/tabular'
"Plug 'tomtom/tlib_vim'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

call plug#end()

" https://github.com/ncm2/ncm2

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

"IMPORTANTE: :help Ncm2PopupOpen for more information

set completeopt=noinsert,menuone,noselect


" https://github.com/ncm2/ncm2#optional-vimrc-tips
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>
" use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" https://github.com/ncm2/ncm2-ultisnips#vimrc-example
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
"inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0


" Old stuff
set nocompatible
set autoindent
filetype plugin on
filetype indent on

" ###### Testing ######

" Text width (for wrapping) = 80
set tw=80
" Single space between sentences when wrapping
set nojoinspaces
" Persistent undo
call system('mkdir -p' . $HOME . "/.vimundo")
set undodir=$HOME/.vimundo
set undofile


" Jump to last position when reopening file
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
endif

" All folds open on file open
set foldlevel=99

" Highlight cursor line
set cursorline


" ###### Nvim tweaks ######

" Esc exits terminal mode
tnoremap <Esc> <C-\><C-n>


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

" starts on separate terminal
" let R_in_buffer = 0

" output of r terminal should follow nvim colorscheme 
let rout_follow_colorscheme = 1

" Add mouse support (vim only)
if has('mouse') | set mouse=a | endif

   
" Change Leader and LocalLeader keys:
let maplocalleader = ","
let mapleader = ";"


" clipboard
set clipboard=unnamedplus

" Correção Ortógrafica em pt-br
" usando F5 para ativar e F6 para desativar
noremap <F5> :set spell spelllang=pt,en<cr>
noremap <F6> :set spell spelllang=<cr>

" autocompletion on vim commands
set wildmenu
set wildmode=list:longest

" smarttabs
" set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" disable autoident using F8
" Usefull for Rmd bullet lists
nnoremap <F8> :setl noai nocin nosi inde=<CR>
" start R with F2 key
nmap <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection

" send line to R with space bar
nmap <Space> <Plug>RDSendLine

"underscore will be replaced with the assign operator only if it
"is preceded by a space and followed by a non-word character.
let R_assign = 3


" No preview for arguments or functions
let R_show_args = 0
let R_show_arg_help = 0

" ###### Nerd Tree ######

" nerdtree ctrl n shortcut - https://github.com/scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

" close nvim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ###### Airline config ######
 
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_theme='solarized'


" ###### Templates ######
" Load template for Rmd, R, sh files
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.Rmd 0r ~/.vim/templates/template.Rmd
    autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
    autocmd BufNewFile *.R 0r ~/.vim/templates/template.R
  augroup END
endif

