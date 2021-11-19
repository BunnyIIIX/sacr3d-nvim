-- load scheme wrapper library
local scheme = require('Sacr3d.Utils.scheme')

-- initialize vars for schemes
local lualine_theme = nil

-- if a scheme is not bundled with lualine, look for a theme file
if scheme.is_lualine_default == false then
	lualine_theme = require('Sacr3d.Themes.lualine.' .. scheme.scheme)
else
	lualine_theme = scheme.scheme
end

-- lualine setup config
require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = lualine_theme,
		section_separators = scheme.lualine_style,
		component_separators = scheme.lualine_seperator,
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { 'mode' },
		-- lualine_b = {},
		lualine_b = {
			'branch',
			{ 'diagnostics', sources = { 'nvim_lsp' } },
		},
		lualine_c = { 'filename' },
		lualine_x = { 'fileformat' },
		lualine_y = { 'filetype' },
		lualine_z = { 'location' },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
