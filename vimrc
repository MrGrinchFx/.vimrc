" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-vinegar'
    Plugin 'junegunn/gv.vim'
    Plugin 'tpope/vim-unimpaired'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'dense-analysis/ale'
call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Color Settings
set t_Co=256
syntax on

set nohlsearch
set incsearch
set ignorecase
set smartcase
" Line numbers
set number
set rnu
set ruler

" Wild Menu
set wmnu

" Misc.
set showcmd
set ttyfast

" os x backspace fix
set backspace=indent,eol,start

"set t_kb
fixdel


" Setup term color support
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
set t_Co=256
endif

" show trailing whitespace chars
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" Better buffer management - hide buffers instead of closing them
set hidden

set history=100
" Default history is only 20
set undolevels=100 " Use more levels of undo

" tab -> spaces
set expandtab
set tabstop=4
" a tab is 2 spaces
set softtabstop=4 " tab size when inserting/pasting
set shiftwidth=4 " number of spaces to use for autoindenting
set shiftround
set scrolloff=4
" use multiple of shiftwidth when indenting with '<' and '>'
set smarttab
" insert tabs on the start of a line according to shiftwidth, not tabstop
set autoindent
set copyindent

" dont use backup files
set nobackup
set noswapfile
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " store swap files here
"SOUNDS ANNOYING
set visualbell " don't beep
set noerrorbells " don't beep
set t_vb=
set autoread
set laststatus=2
" Keymappings

" Set Leader
let mapleader = " "

" Removes Highlighting via <Leader> + ","
nmap <leader>, : <c-u>set hlsearch!<cr>:echo &hlsearch ? "hlsearch on" : "hlsearch off"<cr>

" Press Leader + f to search for files in the current directory
nnoremap <leader>f :call fzf#vim#files('~/', fzf#vim#with_preview())<CR> 

" Press Leader + b to search through your open buffers
nnoremap <leader>b :Buffers<CR>

" Press Leader + h to search through your command history
nnoremap <leader>h :History:<CR>

"Vim Marks Configuration

" Press <Leader> + m + [1-4] to assign a global mark to the current file
nnoremap <leader>m1 mA
nnoremap <leader>m2 mB
nnoremap <leader>m3 mC
nnoremap <leader>m4 mD
nnoremap <leader>m5 mE

" 2. JUMP TO THE FILE (Like Harpoon navigation)
" Press <Leader> + [1-4] to instantly jump to that marked file
" Using the backtick (`) jumps to the exact line and column
nnoremap <leader>1 `A
nnoremap <leader>2 `B
nnoremap <leader>3 `C
nnoremap <leader>4 `D
nnoremap <leader>5 `E

set clipboard+=unnamedplus

vnoremap <leader>y "+y
nnoremap <leader>y "+y

nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Paste from system clipboard without replacing it with the deleted text
vnoremap <Leader>dp "_d"+P

" Disable whitespace warnings
let g:ale_warn_about_trailing_whitespace = 0
