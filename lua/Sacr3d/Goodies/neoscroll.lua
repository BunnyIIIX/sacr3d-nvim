require('neoscroll').setup({
    -- mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                -- '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = true,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
		easing_function = "quadratic" -- Default easing function
	  -- More Easing Functions: 
				-- quadratic, cubic, quartic, quintic, circular, sine.
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
-- Use the "sine" easing function
t['<M-Up>'] = {'scroll', {'-vim.wo.scroll', 'false', '330', [['sine']]}}
t['<M-Down>'] = {'scroll', { 'vim.wo.scroll', 'false', '330', [['sine']]}}
-- Use the "circular" easing function
t['<PageUp>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']]}}
t['<PageDown>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']]}}
-- Pass "nil" to disable the easing animation (constant scrolling speed)
-- t['<M-Left>'] = {'scroll', {'-0.15', 'false', '50', nil}}
-- t['<M-Right>'] = {'scroll', { '0.15', 'false', '50', nil}}
-- When no easing function is provided the default easing function (in this case "quadratic") will be used
t['zt']    = {'zt', {'300'}}
t['zz']    = {'zz', {'300'}}
t['zb']    = {'zb', {'300'}}

require('neoscroll.config').set_mappings(t)


