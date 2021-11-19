require('specs').setup({
	show_jumps = true,
	min_jump = 10,
	popup = {
		delay_ms = 0, -- delay before popup displays
		inc_ms = 10, -- time increments used for fade/resize effects
		blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
		width = 20,
		winhl = 'Beacon',
		-- winhl = 'PMenu',
		ignore_filetypes = {},
		ignore_buftypes = {
			nofile = true,
		},
		fader = require('specs').exp_fader,
		-- Simple constant blend effect
		-- fader = function(blend, cnt)
		-- 	if cnt > 100 then
		-- 		return 80
		-- 	else
		-- 		return nil
		-- 	end
		-- end,

		resizer = require('specs').shrink_resizer,
		-- Growing effect from left to right
		-- resizer = function(width, ccol, cnt)
		-- 	if width - cnt > 0 then
		-- 		return { width + cnt, ccol }
		-- 	else
		-- 		return nil
		-- 	end
		-- end,
	},
})

vim.cmd('highlight Beacon guibg=#ff5080')

--> Faders:
-- linear_fader			=		▁▂▂▃▃▄▄▅▅▆▆▇▇██

-- exp_fader				=		▁▁▁▁▂▂▂▃▃▃▄▄▅▆▇

-- pulse_fader			=		▁▂▃▄▅▆▇█▇▆▅▄▃▂▁

-- empty_fader			=		▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁

--> Resizers:
-- shrink_resizer		=		░░▒▒▓█████▓▒▒░░

-- slide_resizer		=		████▓▓▓▒▒▒▒░░░░

-- empty_resizer		=		███████████████

--> Colors
-- guifg=#abb2bf
-- guibg=#10081D
-- guibg=#ff5080
-- guifg=#c678dd
