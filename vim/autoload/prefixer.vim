" =======================================================
" Plugin:        prefixer.vim
" Description:   add vendor prefixes to CSS3 properties
" Maintainer:    Kien Nguyen <info@designtomarkup.com>
" License:       MIT
" Repository:    https://github.com/kien/prefixer.vim
" =======================================================

let s:sav_cpo = &cpo
set cpo&vim

" .vimrc option
if !exists('g:prefixer_curl')
	let g:prefixer_curl = ''
endif

func! prefixer#init(l1,l2,...)
	if !executable('curl')
		echohl Error
		echo 'This plugin requires cURL.'
		echohl None
		retu
	endif
	let sites = [
				\ 'http://cssprefixer.appspot.com/process/',
				\ 'http://prefixr.com/api/index.php',
				\ 'http://prefixmycss.com/ajax.php',
				\ ]
	let line1 = a:l1
	let line2 = a:l2
	if !exists('a:1')
		let a1 = 0
	elseif exists('a:1')
		let a1 = a:1[0]
		if strlen(a:1) == 2
			let a2 = a:1[1]
		endif
	endif
	if (a1 == 0 && line1 == line2) || exists('a2')
		let line1 = 1
		let line2 = line('$')
	endif
	if a1 == 0 || a1 == 1
		let va = 'css'
		let enc = ' --data-urlencode'
	elseif a1 == 2
		let va = 'comment=0&indent=0&multiline=1&codeCSS'
		let enc = 'd'
	endif
	try
		let sav_z = @z
		exe line1
		norm! V
		exe line2
		norm! "zy
		let css = substitute(@z, '\n', '', 'g')
		let @z = system('curl '.g:prefixer_curl.' -sS'.enc.' "'.va.'='.css.'" '.sites[a1])
		norm! gv"zpgv=gv=
	finally
		let @z = sav_z
	endtry
	if !exists("a2")
		sil! cal repeat#set(":Prefixer".a1."\<cr>")
	else
		sil! cal repeat#set(":Prefixer".a1.a2."\<cr>")
	endif
endfunc

let &cpo = s:sav_cpo
unlet s:sav_cpo

" vim:nofen:noet:ts=2:sw=2:sts=2
