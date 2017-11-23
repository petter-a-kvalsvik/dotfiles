" **** vim-config ****

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

