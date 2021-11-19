function! s:better_sub() abort
	let reg = getreg(0)
	let word = expand('cword')

	call maktaba#buffer#Substitue(word, reg)

endfunc

nnoremap <M-r> :call <SID>better_sub()<CR>

" lua << EOF
" function _G.ReloadConfig()
"     local hls_status = vim.v.hlsearch
"     for name,_ in pairs(package.loaded) do
"         if name:match('^cnull') then
"             package.loaded[name] = nil
"         end
"     end
"     dofile(vim.env.MYVIMRC)
"     if hls_status == 0 then
"         vim.opt.hlsearch = false
"     end
" 	end
" EOF
