"'=>> Settings
set linebreak
set conceallevel=3
let g:vsnip_snippet_dir = expand('~/.config/nvim/snippets/')

""=>> Setup cmp setup buffer configuration - 👻 text off for markdown
lua << EOF
local cmp = require('cmp')
cmp.setup.buffer({
	sources = {
		{ name = 'vsnip' },
		{
			name = 'buffer',
			opts = {
				get_bufnrs = function()
					return vim.api.nvim_list_bufs()
				end,
			},
		},
		{ name = 'path' },
		{ name = 'spell' },
	},
	experimental = {
		ghost_text = true,
	},
})
EOF

"{{{ =>> Functions
" augroup SetMarkdownFt
"   autocmd!
"   autocmd BufNewFile,BufRead,BufWinEnter *.markdown,*.mdown,*.md,*.MD,*.vimwiki,*.wiki set filetype=markdown
"   autocmd BufNewFile,BufRead,BufWinEnter *.markdown,*.mdown,*.md,*.MD,*.vimwiki,*.wiki set syntax=markdown
"   autocmd BufWinEnter,BufRead *.markdown,*.mdown,*.md,*.MD,*.vimwiki,*.wiki silent! set foldmethod=manual
"   autocmd BufRead,BufWinEnter *.markdown,*.mdown,*.md,*.MD,*.vimwiki,*.wiki set conceallevel=3
" augroup end
"}}}

" vim: set foldmethod=marker : 
