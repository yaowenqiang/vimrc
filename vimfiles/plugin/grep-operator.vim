nnoremap <leader>g :set operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call GrepOperator(visualmode())<cr>
function! GrepOperator(type)
		if a:type ==# 'v'
				execute "normal! `<v`>y"
		elseif a:type ==# 'char'
				execut "normal! `[v`]y"
		else
				return
		endif
		echom shellescape(@@)
endfunction
" help visualmode
