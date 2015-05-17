set nocompatible
if has("gui_running")
"  set guifont=Consolas:h14
set guifont=YaHei_Mono:h14
" set color schema
" colorscheme oceandeep
colorscheme blackboard
" colorscheme bjornenki
" colorscheme railscasts
" colorscheme wombat
" colorscheme solarized
"colorscheme desert
endif
syntax enable
set nu
set showmatch
set expandtab
set shiftwidth=4
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
set smarttab
set lbr
set tw=0
set ai
set si
set cindent
set wrap
set history=400
set autoread
set mouse=a
set lz
set so=7
set cmdheight=2
set hid
set incsearch
set magic
set noerrorbells
set novisualbell
set t_vb=
set mat=4
set hlsearch
set nobackup
set nowb
set noswapfile
set backspace=start,indent,eol
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>
map <F10> :NERDTreeToggle<CR>
set list

set listchars=tab:>-,trail:-
set go-=m go-=T go-=r
set patchmode=.orig 
map <Up> gk
imap <Up> <ESC>gki
imap <Down> <ESC>gji
map <Down> gj
map <space> :
autocmd BufEnter *.txt set guifont=YaHei_Consolas_Hybrid:h18
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>
set cursorline
set cursorcolumn
" set fileencoding=gb18030
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set noet ci pi sts=0 sw=4 ts=4
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
map <F2> :echo 'Current is ' . strftime('%c')<CR>
map! <F3> <C-R>=strftime('%c')<CR><Esc>
map <F7> :MRU<CR>
autocmd! bufwritepost _vimrc source %
set spell
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR><esc>
set relativenumber
" nmap \ dd
" imap <c-d> <esc>ddi
imap <c-u> <esc>viw~ea
let mapleader = ","
" nnoremap <leader>d dd
" nnoremap <leader>c ddO
inoremap <leader>c <esc>
"let maplocalleader = "\\"
"<localleader>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
iabbrev adn and
iabbrev waht what
iabbrev tehn then
":set lskeyword?
" help isfname
:iabbrev @@    yaowenqiang111@163.com
:iabbrev ccopy Copyright 2015 jacky.yao, all rights reserved.
" nnoremap jk dd
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
inoremap jk <esc>
" inoremap <esc> <nop>
nnoremap <F1> <nop>
nnoremap <leader>d dd
" nnoremap <buffer> <leader> dd
" nnoremap <buffer> <localleader> dd
" setlocal wrap
" setlocal nowrap
" setlocal number
" setlocal nonumber
" nnoremap <buffer> Q x
" nnoremap  	  Q dd
" help local-options
" help setlocal
" help map-local
" autocmd BufNewFile * :write!
" autocmd BufNewFile *.txt :write!
" autocmd BufWritePre *.html :normal gg=G
" autocmd BufNewFile,BufRead *.html :setlocal nowrap
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
" :help autocmd-events
" iabbrev <buffer> -- &mdash;
" iabbrev <buffer> return NOPENOPENOPE
" autocmd BufWrite * :echom "Buffer Write!"
" autocmd BufWrite * :sleep 200m
augroup testgroup
		autocmd BufWrite * :echom "Foo"
		autocmd BufWrite * :echom "Boo"
augroup END
augroup testgroup
		autocmd BufWrite * :echom "Baz"
augroup END
augroup testgroup
		autocmd!
		" clear a group
		autocmd BufWrite * :echom "Baz"
augroup END
augroup filetype_html
"TODO,这个快捷键印射还不知道是什么意思
		autocmd!
		autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
"help autocmd-groups
onoremap p i(
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
