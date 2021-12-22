fun! s:CreateDiariesPath() abort
	if (!isdirectory(g:VimDiariesPath))
		call mkdir(g:VimDiariesPath)
		return 1
	else
		return 0
	endif
endfun

fun! CreateDiary() abort
	let l:DiaryName = strftime("%Y-%m-%d")..".md"
	let l:DiaryPath = trim(g:VimDiariesPath, "/", 2).."/"..l:DiaryName

	call s:CreateDiariesPath()
	execute("edit " .. l:DiaryPath)
endfun
