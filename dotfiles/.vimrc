" ###### Basic stuff to enable plugins ######

call plug#begin('~/.vim/plugged')

" plugins

" main
Plug 'jalvesaq/Nvim-R'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim'

" pandoc
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'vim-pandoc/vim-rmarkdown'

" markdown
" Plug 'gabrielelana/vim-markdown'

" web
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'alvan/vim-closetag'

" learn latter
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/loremipsum'

" Copy image from clipboard
Plug 'diegopenhanut/md-img-paste.vim'

call plug#end()



" Old stuff

set nocompatible
set autoindent
filetype plugin on
filetype indent on

" ###### Testing ######

" https://github.com/ferrine/md-img-paste.vim
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
autocmd FileType rmd nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'


" Text width (for wrapping) = 80
" set tw=80

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


" Auto close tags
" below options are recommended by:
" https://github.com/alvan/vim-closetag


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" ###### Nvim tweaks ######

" sudo after root file was opened
cmap w!! w !sudo tee % >/dev/null

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
set background=light
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

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif




"let g:airline_symbols.branch = '⎇'
let g:airline_theme='solarized'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count =2

" ###### Templates ######
" Load template for Rmd, R, sh files
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.Rmd 0r ~/.vim/templates/template.Rmd
    autocmd BufNewFile *.rmd 0r ~/.vim/templates/template.Rmd
    autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
    autocmd BufNewFile *.R 0r ~/.vim/templates/template.R
    autocmd BufNewFile *.r 0r ~/.vim/templates/template.R
  augroup END
endif

" testing
set guicursor=
autocmd TermOpen * setlocal nonumber
