vim.cmd([[
    hi BqfPreviewBorder guifg=#50a14f ctermfg=71
    hi link BqfPreviewRange Search
		hi default link BqfPreviewFloat Normal
		hi default link BqfPreviewBorder Normal
		hi default link BqfPreviewCursor Cursor
		hi default link BqfPreviewRange IncSearch
		hi default BqfSign ctermfg=14 guifg=Cyan
]])

require('bqf').setup({
	auto_enable = true,
	auto_resize_height = true,
	preview = {
		auto_preview = true,
		win_height = 12,
		win_vheight = 12,
		delay_syntax = 80,
		border_chars = {
			'┃', -- '│',
			'┃', -- '│',
			'━', -- '─',
			'━', -- '─',
			'┏', -- '╭',
			'┓', -- '╮',
			'┗', -- '╰',
			'┛', -- '╯',
			'█', -- '█',
		},
		should_preview_cb = function(bufnr)
			local ret = true
			local filename = vim.api.nvim_buf_get_name(bufnr)
			local fsize = vim.fn.getfsize(filename)
			-- file size greater than 100k can't be previewed automatically
			if fsize > 100 * 1024 then
				ret = false
			end
			return ret
		end,
	},
	filter = {
		fzf = {
			delay_syntax = 50,
			win_height = 15,
			win_vheight = 15,
			wrap = false,
			action_for = {
				['ctrl-s'] = 'split',
				['ctrl-q'] = 'signtoggle',
				['ctrl-t'] = 'tabedit',
				['ctrl-v'] = 'vsplit',
			},
			extra_opts = {
				'--bind',
				'ctrl-o:toggle-all',
				'--prompt',
				'> ',
			},
			func_map = {
				filter = 'zn',
				filterr = 'zN',
				fzffilter = 'zf',
				nextfile = '<C-n>',
				nexthist = '>',
				open = '<CR>',
				openc = 'o',
				prevfile = '<C-p>',
				prevhist = '<',
				pscrolldown = '<C-f>',
				pscrollorig = 'zo',
				pscrollup = '<C-b>',
				ptoggleauto = 'P',
				ptoggleitem = 'p',
				ptogglemode = 'zp',
				sclear = 'z<Tab>',
				split = '<C-x>',
				stogglebuf = "'<Tab>",
				stoggledown = '<Tab>',
				stoggleup = '<S-Tab>',
				stogglevm = '<Tab>',
				tab = 't',
				tabb = 'T',
				vsplit = '<C-v>',
				magic_window = true,
			},
			-- func_map = {
			-- 	vsplit = '',
			-- 	ptogglemode = 'z,',
			-- 	stoggleup = '',
			-- },
		},
	},
})

-- require('bqf').setup({
-- 	{
-- 		auto_enable = {
-- 			description = [[enable nvim-bqf in quickfix window automatically]],
-- 			default = true,
-- 		},
-- 		magic_window = {
-- 			description = [[give the window magic, when the window is splited horizontally, keep
--             the distance between the current line and the top/bottom border of neovim unchanged.
--             It's a bit like a floating window, but the window is indeed a normal window, without
--             any floating attributes.]],
-- 			default = true,
-- 		},
-- 		auto_resize_height = {
-- 			description = [[resize quickfix window height automatically.
--             Shrink higher height to size of list in quickfix window, otherwise extend height
--             to size of list or to default height (10)]],
-- 			default = true,
-- 		},
-- 		preview = {
-- 			auto_preview = {
-- 				description = [[enable preview in quickfix window automatically]],
-- 				default = true,
-- 			},
-- 			border_chars = {
-- 				description = [[border and scroll bar chars, they respectively represent:
--                 vline, vline, hline, hline, ulcorner, urcorner, blcorner, brcorner, sbar]],
-- 				default = {
-- 					'│',
-- 					'│',
-- 					'─',
-- 					'─',
-- 					'╭',
-- 					'╮',
-- 					'╰',
-- 					'╯',
-- 					'█',
-- 				},
-- 			},
-- 			delay_syntax = {
-- 				description = [[delay time, to do syntax for previewed buffer, unit is millisecond]],
-- 				default = 50,
-- 			},
-- 			win_height = {
-- 				description = [[the height of preview window for horizontal layout]],
-- 				default = 15,
-- 			},
-- 			win_vheight = {
-- 				description = [[the height of preview window for vertical layout]],
-- 				default = 15,
-- 			},
-- 			wrap = {
-- 				description = [[wrap the line, `:h wrap` for detail]],
-- 				default = false,
-- 			},
-- 			should_preview_cb = {
-- 				description = [[a callback function to decide whether to preview while switching buffer,
--                 with a bufnr parameter]],
-- 				default = nil,
-- 			},
-- 		},
-- 		func_map = {
-- 			description = [[the table for {function = key}]],
-- 			default = [[see ###Function table for detail]],
-- 		},
-- 		filter = {
-- 			fzf = {
-- 				action_for = {
-- 					['ctrl-t'] = {
-- 						description = [[press ctrl-t to open up the item in a new tab]],
-- 						default = 'tabedit',
-- 					},
-- 					['ctrl-v'] = {
-- 						description = [[press ctrl-v to open up the item in a new vertical split]],
-- 						default = 'vsplit',
-- 					},
-- 					['ctrl-x'] = {
-- 						description = [[press ctrl-x to open up the item in a new horizontal split]],
-- 						default = 'split',
-- 					},
-- 					['ctrl-q'] = {
-- 						description = [[press ctrl-q to toggle sign for the selected items]],
-- 						default = 'signtoggle',
-- 					},
-- 				},
-- 				extra_opts = {
-- 					description = 'extra options for fzf',
-- 					default = { '--bind', 'ctrl-o:toggle-all' },
-- 				},
-- 			},
-- 		},
-- 	},
-- })
--
