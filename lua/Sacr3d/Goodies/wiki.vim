"{{{ =>> HIGHLIGHT <<=
"---------------------"
hi vimwikibold      gui=bold guifg=#FFFFFF guibg=none guisp=none
hi VimwikiHeader1   guifg=#a957ec
hi VimwikiHeader2   guifg=#a6e22e
hi VimwikiHeader3   guifg=#ff5c57
hi VimwikiHeader4   guifg=#F01f6f
hi VimwikiHeader5   guifg=#268bd2
hi VimwikiHeader6   guifg=#81eeb2
hi markdownH1       gui=bold guifg=#a957ec
hi markdownH2       gui=bold guifg=#a6e22e
hi markdownH3       gui=bold guifg=#ff5c57
hi markdownH4       gui=bold guifg=#F01f6f
hi markdownH5       gui=bold guifg=#268bd2
hi markdownH6       gui=bold guifg=#81eeb2
"}}}

"{{{ =>> Settings <<=
"--------------------"
let g:vimwiki_hl_headers = 1
let g:vimwiki_folding = ''
let g:vimwiki_conceallevel = 3
let g:vimwiki_conceal_onechar_markers = 1
let g:vimwiki_conceal_pre = 1
let g:automatic_nested_syntaxes = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_global_ext = 1
" let g:vimwiki_ext2syntax = {'.md': 'markdown'}
" let g:nested_syntaxes = { 'python': 'python', 'sh': 'bash', 'bash': 'bash', 'lua': 'lua', 'vim': 'vim' }
" let g:vimwiki_ext2syntax = {'.md': 'markdown',
								" \ '.mkd': 'markdown',
                  " \ '.wiki': 'markdown'}
"}}}

"{{{ =>> Wiki list <<=
"---------------------"
		" ->> Linux Wikie's
    let wiki_1 = {}
    let wiki_1.path = '~/vimwiki'
		let wiki_1.ext = '.wiki'
		let wiki_1.syntax = 'markdown'
		let wiki_1.name = "Wickies"

		" ->> Personal Wikie's
    let wiki_2 = {}
    let wiki_2.path = '~/SacredWiki'
		let wiki_2.ext = '.wiki'
		let wiki_2.syntax = 'markdown'
		let wiki_2.name = "Sacr3d"

		" ->> Vimwiki Guide
    let wiki_3 = {}
    let wiki_3.path = '~/vimwiki-guide/wiki'
		let wiki_3.ext = '.wiki'
		let wiki_3.syntax = 'markdown'
		let wiki_3.name = "Vimwiki-Guide"
    let wiki_3.auto_toc = 1



		let g:vimwiki_list = [wiki_1, wiki_2, wiki_3]
"}}}

"{{{ =>> Keybinds <<=
"--------------------"
"--> Normal mode
" nnoremap <Leader>n <Plug>VimwikiNormalizeLink
"--> Visual mode
" vnoremap <Leader>n <Plug>VimwikiNormalizeLinkVisual
  " let g:vimwiki_key_mappings =
  "   \ {
  "   \   'all_maps': 1,
  "   \   'global': 1,
  "   \   'headers': 1,
  "   \   'text_objs': 1,
  "   \   'table_format': 1,
  "   \   'table_mappings': 1,
  "   \   'lists': 1,
  "   \   'links': 1,
  "   \   'html': 1,
  "   \   'mouse': 0,
  "   \ }
" let g:wiki_mappings_use_defaults = 1
" let g:wiki_mappings_global = {
" 			\ '<plug>(wiki-index)': '<leader>ww',
" 			\ }

" let g:wiki_mappings_local = {
" 			\ '<plug>(wiki-journal-prev)': '<c-Down>',
" 			\ '<plug>(wiki-journal-next)': '<c-Up>',
" 			\ }
			" \ '<plug>(wiki-link-next)' : '<leader><tab>',
			" \ '<plug>(wiki-link-return)' : '<leader><bs>',
			" \ '<plug>(wiki-link-open-split)' : '<c-w><cr>',
"}}}

"{{{ =>> Link Handler <<=
"------------------------"
function! VimwikiLinkHandler(link)
	let link = a:link
	if link =~# '^vfile:'
		let link = link[1:]
	else
		return 0

	endif
	let link_infos = vimwiki#base#resolve_link(link)
	if link_infos.filename == ''
		echomsg 'Vimwiki Error: Unable to resolve link!'
		return 0
	else
		exe 'tabnew ' . fnameescape(link_infos.filename)
		return 1
	endif
endfunction
"}}}

"{{{ =>> TJ Functions <<=
"------------------------"
" Complete paths with vimwiki
" function! CompleteVimwikiPath(word) abort
"   if maktaba#string#StartsWith(a:word, '[[/')
"     let globbed = map(
"           \ split(glob(g:vimwiki_path . a:word[3:] . '*'), "\n"),
"           \ {key, value -> substitute(value, '\\', '/', 'g')}
"           \ )
"     let choices = filter(map(
"             \ globbed,
"             \ {key, value -> value[len(g:vimwiki_path):]}),
"           \ 'v:val =~ "' . a:word[3:] . '"')
"     call complete(col('.') - len(a:word) + 3, choices)
"   endif
" 
"   return ''
" endfunction
" 
" inoremap <c-x><c-w> <C-O>h<C-O>:let g:my_complete_path = '<c-r><c-a>'<cr><esc>Ea<C-R>=CompleteVimwikiPath(g:my_complete_path)<CR>

" Get the current folder of a vimwiki page
" function! GetVimwikiFolder() abort
"   let file_name = input('New file: ')
"   let current_file = substitute(expand('%:p:h'), '\\', '/', 'g')
"   let wiki_path = substitute(g:vimwiki_path, '\\', '/', 'g')
" 
"   return '[[/' . substitute(current_file, wiki_path, '', 'g') . '/' . file_name . '|' . file_name . ']]'
" endfunction
" 
" inoremap <leader>wf <C-O>:call nvim_input(GetVimwikiFolder())<CR>
" nnoremap <leader>wf :call nvim_input(GetVimwikiFolder())<CR>

" turn this_tag -> [:this_tag:]
" inoremap wtag <C-O>b[:<C-O>e<right>:]

" function! s:map_enter() abort
" 	if v:hlsearch
" 		return execute(":nohl\<CR>")
" 	endif
" 
" 	if getline('.') =~ '\s*- \[ \]'
" 		return setline(line('.'), substitute(getline('.'), '^\(\s*- \)\[ \]', '\1[x]', ''))
" 	endif
" 
" 	if getline('.') =~ '\s*- \[x\]'
" 		return setline(line('.'), substitute(getline('.'), '^\(\s*- \)\[x\]', '\1[ ]', ''))
" 	endif
" 
" 	" TODO: Should I cache this?
" 	let keymap = nvim_get_keymap('n')
" 	if has_key(keymap, '<Plug>(wiki-link-open)')
" 		return execute("normal <Plug>(wiki-link-open)")
" 	else
" 		return execute("normal <Plug>VimwikiFollowLink<CR>")
" 	endif
" endfunction

" augroup tjVimWiki
" 	au!
" 	au BufNewFile,BufRead,BufEnter *.md set foldmethod=marker
	" au BufWritePost *.wiki VimwikiRebuildTags

	" This is probably too often... but oh well
	" Could perhaps even do it in a filetype
	" au BufNewfile,BufRead,BufEnter *.md nnoremap <buffer> <CR> :call <SID>map_enter()<CR>
" augroup END

" let g:wiki_home = $HOME .. '/.local/wiki/'
" }}}

" vim: foldmethod=marker :
