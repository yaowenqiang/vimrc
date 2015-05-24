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
onoremap il( :<c-u>normal! F)vi(<cr>
" <c-u>用来清空命令行中的内容
"help omap-info
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" execute命令接收一个vimscript字符串并执行。
"cih menas change inside heading

imap <c-l> <esc>A
onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
onoremap in@ :<c-u>execute "normal! /@\r:nohlsearch\rbvf.e"<cr>
"help pattern-overview
"TODO 练习没做
" :help normal
" :help execute
":help expr-quote
" set statusline=%f    " will see path to the file.
" set statusline=%f\ -\ FileType:\ %y
" 
" set statusline=%f    		" Path to the file
" set statusline+=\ -\    	" Separator
" set statusline+=FileType:   " Label
" set statusline+=%y  		"Filetype of the file

" set statusline+=%l  		"current line
" set statusline+=/  		"Separator
" set statusline+=%L  		"Total Lines.
" set statusline=[%4l]
" set statusline=Current:\ %4l\ Total:\ %4l
"Ths status line will look like this:
" Current:  12 Total: 223

" - make padding on the right.
" set statusline=Current:\ %-4l\ Total:\ %-4l
"Ths status line will look like this:
" Current: 12 Total: 223

" set statusline=%04l
" pad with zero

"set statusline=
" set statusline=%.20F    "超过20个字符将会被截断
"help statusline
set statusline=%f        " Path to the file
set statusline+=%=       " Switch to right side
set statusline+=%l       " Current line
set statusline+=/        " Separator
set statusline+=%L       " Total Line

" vimscript file settings ---------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd filetype vim setlocal foldmethod=marker
augroup end
" }}}
"help foldlevelstart

" Variables

" let foo = 'bar'
" echo foo

" let foo = 42
" echo foo
" set textwidth=80
" echo &textwidth
" set nowrap
" echo &wrap
" set wrap
" echo &wrap
" let &textwidth = 100
" set textwidth?
" let &textwidth = &textwidth + 10
" set textwidth?
" let &l:number = 1
" echo &number
" let @a = "hello!" " set registers as variables
" echo @a
" echo @"
" echo @/
" let b:hello = 'World'
" echo b:hello
" help internal-variables
" echom "Foo" | echo "bar"
" if "somethine"
" 	echo "INDEED"
" endif
" if "9624"
" 	echo "WHAT?!"
" endif
" echom "hello" + 10
" echom "10hello" + 10
" echom "hello10" + 10
" if 0
" 	echo "nope!"
" elseif "nope!"
" 	echo "elseif"
" else
" 	echo "finally!"
" endif
" 
" set noignorecase
" if "foo" == "FOO"
" 	echo "vim is case insensitive."
" 	elseif "foo" == "foo"
" 	echo "vim is case sensitive."
" endif

" set ignorecase
" if "foo" == "FOO"
" 	echo "vim is case insensitive."
" 	elseif "foo" == "foo"
" 	echo "vim is case sensitive."
" endif

" set noignorecase
" if "foo" ==? "FOO"      			"==? 表示强制忽略大小写
" 	echo "vim is case insensitive."
" 	elseif "foo" ==? "foo"
" 	echo "vim is case sensitive."
" endif

" set ignorecase
" if "foo" ==# "FOO"      			"==# 表示强制大小写
" 	echo "vim is case insensitive."
" 	elseif "foo" ==# "foo"
" 	echo "vim is case sensitive."
" endif
" help ignorecase
" help expr4
" function Meow()
" 	echo "Meow"
" 	return "Meow String!"
" endfunction
" call Meow()    调用方式
" echom Meow()   调用方式

" function TextwidthIsTooWidth()
" 		if &l:textwidth ># 80
" 		return 1
" 		endif
" endfunction
" set textwidth=80
" if TextwidthIsTooWidth()
" 	echo "WARNING!WIDE TEXT!"
" endif
" setlocal textwidth=80
" if TextwidthIsTooWidth()
" 	echo "WARNING!WIDE TEXT!"
" endif
"help call
"help E124
"help return
" function DisplayName(name)
" 	echom "Hello! My name is :"
" 	echom a:name
" endfunction
" :call DisplayName("Jack")

" function UnscopedDisplayName(name)
" 	echom "Hello! My name is :"
" 	echom name
" endfunction
" :call UnscopedDisplayName("Jack")

" function Varg(...)
" 	echo a:0       参数个数
" 	" echo a:1     第一个参数值
" 	" echo a:000   参数数组
" endfunction
" call Varg("a","b")

" function Varg2(foo,...)
" 	echo a:foo
" 	echo a:0
" 	echo a:1
" 	echo a:000
" endfunction
" call Varg2("a","b","c")
" function Assign(foo)
" 	let a:foo = "Nope"
" 	echo a:foo
" endfunction

" function AssignGood(foo)
" 	let foo_tmp = a:foo
" 	let foo_tmp = "Yep"
" 	echo foo_tmp
" endfunction
"help function-arguments
"help local-variables

" echom 100
" echom 0xff
" echo 017
" echo 019
" echo 100.1
" echo 5.45e+3
" echo 15.45e-2
" echo 15.3e9
" echo 2 * 2.0
"help Float
"help floating-point-precision
" Enter fullscreen when launch gvim
au GUIEnter * simalt ~x
" Strings
" echom "hello"
" echom "Hello" + "World"
" echom "3 mice" + "2 Cats"
" echom 10 + "10.10"
" echom "Hello " . "World"
" echom 10 . " foo"
" echo 10.1 . "foo"
" echom "foo \"bar\""
" echom "foo\\bar"
" echom "foo\nbar"
" echo "foo\nbar"
" echom '\n\\'
" echom 'That''s enough.'
" if "foo"
" TODO
" 	echo "Yes"
" else
" 	echo "no"
" endif
" help expr-quote
"help i_CTRL-V
"help literal-string

" String functions
" echom strlen("foo")
" echom len("foo")
" echo split("one two three")
" echo split("one,two,three",',')
" echom join(['foo','bar'],'...')
" echom join(split('foo,bar'),';')
" echom tolower('Foo')
" echom toupper('Foo')
" echo split('1 2')
" echo split('1,,,2',',')
" :help split()
" :help join()
" :help functions
" Execute
" execute 'echo "hello world"'
" execute 'rightbelow vsplit ' . bufname('#')
" help execute
" help leftabove
" help rightbelow
" help split
" help vsplit
" TODO 练习还没做
" Add a mapping to your ~/.vimrc file that opens the previous buffer in a split of your chossing(vertical/horizontal,above/below/left/right)
" Normal
" :normal gg
" :normal G
" :normal ggdd
" :normal! G
" :normal! /foo<cr>
" :help normal
" help helpgrep
" TODO 练习还没做

" Execute Normal!
" :execute 'normal! gg/foo\<cr>dd
" :execute "normal! mqA;\<esc>'q
" TODO,下面的快捷键映射还有问题,换了另外一种方法
" nnoremap <leader>; :execute "normal! mqA;<Esc>q"<cr>;
nnoremap <leader>; :s/$/;/g<esc>:nohl<esc>$
nnoremap <leader>ca :execute 'normal! ggVG"*yG'<cr>
nnoremap <leader>cp :execute 'normal! "*pG'<cr>
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

"Basic Regular Expressions

" set hlsearch incsearch
" :execute "normal! gg/print\<cr>"
" :execute "normal! gg/print\<cr>n"
" :execute "normal! G?print\<cr>"
" :execute "normal! gg/for .* in .*\<cr>"
" :execute "normal! gg/for .\\+ in .\\+:\<cr>"
" /print .\+
" execute 'normal! gg/for .\+ in .\+;\<cr>'
" execute "normal! gg" .'/for .\+ in .\+;'."\<cr>"
" execute "normal! gg" . '/\vfor .+ in .+;' . "\<cr>"
" help magic
" help pattern-overview
" help match
" highlight MyGroup ctermbg=green guibg=green
" match MyGroup /TODO/
" TODO 练习还没做完
nnoremap <leader>lw :match Error / \+$/<cr>
" :match Error /\v.../
" help hlsearch
