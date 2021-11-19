--[[
This init file loads all of the plugin configuration files
--]]

return {
	--=>> Lsp & Completions <<=-
	require('Sacr3d.Goodies.lspkind'),
	require('Sacr3d.Goodies.cmp'),
	-- require('Sacr3d.Goodies.ultisnips'),

	--=>> Colors & Syntax <<=--
	require('Sacr3d.Goodies.nvimcolorizer'),
	require('Sacr3d.Goodies.treesitter'),

	--=>> Explorer <<=--
	require('Sacr3d.Goodies.nvimtree'),
	require('Sacr3d.Goodies.telescope'),

	--=>> Statusline & Starter <<=--
	require('Sacr3d.Goodies.lualine'),
	require('Sacr3d.Goodies.tabline'),
	require('Sacr3d.Goodies.dashboard'),

	--=>> Fun-Stuff <<=--
	require('Sacr3d.Goodies.autopairs'),
	require('Sacr3d.Goodies.nvimcomment'),
	require('Sacr3d.Goodies.neoscroll'),
	require('Sacr3d.Goodies.nvimframe'),
	require('Sacr3d.Goodies.specsnvim'),
	require('Sacr3d.Goodies.nvimreload'),
	require('Sacr3d.Goodies.hop'),
	-- require('Sacr3d.Goodies.nvimbqf2')
	-- require('Sacr3d.Goodies.gitsigns'),
	-- require('Sacr3d.Goodies.vimwiki'),
	-- require('Sacr3d.Goodies.orgmode-nvim'),
}

-- # vim: foldmethod=marker:

