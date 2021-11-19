local cmd = vim.cmd
local opt = vim.opt

cmd('syntax on') 	-- syntax highlighting
cmd('filetype plugin indent on')
cmd('set nocompatible')
opt.rnu = true         	-- relative line numbers
opt.nu = true         	-- line numbers
opt.mouse = 'a'       	-- mouse controls
opt.modeline = true   	-- modline
opt.modelines = 5
opt.cursorline = true
opt.updatetime = 250
opt.timeoutlen = 400
opt.whichwrap:append("<>[]hl")

opt.wrap = false
opt.ruler = false
opt.hidden = true 		-- keeps buffers loaded in the background
opt.ignorecase = true
opt.scrolloff = 5   	-- Vertical scrolling off limit
opt.sidescrolloff = 12 	-- Horizontal scrolling off limit

-- Tab settings
opt.tabstop = 2 			-- 4 tabstop
opt.shiftwidth = 2
opt.expandtab = false    	-- tabs -> spaces
opt.smartindent = true    -- nice indenting

-- backup/swap files
opt.swapfile = false  	-- have files saved to swap
opt.undofile = false		-- file undo history preserved outside current session

-- new win split options
opt.splitbelow = true
opt.splitright = true
opt.completeopt = 'menuone,noselect,noinsert'
opt.inccommand = 'split'

opt.termguicolors = true
opt.background = "dark"

-- opt.virtualedit = 'all' -- all, insert, onemore, block
opt.errorbells = false 	-- auditory stimulation annoying

-- --=> Fold
-- opt.foldmethod = 'manual' 	-- set fold method to marker
-- cmd('au BufWinLeave *.lua mkview')
-- cmd('au BufWinEnter *.lua silent! loadview')

