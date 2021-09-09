" General
set history=500
set nocompatible
filetype plugin on
filetype indent on
set autoread
nmap <leader>w :w!<cr>
set mouse=a
set clipboard+=unnamed

" Registers
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
autocmd VimEnter * WipeReg

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" VIM user interface
set so=7
set langmenu=en
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set autoindent
set number
set modifiable
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Colors and Fonts
syntax enable

colorscheme desert
let g:airline_theme='deus'

set t_Co=256
set background=dark

" Text and Tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Plugins
execute pathogen#infect()

" Turn on/off files tree
map <F2> :NERDTreeToggle<CR>

" Comment selected text
map <F3> :normal! i#<CR>

" Uncomment selected text
map <F4> :normal! x<CR>

" Open new window vertically
"nnoremap <F4> :vsp<CR>
"inoremap <F4> <Esc>:vsp<CR>
" Open new window horizontally
"nnoremap <F5> :sp<CR>
"inoremap <F5> <Esc>:sp<CR>

" set TagBar
:nnoremap <F5> :TagbarToggle<CR>

" set cursorline
:nnoremap <F6> :set cursorline!<CR>

" WindowToggle
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <Esc><C-w>W

" Tab navigation.
nnoremap <BS>   :tabprevious<CR>
"nnoremap <> :tabnext<CR>
nnoremap <C-t>  :tabnew<CR>

" Buffer navigation
nnoremap <A-Right>  :bn<CR>
nnoremap <A-Left>   :bp<CR>

" Close buffers plugin
nnoremap <silent> Q :CloseBuffers<CR>

" Turn off arrow in normal mode 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Mapping to move lines
nnoremap <C-j> :m .+2<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+2<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

vnoremap <C-c> "+yy
nnoremap <F9> :g:^#:normal dd<CR>
