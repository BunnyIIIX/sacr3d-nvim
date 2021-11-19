-- {{{
local function map(mode, bind, exec, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, bind, exec, opts)
end

local opt = {} --empty opt for maps with no extra options
local M = {}
-- }}}

--[[
    MAPPING:
	map takes 4 args:
		The first is the type, whether in all, normal, insert etc. (reference: https://github.com/nanotee/nvim-lua-guide#defining-mappings)
		The Second Arg is the keybind. Just like normal vim way
		The Third is the command to execute
		The Fourth is other extra options

	Example:  (toggles line numbers)
		map("n", "<C-n>", ":set rnu!<CR>", opt)
--]]

--=>> GENERAL <<=--
-----------------------
--{{{ Fun Stuff
--> Leader-key
vim.g.mapleader = ' ' -- Map leader key to space

--> Toggle relative line numbers
-- map('n', '<C-n>', ':set rnu!<CR>', opt)

--> Folding.
map('n', '<Leader><Space>', 'za', { noremap = true, silent = true }) -- toggle nvimtree

--> Join line and keep cursor at center.
map('n', 'J', "mzJ'z", { noremap = true })

--> Move selected line / block of text in visual mode.
map('x', '<S-Up>', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
map('x', '<S-Down>', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

--> Toggle highlight search.
map('n', '<M-.>', ':set hlsearch!<CR>', { noremap = true, silent = true })

--> Save & Reload.
map('n', '<Leader>#', ':w <CR> | :so %<CR> | :echo "Saved & Reloaded"<CR>', { noremap = true, silent = true })
map('n', '<Leader>$', ':w <CR> | :Restart<CR> | :echo "Saved & Restart"<CR>', { noremap = true, silent = true })

--}}}

-- =>> YANK & PASTE <<=
-----------------------
--{{{ Good Stuff
--> Prevent x from overriding what's in the clipboard.
map('n', 'x', '"_x', { noremap = true, silent = true })
map('n', 'X', '"_x', { noremap = true, silent = true })

--> Prevent select & paste from overwriting originally copied.
map('x', 'p', 'pgvy', { noremap = true, silent = true })

--> Keep cursor at the bottom after you yank it.
map('v', 'y', 'ygv<esc>', { noremap = true, silent = true })

--> Yank from cursor to the end of the line.
map('n', 'Y', 'y$', { noremap = true })
map('i', '<C-y>', '<esc>y$a', { noremap = true })

--> Clipboard Yanker.
map('n', '<leader>Y', ':%y+<CR>', opt) -- Copy content of entire buffer to system clipboard
map('n', '<leader>y', '"+yy', opt) -- yank current line into system clipboard
map('v', '<leader>y', '"+y', opt) -- yank current line into system clipboard

--> Substitute
-- map('n', '<M-r>', ':call <SID>better_sub()<CR>', { noremap = true})
map('n', '<M-r>', ':%s/<C-R><C-W>/<C-R>0/gc<CR>', { noremap = true})

--> Visual Selection.
-- map('v', '$', '$h', { noremap = true, silent = true })

--> Move to the last letter on the line
map('n', '<M-Right>', '$', { noremap = true})
--> Move to the first letter on the line
map('n', '<M-Left>', '^', { noremap = true})

--}}}

-- =>> LINES MANIPULATIONS <<=
------------------------------
--{{{ Better indenting.
map('v', '<', '<gv', { noremap = true, silent = true })
map('v', '>', '>gv', { noremap = true, silent = true })
map('v', '<Tab>', '>gv|', { noremap = true, silent = true })
map('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
-- map('n', '<Tab>', '>>_', { noremap = true, silent = true })
-- map('n', '<S-Tab>', '<<_', { noremap = true, silent = true })
--}}}

--=>> BUFFER & WINDOW <<=
-------------------------
--{{{ Buffer Manipulation
map('n', '<leader>q', ':bd<CR>', { noremap = true, silent = true })
map('n', '<Tab>', ':bn <CR>', { noremap = true, silent = true })
map('n', '<M-0>', ':bn <CR>', { noremap = true, silent = true })
map('n', '<M-9>', ':bp <CR>', { noremap = true, silent = true })
--}}}

--{{{ Window Navigation
map('n', '<C-Left>', ':wincmd h<CR>', opt)
map('n', '<C-Down>', ':wincmd j<CR>', opt)
map('n', '<C-Up>', ':wincmd k<CR>', opt)
map('n', '<C-Right>', ':wincmd l<CR>', opt)
--}}}

--=>> PLUGINS <<=
-----------------
--{{{ Telescope
map('n', '<C-t>', ':Telescope find_files hidden=true cwd=$NVIM_HOME<CR>', { noremap = true })
map('n', '<M-t>', ':Telescope find_files hidden=true<CR>', { noremap = true })
map('n', '<leader>t', ':Telescope file_browser hidden=true<CR>', { noremap = true })
map('n', '<leader>g', ':Telescope live_grep<CR>', { noremap = true })
-- map('n', '<leader>tg', ':Telescope git_commits<CR>', { noremap = true })
-- map('n', '<leader>tG', ':Telescope git_branches<CR>', { noremap = true })
--}}}

--{{{ Nvim-Tree
map('n', '<Leader>f', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) -- toggle nvimtree
map('n', '<Leader>e', ':NvimTreeFindFile<CR>', { noremap = true, silent = true }) -- toggle nvimtree
--}}}

--{{{ VimWiki
map('n', '<leader>w', ':1VimwikiIndex<CR>', { noremap = true, silent = true })
map('n', '2<leader>w', ':2VimwikiIndex<CR>', { noremap = true, silent = true })
map('n', '<leader><Down>', ':VimwikiNextLink<CR>', { noremap = true, silent = true })
map('n', '<leader><Up>', ':VimwikiPrevLink<CR>', { noremap = true, silent = true })
--}}}

--{{{ Hop.nvim
map('n', '<leader>jj', ':HopWord<CR>', opt)
map('n', '<leader>jl', ':HopLine<CR>', opt)
--}}}

--{{{ Gitsigns Mappings
M.gitsigns_mappings = {
	noremap = true,
	['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
	['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },

	['n <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
	['v <leader>gs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
	['n <leader>gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
	['n <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
	['v <leader>gr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
	['n <leader>gR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
	['n <leader>gp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
	['n <leader>gb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
	['n <leader>gS'] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
	['n <leader>gU'] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',

	-- Text objects
	['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
	['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
}
--}}}

--{{{ Misc Plugins.
map('n', '<Leader>/', ':CommentToggle<CR>', opt) -- toggle comment on current line or selection
map('v', '<Leader>/', ':CommentToggle<CR>', opt) -- toggle comment on current line or selection
map('n', '<leader>nf', ':Neoformat<CR>', { noremap = true }) -- format current buffer with neoformat
map('n', '<leader>~', ':Dashboard<CR>', opt) -- map show dashboard

--> Nvim-Colorizer
map('n', '<Leader>.', ':ColorizerToggle <CR>', { noremap = true })

--> Terminal commands
map('n', '<leader><CR>', ':vs | terminal<CR>i', opt)
-- map('n', '<leader>\\', ':sp | terminal<CR>i', opt)
-- map('t', '<C-esc>', '<C-\\><C-n>', opt)
--}}}

--=>> AUTOCOMPLETIONS <<=
-------------------------
--{{{ Nvim-Cmp
local cmp = require('cmp')
M.cmp_mappings = {

	['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
	['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),

	['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
	['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

	['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),

	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),

	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm({
		behavior = cmp.ConfirmBehavior.Insert,
		select = true,
	}),
}
--}}}

-- Returns any externally-required keymaps for usage
return M

-- # vim: foldmethod=marker:
