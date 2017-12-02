" **** P4Ks vim-config ****

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dylanaraps/wal.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
" Put your non-Plugin stuff after this line

syntax on

" sett linjenummerering
set number
set relativenumber
highlight LineNr ctermfg=DarkGrey ctermbg=NONE

" deaktivere piltastene
vnoremap <left> <Nop>
inoremap <left> <Nop>

nnoremap <right> <Nop>
vnoremap <right> <Nop>
inoremap <right> <Nop>

nnoremap <up> <Nop>
vnoremap <up> <Nop>
inoremap <up> <Nop>

nnoremap <down> <Nop>
vnoremap <down> <Nop>
inoremap <down> <Nop>

" esc til kjapt dobbeltrykk jj
imap jj <esc>

" tab til fire mellomrom
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" CAPSLOCK til ESC
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" remap $ (til slutten av linja) til ¤
nnoremap ¤ $
vnoremap ¤ $

" remap k & j to gk & gj, gjør det lettere ved lange brutte linjer
nnoremap k gk
nnoremap j gj

" Vim-LaTeX
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" LaTeX shorts
autocmd FileType tex inoremap ;s \parencite{}<space><esc>T{i
autocmd FileType tex inoremap ;t \textcite{}<space><esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<space><esc>T{i
autocmd FileType tex inoremap ;it \textit{}<space><esc>T{i
autocmd FileType tex inoremap ;ns \section{}<space><esc>T{i
autocmd FileType tex inoremap ;ss \subsection{}<space><esc>T{i
autocmd FileType tex inoremap ;sss \subsubsection{}<space><esc>T{i

